import sys

EASY_COST = 1
EASY_RETURN = 2

MEDIUM_COST = 3
MEDIUM_RETURN = 6

HARD_COST = 5
HARD_RETURN = 12

STRENGTH_COST = 2
STRENGTH_RETURN = 30

if __name__ == "__main__":
    # to run: python create_lp.py {plan length in days; min: 7} {how many rest days in a 7 day period} {baseline fitness} {number of races -optional- default=2}
    args = [int(x) for x in sys.argv[1:]]
    inputs = []
    num_workouts_per_day = 2 if args[2] >= 50 else 1 #doubles

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
        fi = f"f{i} - f{i-1} + {EASY_COST} easy{i} + {MEDIUM_COST}medium{i} + {HARD_COST}hard{i} + {STRENGTH_COST}s{i} - {EASY_RETURN} easy{i-1} - {MEDIUM_RETURN}medium{i-2} - {HARD_RETURN}hard{i-3} = 0\n"
        lp += fi

    lp += "\n"

    # constrain number of workouts per day
    for i in range(1, args[0]+1):
        dayi = f"easy{i} + medium{i} + hard{i} <= {num_workouts_per_day}\n"
        one_med_hard = f"medium{i} + hard{i} <= 1\n"
        lp += dayi + one_med_hard

    lp += "\n"

    # constrain number of workouts per 7 days
    for i in range(args[0], 1, -1):
        if i-6 < 1:
            break
        else:
            dayi = f"easy{i} + medium{i} + hard{i} + "
            dayi_1 = f"easy{i-1} + medium{i-1} + hard{i-1} + "
            dayi_2 = f"easy{i-2} + medium{i-2} + hard{i-2} + "
            dayi_3 = f"easy{i-3} + medium{i-3} + hard{i-3} + "
            dayi_4 = f"easy{i-4} + medium{i-4} + hard{i-4} + "
            dayi_5 = f"easy{i-5} + medium{i-5} + hard{i-5} + "
            dayi_6 = f"easy{i-6} + medium{i-6} + hard{i-6} <= 10\n"

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

    acc = ""
    # strength reward constraints
    for i in range(1, args[0]+1):
        acc += f"s{i} + "
        if i >= 35:
            acc = acc[0:-2]
            lp += f"sc1_{i-34} = {acc}\n"

            offset = len(str(i-34))+4
            acc = acc[offset:]


    lp += "bounds\n"

    # bounds
    for i in range(1, args[0]+1):
        lp += f"f{i} > 0\n"

    lp += "\nbinary\n"

    for i in range(1, args[0]+1):
        lp += f"easy{i}\nmedium{i}\nhard{i}\ns{i}\n\n"

    lp += "end"

    with open("plan.lp", "w") as f:
        f.write(lp)
        print("Successfully created lp at plan.lp")
