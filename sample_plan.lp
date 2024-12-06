maximize f7

subject to

\* fitness constraint *\
fitness0: f0 = 2
fitness1: f1 - f0 + easy1 + 3medium1 + 5hard1 + 2s1 = 0
fitness2: f2 - f1 + easy2 + 3medium2 + 5hard2 + 2s2 - 2 easy1 = 0
fitness3: f3 - f2 + easy3 + 3medium3 + 5hard3 + 2s3 - 2 easy2 - 6medium1 = 0
fitness4: f4 - f3 + easy4 + 3medium4 + 5hard4 + 2s4 - 2 easy3 - 6medium2 - 12hard1 = 0
fitness5: f5 - f4 + easy5 + 3medium5 + 5hard5 + 2s5 - 2 easy4 - 6medium3 - 12hard2 = 0
fitness6: f6 - f5 + easy6 + 3medium6 + 5hard6 + 2s6 - 2 easy5 - 6medium4 - 12hard3 = 0
fitness7: f7 - f6 + easy7 + 3medium7 + 5hard7 + 2s7 - 2 easy6 - 6medium5 - 12hard4 = 0

\* one workout per day *\
easy1 + medium1 + hard1 <= 1
easy2 + medium2 + hard2 <= 1
easy3 + medium3 + hard3 <= 1
easy4 + medium4 + hard4 <= 1
easy5 + medium5 + hard5 <= 1
easy6 + medium6 + hard6 <= 1
easy7 + medium7 + hard7 <= 1

\* no back-to-back medium\hard workouts *\
medium2 + medium1 <= 1
medium2 + hard1 <= 1
hard2 + medium1 <= 1
hard2 + hard1 <= 1

medium3 + medium2 <= 1
medium3 + hard2 <= 1
hard3 + hard2 <= 1
hard3 + medium2 <= 1

medium4 + medium3 <= 1
medium4 + hard3 <= 1
hard4 + hard3 <= 1
hard4 + medium3 <= 1

medium5 + medium4 <= 1
medium5 + hard4 <= 1
hard5 + hard4 <= 1
hard5 + medium4 <= 1

medium6 + medium5 <= 1
medium6 + hard5 <= 1
hard6 + hard5 <= 1
hard6 + medium5 <= 1

medium7 + medium6 <= 1
medium7 + hard6 <= 1
hard7 + hard6 <= 1
hard7 + medium6 <= 1

\* at least three days in between strength workouts *\
s4 + s3 + s2 + s1 <= 1
s5 + s4 + s3 + s2 <= 1
s6 + s5 + s4 + s3 <= 1
s7 + s6 + s5 + s4 <= 1

\* need 1 rest day every 4 days *\
easy1 + medium1 + hard1 + easy2 + medium2 + hard2 + easy3 + medium3 + hard3 + easy4 + medium4 + hard4 <= 3
easy2 + medium2 + hard2 + easy3 + medium3 + hard3 + easy4 + medium4 + hard4 + easy5 + medium5 + hard5 <= 3
easy3 + medium3 + hard3 + easy4 + medium4 + hard4 + easy5 + medium5 + hard5 + easy6 + medium6 + hard6 <= 3
easy4 + medium4 + hard4 + easy5 + medium5 + hard5 + easy6 + medium6 + hard6 + easy7 + medium7 + hard7 <= 3

bounds
f1 > 0
f2 > 0
f3 > 0
f4 > 0
f5 > 0
f6 > 0
f7 > 0

binary
easy1
easy2
easy3
easy4
easy5
easy6
easy7

medium1
medium2
medium3
medium4
medium5
medium6
medium7

hard1
hard2
hard3
hard4
hard5
hard6
hard7

s1
s2
s3
s4
s5
s6
s7

end

