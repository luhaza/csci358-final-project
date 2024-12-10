import sys

EASY_COST = 1
EASY_RETURN = 2

MEDIUM_COST = 3
MEDIUM_RETURN = 6

HARD_COST = 5
HARD_RETURN = 12

STRENGTH_COST = 2
STRENGTH_RETURN = 30

# want to follow common training intensity breakdowns
FRAMEWORK = [.7,.2,.1]

if __name__ == "__main__":
    # to run: python create_lp.py {plan length in days; min: 7} {how many rest days in a 7 day period; must be [0, 4]} {baseline fitness; min=1} {number of midseason races -optional- default=2 if plan >= 60 days else 1; at most 1 every 14 days}
    args = [int(x) for x in sys.argv[1:]]

    assert 3 <= len(args) <= 4, "Inadequate number of arguments. Must be 3 or 4."
    assert args[0] > 7, "Minimum length for a plan is 7 days."
    assert 0 <= args[1] <= 4, "Rest days must be between (inclusive) 0 and 4."
    assert args[2] > 0, "Baseline fitness must be > 0."

    midseason_races = []
    midseason_races_plus_3 = []

    if len(args) > 3:
        assert args[3] < args[0] / 14, "Too many midseason races!"
        midseason_races = [args[0]//(args[3]+1) * i for i in range(1, args[3] + 1)]
        midseason_races_plus_3 = [(args[0]//(args[3]+1) * i)+4 for i in range(1, args[3] + 1)]
        
    else:
        if args[0] >= 60:
            midseason_races.append(args[0]//2)
            midseason_races_plus_3.append(args[0]//2 + 4)

    print(midseason_races, midseason_races_plus_3)
    strength_reward_days = []
    if args[0] >= 35:
        strength_reward_days = [i for i in range(35, args[0] + 1, 7)]
        
    # print(strength_reward_days)

    #max_num_workouts_per_day = 2 if args[2] >= 50 else 1 #doubles
    max_num_workouts_per_day = 1

    lp = ""
    objective_function = f"maximize f{args[0]}\n\n"
    subject_to = "subject to\n\n"
    f0 = f"f0 = {args[2]}\n"
    f1 = f"f1 - f0 + {EASY_COST} easy1 + {MEDIUM_COST}medium1 + {HARD_COST}hard1 + {STRENGTH_COST}s1 = 0\n"
    f2 = f"f2 - f1 + {EASY_COST} easy2 + {MEDIUM_COST}medium2 + {HARD_COST}hard2 + {STRENGTH_COST}s2 - {EASY_RETURN} easy1 = 0\n"
    f3 = f"f3 - f2 + {EASY_COST} easy3 + {MEDIUM_COST}medium3 + {HARD_COST}hard3 + {STRENGTH_COST}s3 - {EASY_RETURN} easy2 - {MEDIUM_RETURN}medium1 = 0\n"

    lp += objective_function + subject_to + f0 + f1 + f2 + f3

    # daily fitness constraints
    for i in range(4, args[0]+1):

        if i in midseason_races:
            fi = f"f{i} - f{i-1} + {EASY_COST} easy{i} + {MEDIUM_COST}medium{i} + {HARD_COST}hard{i} + {STRENGTH_COST}s{i} - {EASY_RETURN} easy{i-1} - {MEDIUM_RETURN}medium{i-2} - {HARD_RETURN}hard{i-3} = -{1.25*i+args[2]}\n"
        elif i in midseason_races_plus_3:
            fi = f"f{i} - f{i-1} + {EASY_COST} easy{i} + {MEDIUM_COST}medium{i} + {HARD_COST}hard{i} + {STRENGTH_COST}s{i} - {EASY_RETURN} easy{i-1} - {MEDIUM_RETURN}medium{i-2} - {HARD_RETURN}hard{i-3} = {1.25*(i-4)+args[2]}\n"
        else:
            fi = f"f{i} - f{i-1} + {EASY_COST} easy{i} + {MEDIUM_COST}medium{i} + {HARD_COST}hard{i} + {STRENGTH_COST}s{i} - {EASY_RETURN} easy{i-1} - {MEDIUM_RETURN}medium{i-2} - {HARD_RETURN}hard{i-3} = 0\n"
        
        if i in strength_reward_days:
            fi = fi.replace(f"f{i-1}",f"f{i-1} - 30sc3_{strength_reward_days.index(i)+1}")

        lp += fi

    lp += "\n"

    # constrain number of workouts per day
    for i in range(1, args[0]+1):
        dayi = f"easy{i} + medium{i} + hard{i} <= {max_num_workouts_per_day}\n"
        one_med_hard = f"medium{i} + hard{i} <= 1\n"
        lp += dayi + one_med_hard

    lp += "\n"

    # off days
    for i in range(1, args[0]+1):
        lp += f"easy{i} + medium{i} + hard{i} + 3off_{i} <= 3\n"

    lp += "\n"
    for i in range(1, args[0]-6):
        lp += f"off_{i} + off_{i+1} + off_{i+2} + off_{i+3} + off_{i+4} + off_{i+5} + off_{i+6} = {args[1]}\n"

    lp += "\n"
    # constrain number of workouts per 7 days
    for i in range(args[0], 1, -1):
        if i-6 < 1:
            break
        else:
            dayi   = f"easy{i} + medium{i} + hard{i} + "
            dayi_1 = f"easy{i-1} + medium{i-1} + hard{i-1} + "
            dayi_2 = f"easy{i-2} + medium{i-2} + hard{i-2} + "
            dayi_3 = f"easy{i-3} + medium{i-3} + hard{i-3} + "
            dayi_4 = f"easy{i-4} + medium{i-4} + hard{i-4} + "
            dayi_5 = f"easy{i-5} + medium{i-5} + hard{i-5} + "
            dayi_6 = f"easy{i-6} + medium{i-6} + hard{i-6} <= 10\n"

            # print(f"0.5{dayi}")

            lp += dayi + dayi_1 + dayi_2 + dayi_3 + dayi_4 + dayi_5 + dayi_6

    lp += "\n"

    # no back-to-back medium/hard workouts
    for i in range(2, args[0]+1):
        mh = f"medium{i} + hard{i-1} <= 1\n"
        mm = f"medium{i} + medium{i-1} <= 1\n"
        hm = f"hard{i} + medium{i-1} <= 1\n"
        hh = f"hard{i} + hard{i-1} <= 1\n"
        lp += mh + mm + hm + hh

    lp += "\n"

    # 3 days between strength workouts
    for i in range(1, args[0]-2):
        si = f"s{i} + s{i+1} + s{i+2} + s{i+3} <= 1\n"
        lp += si

    lp += "\n"

    # strength reward constraints
    acc = ""
    week = 1
    for i in range(1, args[0]+1):
        if len(acc) != 0:
            acc += " - "
        acc += f"s{i}"
        # if i >= 35:
        #     lp += f"sc1_{i-34} - {acc} = 0\n"
        #     lp += f"sc2_{i-34} - 0.2sc1_{i-34} = 0\n"
        #     lp += f"sc2_{i-34} + sc2_{i-27} + sc2_{i-20} + sc2_{i-13} + sc2_{i-6} <= 1\n"

        #     offset = len(str(i-34))+4
        #     acc = acc[offset:]
        if i % 7 == 0:
            lp += f"sc1_{week} - {acc} = 0\n" # sum for week i

            if week >= 5:
                lp += f"sc2_{week-4} - sc1_{week} - sc1_{week-1} - sc1_{week-2} - sc1_{week-3} - sc1_{week-4} = 0\n" # sum of last 5 weeks
                lp += f"sc3_{week-4} - 0.2sc2_{week-4} = 0\n"
                # lp += f"sc3_{week-4} + sc3_{week-3} + sc3_{week-2} + sc3_{week-1} + sc3_{week} <= 1\n\n"
            week += 1
            acc = ""

    lp += "\n"
    
    fives = ""

    print(week-4)
    if 1 < week-4 <= 5:
        for i in range(1, week-4):
            fives += f"sc3_{i} + "
            
        fives = fives[:-2]
        fives += "<= 1\n"
        lp += fives
    else:
        for i in range(1, week-8):
            lp += f"sc3_{i} + sc3_{i+1} + sc3_{i+2} + sc3_{i+3} + sc3_{i+4} <= 1\n"

    # variable for total number of runs
    total = "\ntotal - "

    for i in range(1, args[0]+1):
        total += f"easy{i} - medium{i} - hard{i} - "

    total = total[:-2]
    total += "= 0\n"
    # print(total)

    lp += total + "\n\n"

    eb = ""
    for i in range(1, args[0]+1):
        eb += f"easy{i} + "

    eb = eb[:-2]
    eb += f"- {FRAMEWORK[0]}total >= 0\n"

    lp += eb

    mb = ""
    for i in range(1, args[0]+1):
        mb += f"medium{i} + "

    mb = mb[:-2]
    mb += f"- {FRAMEWORK[1]}total = 0\n"
    lp += mb

    hb = ""
    for i in range(1, args[0]+1):
        hb += f"hard{i} + "

    hb = hb[:-2]
    hb += f"- {FRAMEWORK[2]}total <= 0\n"
    lp += hb

    lp += "\nbounds\n"

    # bounds
    for i in range(1, args[0]+1):
        lp += f"f{i} > 0\n"

    lp += "\nbinary\n"

    for i in range(1, args[0]+1):
        lp += f"easy{i}\nmedium{i}\nhard{i}\ns{i}\noff_{i}\n\n"

    for i in range(1, week-4):
        lp += f"sc3_{i}\n"

    lp += "\nend"

    with open("plan.lp", "w") as f:
        f.write(lp)
        print("Successfully created lp at plan.lp")
