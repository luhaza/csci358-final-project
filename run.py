import random
import os

plan_length = random.randint(7, 365)
rest_days = random.randint(0, 4)
baseline_fitness = random.randint(1, 100)
if plan_length >= 60:
    # TODO: fix this
    max_races = min(plan_length // 14, 2)
else:
    max_races = 1
    
num_races = random.randint(0, max_races)

print(f"Creating plan with plan_length={plan_length} rest_days={rest_days} baseline_fitness={baseline_fitness} num_races={num_races}")
os.system(f"python create_lp.py {plan_length} {rest_days} {baseline_fitness} {num_races}")
