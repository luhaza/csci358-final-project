import random
import os
import re

#### from ChatGPT
def spread_items(x, y):
    if y > 2 * x:
        raise ValueError("y cannot exceed 2 times x")
    
    # Create an array of zeros with length x
    array = [0] * x
    
    # Calculate base distribution and remainder
    base = y // x  # Items to distribute to each index
    remainder = y % x  # Extra items to spread

    # Distribute base items to each index
    for i in range(x):
        array[i] = base
    
    # Spread the remainder more evenly
    indices = [i for i in range(x)]
    step = len(indices) / remainder if remainder > 0 else float('inf')
    for i in range(remainder):
        array[int(i * step) % x] += 1
    
    return array

####

plan_length = random.randint(1, 10)
#rest_days = random.randint(0, 3)
rest_days = 1
baseline_fitness = random.randint(1, 100)
num_races = random.randint(1, 2*plan_length)

race_dates = spread_items(plan_length, num_races)

print(f"Creating plan with plan_length={plan_length*35} rest_days={rest_days} baseline_fitness={baseline_fitness} num_races={num_races}")
for i in range(1, plan_length+1):
    print(f"current parameters: 35 {rest_days} {baseline_fitness} {race_dates[i-1]}\n")
    os.system(f"python3 create_lp.py 35 {rest_days} {baseline_fitness} {race_dates[i-1]}")
    os.system(f"glpsol --cpxlp plan.lp -o plan{i}.out")

    with open(f"plan{i}.out", "r") as file:
        lp_output = file.read()

    match = re.search(r"Objective:\s+obj\s*=\s*(\d+)", lp_output)
    baseline_fitness = int(match.group(1))
    
    print(f"***{baseline_fitness}***")

    if i+1 == plan_length+1:
        print(f"With this plan, you achieve a fitness of {baseline_fitness}!")


