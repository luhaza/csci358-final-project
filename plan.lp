maximize f35

subject to

f0 = 690
f1 - f0 + 1 easy1 + 3medium1 + 5hard1 + 2s1 = 0
f2 - f1 + 1 easy2 + 3medium2 + 5hard2 + 2s2 - 2 easy1 = 0
f3 - f2 + 1 easy3 + 3medium3 + 5hard3 + 2s3 - 2 easy2 - 6medium1 = 0
f4 - f3 + 1 easy4 + 3medium4 + 5hard4 + 2s4 - 2 easy3 - 6medium2 - 12hard1 = 0
f5 - f4 + 1 easy5 + 3medium5 + 5hard5 + 2s5 - 2 easy4 - 6medium3 - 12hard2 = 0
f6 - f5 + 1 easy6 + 3medium6 + 5hard6 + 2s6 - 2 easy5 - 6medium4 - 12hard3 = 0
f7 - f6 + 1 easy7 + 3medium7 + 5hard7 + 2s7 - 2 easy6 - 6medium5 - 12hard4 = 0
f8 - f7 + 1 easy8 + 3medium8 + 5hard8 + 2s8 - 2 easy7 - 6medium6 - 12hard5 = 0
f9 - f8 + 1 easy9 + 3medium9 + 5hard9 + 2s9 - 2 easy8 - 6medium7 - 12hard6 = 0
f10 - f9 + 1 easy10 + 3medium10 + 5hard10 + 2s10 - 2 easy9 - 6medium8 - 12hard7 = 0
f11 - f10 + 1 easy11 + 3medium11 + 5hard11 + 2s11 - 2 easy10 - 6medium9 - 12hard8 = 0
f12 - f11 + 1 easy12 + 3medium12 + 5hard12 + 2s12 - 2 easy11 - 6medium10 - 12hard9 = 0
f13 - f12 + 1 easy13 + 3medium13 + 5hard13 + 2s13 - 2 easy12 - 6medium11 - 12hard10 = 0
f14 - f13 + 1 easy14 + 3medium14 + 5hard14 + 2s14 - 2 easy13 - 6medium12 - 12hard11 = 0
f15 - f14 + 1 easy15 + 3medium15 + 5hard15 + 2s15 - 2 easy14 - 6medium13 - 12hard12 = 0
f16 - f15 + 1 easy16 + 3medium16 + 5hard16 + 2s16 - 2 easy15 - 6medium14 - 12hard13 = 0
f17 - f16 + 1 easy17 + 3medium17 + 5hard17 + 2s17 - 2 easy16 - 6medium15 - 12hard14 = -711.25
f18 - f17 + 1 easy18 + 3medium18 + 5hard18 + 2s18 - 2 easy17 - 6medium16 - 12hard15 = 0
f19 - f18 + 1 easy19 + 3medium19 + 5hard19 + 2s19 - 2 easy18 - 6medium17 - 12hard16 = 0
f20 - f19 + 1 easy20 + 3medium20 + 5hard20 + 2s20 - 2 easy19 - 6medium18 - 12hard17 = 0
f21 - f20 + 1 easy21 + 3medium21 + 5hard21 + 2s21 - 2 easy20 - 6medium19 - 12hard18 = 711.25
f22 - f21 + 1 easy22 + 3medium22 + 5hard22 + 2s22 - 2 easy21 - 6medium20 - 12hard19 = 0
f23 - f22 + 1 easy23 + 3medium23 + 5hard23 + 2s23 - 2 easy22 - 6medium21 - 12hard20 = 0
f24 - f23 + 1 easy24 + 3medium24 + 5hard24 + 2s24 - 2 easy23 - 6medium22 - 12hard21 = 0
f25 - f24 + 1 easy25 + 3medium25 + 5hard25 + 2s25 - 2 easy24 - 6medium23 - 12hard22 = 0
f26 - f25 + 1 easy26 + 3medium26 + 5hard26 + 2s26 - 2 easy25 - 6medium24 - 12hard23 = 0
f27 - f26 + 1 easy27 + 3medium27 + 5hard27 + 2s27 - 2 easy26 - 6medium25 - 12hard24 = 0
f28 - f27 + 1 easy28 + 3medium28 + 5hard28 + 2s28 - 2 easy27 - 6medium26 - 12hard25 = 0
f29 - f28 + 1 easy29 + 3medium29 + 5hard29 + 2s29 - 2 easy28 - 6medium27 - 12hard26 = 0
f30 - f29 + 1 easy30 + 3medium30 + 5hard30 + 2s30 - 2 easy29 - 6medium28 - 12hard27 = 0
f31 - f30 + 1 easy31 + 3medium31 + 5hard31 + 2s31 - 2 easy30 - 6medium29 - 12hard28 = 0
f32 - f31 + 1 easy32 + 3medium32 + 5hard32 + 2s32 - 2 easy31 - 6medium30 - 12hard29 = 0
f33 - f32 + 1 easy33 + 3medium33 + 5hard33 + 2s33 - 2 easy32 - 6medium31 - 12hard30 = 0
f34 - f33 + 1 easy34 + 3medium34 + 5hard34 + 2s34 - 2 easy33 - 6medium32 - 12hard31 = 0
f35 - f34 - 30sc3_1 + 1 easy35 + 3medium35 + 5hard35 + 2s35 - 2 easy34 - 6medium33 - 12hard32 = 0

easy1 + medium1 + hard1 <= 1
medium1 + hard1 <= 1
easy2 + medium2 + hard2 <= 1
medium2 + hard2 <= 1
easy3 + medium3 + hard3 <= 1
medium3 + hard3 <= 1
easy4 + medium4 + hard4 <= 1
medium4 + hard4 <= 1
easy5 + medium5 + hard5 <= 1
medium5 + hard5 <= 1
easy6 + medium6 + hard6 <= 1
medium6 + hard6 <= 1
easy7 + medium7 + hard7 <= 1
medium7 + hard7 <= 1
easy8 + medium8 + hard8 <= 1
medium8 + hard8 <= 1
easy9 + medium9 + hard9 <= 1
medium9 + hard9 <= 1
easy10 + medium10 + hard10 <= 1
medium10 + hard10 <= 1
easy11 + medium11 + hard11 <= 1
medium11 + hard11 <= 1
easy12 + medium12 + hard12 <= 1
medium12 + hard12 <= 1
easy13 + medium13 + hard13 <= 1
medium13 + hard13 <= 1
easy14 + medium14 + hard14 <= 1
medium14 + hard14 <= 1
easy15 + medium15 + hard15 <= 1
medium15 + hard15 <= 1
easy16 + medium16 + hard16 <= 1
medium16 + hard16 <= 1
easy17 + medium17 + hard17 <= 1
medium17 + hard17 <= 1
easy18 + medium18 + hard18 <= 1
medium18 + hard18 <= 1
easy19 + medium19 + hard19 <= 1
medium19 + hard19 <= 1
easy20 + medium20 + hard20 <= 1
medium20 + hard20 <= 1
easy21 + medium21 + hard21 <= 1
medium21 + hard21 <= 1
easy22 + medium22 + hard22 <= 1
medium22 + hard22 <= 1
easy23 + medium23 + hard23 <= 1
medium23 + hard23 <= 1
easy24 + medium24 + hard24 <= 1
medium24 + hard24 <= 1
easy25 + medium25 + hard25 <= 1
medium25 + hard25 <= 1
easy26 + medium26 + hard26 <= 1
medium26 + hard26 <= 1
easy27 + medium27 + hard27 <= 1
medium27 + hard27 <= 1
easy28 + medium28 + hard28 <= 1
medium28 + hard28 <= 1
easy29 + medium29 + hard29 <= 1
medium29 + hard29 <= 1
easy30 + medium30 + hard30 <= 1
medium30 + hard30 <= 1
easy31 + medium31 + hard31 <= 1
medium31 + hard31 <= 1
easy32 + medium32 + hard32 <= 1
medium32 + hard32 <= 1
easy33 + medium33 + hard33 <= 1
medium33 + hard33 <= 1
easy34 + medium34 + hard34 <= 1
medium34 + hard34 <= 1
easy35 + medium35 + hard35 <= 1
medium35 + hard35 <= 1

easy1 + medium1 + hard1 + 3off_1 <= 3
easy2 + medium2 + hard2 + 3off_2 <= 3
easy3 + medium3 + hard3 + 3off_3 <= 3
easy4 + medium4 + hard4 + 3off_4 <= 3
easy5 + medium5 + hard5 + 3off_5 <= 3
easy6 + medium6 + hard6 + 3off_6 <= 3
easy7 + medium7 + hard7 + 3off_7 <= 3
easy8 + medium8 + hard8 + 3off_8 <= 3
easy9 + medium9 + hard9 + 3off_9 <= 3
easy10 + medium10 + hard10 + 3off_10 <= 3
easy11 + medium11 + hard11 + 3off_11 <= 3
easy12 + medium12 + hard12 + 3off_12 <= 3
easy13 + medium13 + hard13 + 3off_13 <= 3
easy14 + medium14 + hard14 + 3off_14 <= 3
easy15 + medium15 + hard15 + 3off_15 <= 3
easy16 + medium16 + hard16 + 3off_16 <= 3
easy17 + medium17 + hard17 + 3off_17 <= 3
easy18 + medium18 + hard18 + 3off_18 <= 3
easy19 + medium19 + hard19 + 3off_19 <= 3
easy20 + medium20 + hard20 + 3off_20 <= 3
easy21 + medium21 + hard21 + 3off_21 <= 3
easy22 + medium22 + hard22 + 3off_22 <= 3
easy23 + medium23 + hard23 + 3off_23 <= 3
easy24 + medium24 + hard24 + 3off_24 <= 3
easy25 + medium25 + hard25 + 3off_25 <= 3
easy26 + medium26 + hard26 + 3off_26 <= 3
easy27 + medium27 + hard27 + 3off_27 <= 3
easy28 + medium28 + hard28 + 3off_28 <= 3
easy29 + medium29 + hard29 + 3off_29 <= 3
easy30 + medium30 + hard30 + 3off_30 <= 3
easy31 + medium31 + hard31 + 3off_31 <= 3
easy32 + medium32 + hard32 + 3off_32 <= 3
easy33 + medium33 + hard33 + 3off_33 <= 3
easy34 + medium34 + hard34 + 3off_34 <= 3
easy35 + medium35 + hard35 + 3off_35 <= 3

off_1 + off_2 + off_3 + off_4 + off_5 + off_6 + off_7 = 1
off_2 + off_3 + off_4 + off_5 + off_6 + off_7 + off_8 = 1
off_3 + off_4 + off_5 + off_6 + off_7 + off_8 + off_9 = 1
off_4 + off_5 + off_6 + off_7 + off_8 + off_9 + off_10 = 1
off_5 + off_6 + off_7 + off_8 + off_9 + off_10 + off_11 = 1
off_6 + off_7 + off_8 + off_9 + off_10 + off_11 + off_12 = 1
off_7 + off_8 + off_9 + off_10 + off_11 + off_12 + off_13 = 1
off_8 + off_9 + off_10 + off_11 + off_12 + off_13 + off_14 = 1
off_9 + off_10 + off_11 + off_12 + off_13 + off_14 + off_15 = 1
off_10 + off_11 + off_12 + off_13 + off_14 + off_15 + off_16 = 1
off_11 + off_12 + off_13 + off_14 + off_15 + off_16 + off_17 = 1
off_12 + off_13 + off_14 + off_15 + off_16 + off_17 + off_18 = 1
off_13 + off_14 + off_15 + off_16 + off_17 + off_18 + off_19 = 1
off_14 + off_15 + off_16 + off_17 + off_18 + off_19 + off_20 = 1
off_15 + off_16 + off_17 + off_18 + off_19 + off_20 + off_21 = 1
off_16 + off_17 + off_18 + off_19 + off_20 + off_21 + off_22 = 1
off_17 + off_18 + off_19 + off_20 + off_21 + off_22 + off_23 = 1
off_18 + off_19 + off_20 + off_21 + off_22 + off_23 + off_24 = 1
off_19 + off_20 + off_21 + off_22 + off_23 + off_24 + off_25 = 1
off_20 + off_21 + off_22 + off_23 + off_24 + off_25 + off_26 = 1
off_21 + off_22 + off_23 + off_24 + off_25 + off_26 + off_27 = 1
off_22 + off_23 + off_24 + off_25 + off_26 + off_27 + off_28 = 1
off_23 + off_24 + off_25 + off_26 + off_27 + off_28 + off_29 = 1
off_24 + off_25 + off_26 + off_27 + off_28 + off_29 + off_30 = 1
off_25 + off_26 + off_27 + off_28 + off_29 + off_30 + off_31 = 1
off_26 + off_27 + off_28 + off_29 + off_30 + off_31 + off_32 = 1
off_27 + off_28 + off_29 + off_30 + off_31 + off_32 + off_33 = 1
off_28 + off_29 + off_30 + off_31 + off_32 + off_33 + off_34 = 1

easy35 + medium35 + hard35 + easy34 + medium34 + hard34 + easy33 + medium33 + hard33 + easy32 + medium32 + hard32 + easy31 + medium31 + hard31 + easy30 + medium30 + hard30 + easy29 + medium29 + hard29 <= 10
easy34 + medium34 + hard34 + easy33 + medium33 + hard33 + easy32 + medium32 + hard32 + easy31 + medium31 + hard31 + easy30 + medium30 + hard30 + easy29 + medium29 + hard29 + easy28 + medium28 + hard28 <= 10
easy33 + medium33 + hard33 + easy32 + medium32 + hard32 + easy31 + medium31 + hard31 + easy30 + medium30 + hard30 + easy29 + medium29 + hard29 + easy28 + medium28 + hard28 + easy27 + medium27 + hard27 <= 10
easy32 + medium32 + hard32 + easy31 + medium31 + hard31 + easy30 + medium30 + hard30 + easy29 + medium29 + hard29 + easy28 + medium28 + hard28 + easy27 + medium27 + hard27 + easy26 + medium26 + hard26 <= 10
easy31 + medium31 + hard31 + easy30 + medium30 + hard30 + easy29 + medium29 + hard29 + easy28 + medium28 + hard28 + easy27 + medium27 + hard27 + easy26 + medium26 + hard26 + easy25 + medium25 + hard25 <= 10
easy30 + medium30 + hard30 + easy29 + medium29 + hard29 + easy28 + medium28 + hard28 + easy27 + medium27 + hard27 + easy26 + medium26 + hard26 + easy25 + medium25 + hard25 + easy24 + medium24 + hard24 <= 10
easy29 + medium29 + hard29 + easy28 + medium28 + hard28 + easy27 + medium27 + hard27 + easy26 + medium26 + hard26 + easy25 + medium25 + hard25 + easy24 + medium24 + hard24 + easy23 + medium23 + hard23 <= 10
easy28 + medium28 + hard28 + easy27 + medium27 + hard27 + easy26 + medium26 + hard26 + easy25 + medium25 + hard25 + easy24 + medium24 + hard24 + easy23 + medium23 + hard23 + easy22 + medium22 + hard22 <= 10
easy27 + medium27 + hard27 + easy26 + medium26 + hard26 + easy25 + medium25 + hard25 + easy24 + medium24 + hard24 + easy23 + medium23 + hard23 + easy22 + medium22 + hard22 + easy21 + medium21 + hard21 <= 10
easy26 + medium26 + hard26 + easy25 + medium25 + hard25 + easy24 + medium24 + hard24 + easy23 + medium23 + hard23 + easy22 + medium22 + hard22 + easy21 + medium21 + hard21 + easy20 + medium20 + hard20 <= 10
easy25 + medium25 + hard25 + easy24 + medium24 + hard24 + easy23 + medium23 + hard23 + easy22 + medium22 + hard22 + easy21 + medium21 + hard21 + easy20 + medium20 + hard20 + easy19 + medium19 + hard19 <= 10
easy24 + medium24 + hard24 + easy23 + medium23 + hard23 + easy22 + medium22 + hard22 + easy21 + medium21 + hard21 + easy20 + medium20 + hard20 + easy19 + medium19 + hard19 + easy18 + medium18 + hard18 <= 10
easy23 + medium23 + hard23 + easy22 + medium22 + hard22 + easy21 + medium21 + hard21 + easy20 + medium20 + hard20 + easy19 + medium19 + hard19 + easy18 + medium18 + hard18 + easy17 + medium17 + hard17 <= 10
easy22 + medium22 + hard22 + easy21 + medium21 + hard21 + easy20 + medium20 + hard20 + easy19 + medium19 + hard19 + easy18 + medium18 + hard18 + easy17 + medium17 + hard17 + easy16 + medium16 + hard16 <= 10
easy21 + medium21 + hard21 + easy20 + medium20 + hard20 + easy19 + medium19 + hard19 + easy18 + medium18 + hard18 + easy17 + medium17 + hard17 + easy16 + medium16 + hard16 + easy15 + medium15 + hard15 <= 10
easy20 + medium20 + hard20 + easy19 + medium19 + hard19 + easy18 + medium18 + hard18 + easy17 + medium17 + hard17 + easy16 + medium16 + hard16 + easy15 + medium15 + hard15 + easy14 + medium14 + hard14 <= 10
easy19 + medium19 + hard19 + easy18 + medium18 + hard18 + easy17 + medium17 + hard17 + easy16 + medium16 + hard16 + easy15 + medium15 + hard15 + easy14 + medium14 + hard14 + easy13 + medium13 + hard13 <= 10
easy18 + medium18 + hard18 + easy17 + medium17 + hard17 + easy16 + medium16 + hard16 + easy15 + medium15 + hard15 + easy14 + medium14 + hard14 + easy13 + medium13 + hard13 + easy12 + medium12 + hard12 <= 10
easy17 + medium17 + hard17 + easy16 + medium16 + hard16 + easy15 + medium15 + hard15 + easy14 + medium14 + hard14 + easy13 + medium13 + hard13 + easy12 + medium12 + hard12 + easy11 + medium11 + hard11 <= 10
easy16 + medium16 + hard16 + easy15 + medium15 + hard15 + easy14 + medium14 + hard14 + easy13 + medium13 + hard13 + easy12 + medium12 + hard12 + easy11 + medium11 + hard11 + easy10 + medium10 + hard10 <= 10
easy15 + medium15 + hard15 + easy14 + medium14 + hard14 + easy13 + medium13 + hard13 + easy12 + medium12 + hard12 + easy11 + medium11 + hard11 + easy10 + medium10 + hard10 + easy9 + medium9 + hard9 <= 10
easy14 + medium14 + hard14 + easy13 + medium13 + hard13 + easy12 + medium12 + hard12 + easy11 + medium11 + hard11 + easy10 + medium10 + hard10 + easy9 + medium9 + hard9 + easy8 + medium8 + hard8 <= 10
easy13 + medium13 + hard13 + easy12 + medium12 + hard12 + easy11 + medium11 + hard11 + easy10 + medium10 + hard10 + easy9 + medium9 + hard9 + easy8 + medium8 + hard8 + easy7 + medium7 + hard7 <= 10
easy12 + medium12 + hard12 + easy11 + medium11 + hard11 + easy10 + medium10 + hard10 + easy9 + medium9 + hard9 + easy8 + medium8 + hard8 + easy7 + medium7 + hard7 + easy6 + medium6 + hard6 <= 10
easy11 + medium11 + hard11 + easy10 + medium10 + hard10 + easy9 + medium9 + hard9 + easy8 + medium8 + hard8 + easy7 + medium7 + hard7 + easy6 + medium6 + hard6 + easy5 + medium5 + hard5 <= 10
easy10 + medium10 + hard10 + easy9 + medium9 + hard9 + easy8 + medium8 + hard8 + easy7 + medium7 + hard7 + easy6 + medium6 + hard6 + easy5 + medium5 + hard5 + easy4 + medium4 + hard4 <= 10
easy9 + medium9 + hard9 + easy8 + medium8 + hard8 + easy7 + medium7 + hard7 + easy6 + medium6 + hard6 + easy5 + medium5 + hard5 + easy4 + medium4 + hard4 + easy3 + medium3 + hard3 <= 10
easy8 + medium8 + hard8 + easy7 + medium7 + hard7 + easy6 + medium6 + hard6 + easy5 + medium5 + hard5 + easy4 + medium4 + hard4 + easy3 + medium3 + hard3 + easy2 + medium2 + hard2 <= 10
easy7 + medium7 + hard7 + easy6 + medium6 + hard6 + easy5 + medium5 + hard5 + easy4 + medium4 + hard4 + easy3 + medium3 + hard3 + easy2 + medium2 + hard2 + easy1 + medium1 + hard1 <= 10

medium2 + hard1 <= 1
medium2 + medium1 <= 1
hard2 + medium1 <= 1
hard2 + hard1 <= 1
medium3 + hard2 <= 1
medium3 + medium2 <= 1
hard3 + medium2 <= 1
hard3 + hard2 <= 1
medium4 + hard3 <= 1
medium4 + medium3 <= 1
hard4 + medium3 <= 1
hard4 + hard3 <= 1
medium5 + hard4 <= 1
medium5 + medium4 <= 1
hard5 + medium4 <= 1
hard5 + hard4 <= 1
medium6 + hard5 <= 1
medium6 + medium5 <= 1
hard6 + medium5 <= 1
hard6 + hard5 <= 1
medium7 + hard6 <= 1
medium7 + medium6 <= 1
hard7 + medium6 <= 1
hard7 + hard6 <= 1
medium8 + hard7 <= 1
medium8 + medium7 <= 1
hard8 + medium7 <= 1
hard8 + hard7 <= 1
medium9 + hard8 <= 1
medium9 + medium8 <= 1
hard9 + medium8 <= 1
hard9 + hard8 <= 1
medium10 + hard9 <= 1
medium10 + medium9 <= 1
hard10 + medium9 <= 1
hard10 + hard9 <= 1
medium11 + hard10 <= 1
medium11 + medium10 <= 1
hard11 + medium10 <= 1
hard11 + hard10 <= 1
medium12 + hard11 <= 1
medium12 + medium11 <= 1
hard12 + medium11 <= 1
hard12 + hard11 <= 1
medium13 + hard12 <= 1
medium13 + medium12 <= 1
hard13 + medium12 <= 1
hard13 + hard12 <= 1
medium14 + hard13 <= 1
medium14 + medium13 <= 1
hard14 + medium13 <= 1
hard14 + hard13 <= 1
medium15 + hard14 <= 1
medium15 + medium14 <= 1
hard15 + medium14 <= 1
hard15 + hard14 <= 1
medium16 + hard15 <= 1
medium16 + medium15 <= 1
hard16 + medium15 <= 1
hard16 + hard15 <= 1
medium17 + hard16 <= 1
medium17 + medium16 <= 1
hard17 + medium16 <= 1
hard17 + hard16 <= 1
medium18 + hard17 <= 1
medium18 + medium17 <= 1
hard18 + medium17 <= 1
hard18 + hard17 <= 1
medium19 + hard18 <= 1
medium19 + medium18 <= 1
hard19 + medium18 <= 1
hard19 + hard18 <= 1
medium20 + hard19 <= 1
medium20 + medium19 <= 1
hard20 + medium19 <= 1
hard20 + hard19 <= 1
medium21 + hard20 <= 1
medium21 + medium20 <= 1
hard21 + medium20 <= 1
hard21 + hard20 <= 1
medium22 + hard21 <= 1
medium22 + medium21 <= 1
hard22 + medium21 <= 1
hard22 + hard21 <= 1
medium23 + hard22 <= 1
medium23 + medium22 <= 1
hard23 + medium22 <= 1
hard23 + hard22 <= 1
medium24 + hard23 <= 1
medium24 + medium23 <= 1
hard24 + medium23 <= 1
hard24 + hard23 <= 1
medium25 + hard24 <= 1
medium25 + medium24 <= 1
hard25 + medium24 <= 1
hard25 + hard24 <= 1
medium26 + hard25 <= 1
medium26 + medium25 <= 1
hard26 + medium25 <= 1
hard26 + hard25 <= 1
medium27 + hard26 <= 1
medium27 + medium26 <= 1
hard27 + medium26 <= 1
hard27 + hard26 <= 1
medium28 + hard27 <= 1
medium28 + medium27 <= 1
hard28 + medium27 <= 1
hard28 + hard27 <= 1
medium29 + hard28 <= 1
medium29 + medium28 <= 1
hard29 + medium28 <= 1
hard29 + hard28 <= 1
medium30 + hard29 <= 1
medium30 + medium29 <= 1
hard30 + medium29 <= 1
hard30 + hard29 <= 1
medium31 + hard30 <= 1
medium31 + medium30 <= 1
hard31 + medium30 <= 1
hard31 + hard30 <= 1
medium32 + hard31 <= 1
medium32 + medium31 <= 1
hard32 + medium31 <= 1
hard32 + hard31 <= 1
medium33 + hard32 <= 1
medium33 + medium32 <= 1
hard33 + medium32 <= 1
hard33 + hard32 <= 1
medium34 + hard33 <= 1
medium34 + medium33 <= 1
hard34 + medium33 <= 1
hard34 + hard33 <= 1
medium35 + hard34 <= 1
medium35 + medium34 <= 1
hard35 + medium34 <= 1
hard35 + hard34 <= 1

s1 + s2 + s3 + s4 <= 1
s2 + s3 + s4 + s5 <= 1
s3 + s4 + s5 + s6 <= 1
s4 + s5 + s6 + s7 <= 1
s5 + s6 + s7 + s8 <= 1
s6 + s7 + s8 + s9 <= 1
s7 + s8 + s9 + s10 <= 1
s8 + s9 + s10 + s11 <= 1
s9 + s10 + s11 + s12 <= 1
s10 + s11 + s12 + s13 <= 1
s11 + s12 + s13 + s14 <= 1
s12 + s13 + s14 + s15 <= 1
s13 + s14 + s15 + s16 <= 1
s14 + s15 + s16 + s17 <= 1
s15 + s16 + s17 + s18 <= 1
s16 + s17 + s18 + s19 <= 1
s17 + s18 + s19 + s20 <= 1
s18 + s19 + s20 + s21 <= 1
s19 + s20 + s21 + s22 <= 1
s20 + s21 + s22 + s23 <= 1
s21 + s22 + s23 + s24 <= 1
s22 + s23 + s24 + s25 <= 1
s23 + s24 + s25 + s26 <= 1
s24 + s25 + s26 + s27 <= 1
s25 + s26 + s27 + s28 <= 1
s26 + s27 + s28 + s29 <= 1
s27 + s28 + s29 + s30 <= 1
s28 + s29 + s30 + s31 <= 1
s29 + s30 + s31 + s32 <= 1
s30 + s31 + s32 + s33 <= 1
s31 + s32 + s33 + s34 <= 1
s32 + s33 + s34 + s35 <= 1

sc1_1 - s1 - s2 - s3 - s4 - s5 - s6 - s7 = 0
sc1_2 - s8 - s9 - s10 - s11 - s12 - s13 - s14 = 0
sc1_3 - s15 - s16 - s17 - s18 - s19 - s20 - s21 = 0
sc1_4 - s22 - s23 - s24 - s25 - s26 - s27 - s28 = 0
sc1_5 - s29 - s30 - s31 - s32 - s33 - s34 - s35 = 0
sc2_1 - sc1_5 - sc1_4 - sc1_3 - sc1_2 - sc1_1 = 0
sc3_1 - 0.2sc2_1 = 0

sc3_1 <= 1

total - easy1 - medium1 - hard1 - easy2 - medium2 - hard2 - easy3 - medium3 - hard3 - easy4 - medium4 - hard4 - easy5 - medium5 - hard5 - easy6 - medium6 - hard6 - easy7 - medium7 - hard7 - easy8 - medium8 - hard8 - easy9 - medium9 - hard9 - easy10 - medium10 - hard10 - easy11 - medium11 - hard11 - easy12 - medium12 - hard12 - easy13 - medium13 - hard13 - easy14 - medium14 - hard14 - easy15 - medium15 - hard15 - easy16 - medium16 - hard16 - easy17 - medium17 - hard17 - easy18 - medium18 - hard18 - easy19 - medium19 - hard19 - easy20 - medium20 - hard20 - easy21 - medium21 - hard21 - easy22 - medium22 - hard22 - easy23 - medium23 - hard23 - easy24 - medium24 - hard24 - easy25 - medium25 - hard25 - easy26 - medium26 - hard26 - easy27 - medium27 - hard27 - easy28 - medium28 - hard28 - easy29 - medium29 - hard29 - easy30 - medium30 - hard30 - easy31 - medium31 - hard31 - easy32 - medium32 - hard32 - easy33 - medium33 - hard33 - easy34 - medium34 - hard34 - easy35 - medium35 - hard35 = 0


easy1 + easy2 + easy3 + easy4 + easy5 + easy6 + easy7 + easy8 + easy9 + easy10 + easy11 + easy12 + easy13 + easy14 + easy15 + easy16 + easy17 + easy18 + easy19 + easy20 + easy21 + easy22 + easy23 + easy24 + easy25 + easy26 + easy27 + easy28 + easy29 + easy30 + easy31 + easy32 + easy33 + easy34 + easy35 - 0.7total >= 0
medium1 + medium2 + medium3 + medium4 + medium5 + medium6 + medium7 + medium8 + medium9 + medium10 + medium11 + medium12 + medium13 + medium14 + medium15 + medium16 + medium17 + medium18 + medium19 + medium20 + medium21 + medium22 + medium23 + medium24 + medium25 + medium26 + medium27 + medium28 + medium29 + medium30 + medium31 + medium32 + medium33 + medium34 + medium35 - 0.2total = 0
hard1 + hard2 + hard3 + hard4 + hard5 + hard6 + hard7 + hard8 + hard9 + hard10 + hard11 + hard12 + hard13 + hard14 + hard15 + hard16 + hard17 + hard18 + hard19 + hard20 + hard21 + hard22 + hard23 + hard24 + hard25 + hard26 + hard27 + hard28 + hard29 + hard30 + hard31 + hard32 + hard33 + hard34 + hard35 - 0.1total <= 0

bounds
f1 > 0
f2 > 0
f3 > 0
f4 > 0
f5 > 0
f6 > 0
f7 > 0
f8 > 0
f9 > 0
f10 > 0
f11 > 0
f12 > 0
f13 > 0
f14 > 0
f15 > 0
f16 > 0
f17 > 0
f18 > 0
f19 > 0
f20 > 0
f21 > 0
f22 > 0
f23 > 0
f24 > 0
f25 > 0
f26 > 0
f27 > 0
f28 > 0
f29 > 0
f30 > 0
f31 > 0
f32 > 0
f33 > 0
f34 > 0
f35 > 0

binary
easy1
medium1
hard1
s1
off_1

easy2
medium2
hard2
s2
off_2

easy3
medium3
hard3
s3
off_3

easy4
medium4
hard4
s4
off_4

easy5
medium5
hard5
s5
off_5

easy6
medium6
hard6
s6
off_6

easy7
medium7
hard7
s7
off_7

easy8
medium8
hard8
s8
off_8

easy9
medium9
hard9
s9
off_9

easy10
medium10
hard10
s10
off_10

easy11
medium11
hard11
s11
off_11

easy12
medium12
hard12
s12
off_12

easy13
medium13
hard13
s13
off_13

easy14
medium14
hard14
s14
off_14

easy15
medium15
hard15
s15
off_15

easy16
medium16
hard16
s16
off_16

easy17
medium17
hard17
s17
off_17

easy18
medium18
hard18
s18
off_18

easy19
medium19
hard19
s19
off_19

easy20
medium20
hard20
s20
off_20

easy21
medium21
hard21
s21
off_21

easy22
medium22
hard22
s22
off_22

easy23
medium23
hard23
s23
off_23

easy24
medium24
hard24
s24
off_24

easy25
medium25
hard25
s25
off_25

easy26
medium26
hard26
s26
off_26

easy27
medium27
hard27
s27
off_27

easy28
medium28
hard28
s28
off_28

easy29
medium29
hard29
s29
off_29

easy30
medium30
hard30
s30
off_30

easy31
medium31
hard31
s31
off_31

easy32
medium32
hard32
s32
off_32

easy33
medium33
hard33
s33
off_33

easy34
medium34
hard34
s34
off_34

easy35
medium35
hard35
s35
off_35

sc3_1

end