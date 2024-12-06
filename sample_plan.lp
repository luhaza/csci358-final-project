maximize f_7

subject to

/* fitness constraint */
fitness_0: f_0 = 30
fitness_1: f_1 - f_0 + e_1 + 3m_1 + 5h_1 + 2s_1 = 0
fitness_2: f_2 - f_1 + e_2 + 3m_2 + 5h_2 + 2s_2 - 2e_1 = 0
fitness_3: f_3 - f_2 + e_3 + 3m_3 + 5h_3 + 2s_3 - 2e_2 - 6m_1 = 0
fitness_4: f_4 - f_3 + e_4 + 3m_4 + 5h_4 + 2s_4 - 2e_3 - 6m_2 - 12h_1 = 0
fitness_5: f_5 - f_4 + e_5 + 3m_5 + 5h_5 + 2s_5 - 2e_4 - 6m_3 - 12h_2 = 0
fitness_6: f_6 - f_5 + e_6 + 3m_6 + 5h_6 + 2s_6 - 2e_5 - 6m_4 - 12h_3 = 0
fitness_7: f_7 - f_6 + e_7 + 3m_7 + 5h_7 + 2s_7 - 2e_6 - 6m_5 - 12h_4 = 0

/* no back-to-back medium/hard workouts */
m_2 + m_1 <= 1
m_2 + h_1 <= 1
h_2 + m_1 <= 1
h_2 + h_1 <= 1

m_3 + m_2 <= 1
m_3 + h_2 <= 1
h_3 + h_2 <= 1
h_3 + m_2 <= 1

m_4 + m_3 <= 1
m_4 + h_3 <= 1
h_4 + h_3 <= 1
h_4 + m_3 <= 1

m_5 + m_4 <= 1
m_5 + h_4 <= 1
h_5 + h_4 <= 1
h_5 + m_4 <= 1

m_6 + m_5 <= 1
m_6 + h_5 <= 1
h_6 + h_5 <= 1
h_6 + m_5 <= 1

m_7 + m_6 <= 1
m_7 + h_6 <= 1
h_7 + h_6 <= 1
h_7 + m_6 <= 1

/* at least three days in between strength workouts */
s_4 + s_3 + s_2 + s_1 = 1
s_5 + s_4 + s_3 + s_2 = 1
s_6 + s_5 + s_4 + s_3 = 1
s_7 + s_6 + s_5 + s_4 = 1

/* need 1 rest day every 4 days */
e_4 + m_4 + h_4 + e_3 + m_3 + h_3 + e_2 + m_2 + h_2 + e_1 + m_1 + h_1 <= 3
e_5 + m_5 + h_5 + e_4 + m_4 + h_4 + e_3 + m_3 + h_3 + e_1 + m_1 + h_1 <= 3
e_6 + m_6 + h_6 + e_5 + m_5 + h_5 + e_4 + m_4 + h_4 + e_3 + m_3 + h_3 <= 3
e_7 + m_7 + h_7 + e_6 + m_6 + h_6 + e_5 + m_5 + h_5 + e_4 + m_4 - h_4 <= 3

bounds
f_1 > 0
f_2 > 0
f_3 > 0
f_4 > 0
f_5 > 0
f_6 > 0
f_7 > 0

binary
e_1
e_2
e_3
e_4
e_5
e_6
e_7

m_1
m_2
m_3
m_4
m_5
m_6
m_7

h_1
h_2
h_3
h_4
h_5
h_6
h_7

s_1
s_2
s_3
s_4
s_5
s_6
s_7

end
