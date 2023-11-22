bot-circle = circle(60, "solid", "white")

mid-circle = circle(40, "solid", "white")

top-circle = circle(20, "solid", "white")

base-layer-snowman = overlay-xy(top-circle, -40, 37, overlay-xy(mid-circle, -20, 70, bot-circle))

carrot-nose = circle(4, "solid", "orange")

snowman-eye-L = circle(4, "solid", "black")

snowman-eye-R = circle(4, "solid", "black")

snowman-with-face = overlay-xy(snowman-eye-R, -65, -10, overlay-xy(snowman-eye-L, -45, -10, overlay-xy(carrot-nose, -56, -20, base-layer-snowman)))

button-1 = circle(4, "solid", "black")

button-2 = circle(4, "solid", "black")

button-3 = circle(4, "solid", "black")

snowman-without-arm = overlay-xy(button-3, -56, -140, overlay-xy(button-2, -56, -100, overlay-xy(button-1, -56, -60, snowman-with-face)))

arm-1 = rectangle(90, 5, "solid", "brown")

arm-2 = rectangle(90, 5, "solid", "brown")

snowman-done = overlay-xy(arm-2, 70, -72, overlay-xy(arm-1, -100, -72, snowman-without-arm))
snowman-done
