bot-circle = circle(60, "solid", "white")

mid-circle = circle(40, "solid", "white")

top-circle = circle(20, "solid", "white")

step1 = overlay-xy(mid-circle, -20, 70, bot-circle)
step2 = overlay-xy(top-circle, -40, 37, step1)

carrot-nose = circle(4, "solid", "orange")

snowman-eye-L = circle(4, "solid", "black")

snowman-eye-R = circle(4, "solid", "black")

step3 = overlay-xy(carrot-nose, -56, -20, step2)
step4 = overlay-xy(snowman-eye-L, -45, -10, step3)
step5 = overlay-xy(snowman-eye-R, -65, -10, step4)

button-1 = circle(4, "solid", "black")

button-2 = circle(4, "solid", "black")

button-3 = circle(4, "solid", "black")

step6 = overlay-xy(button-1, -56, -60, step5)
step7 = overlay-xy(button-2, -56, -100, step6)
step8 = overlay-xy(button-3, -56, -140, step7)

arm-1 = rectangle(90, 5, "solid", "brown")

arm-2 = rectangle(90, 5, "solid", "brown")

step9 = overlay-xy(arm-1, -100, -72, step8)

step10 = overlay-xy(arm-2, 70, -72, step9)

step10
