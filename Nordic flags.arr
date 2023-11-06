fun draw-nordic-flags(bakgru-hori, bakgru-verti, tjukk-stripe, tynn-stripe, farge-bakg, stor-farge, liten-farge) -> Image:
  
  bakgrunn = rectangle(bakgru-hori, bakgru-verti, "solid", farge-bakg)
  tjukk-stripe-hori = rectangle(bakgru-hori, tjukk-stripe, "solid", stor-farge)
  tjukk-stripe-verti = rectangle(tjukk-stripe, bakgru-verti, "solid", stor-farge)
  tynn-stripe-hori = rectangle(bakgru-hori, tynn-stripe, "solid", liten-farge)
  tynn-stripe-verti = rectangle(tynn-stripe, bakgru-verti, "solid", liten-farge)
  
  frame(overlay-xy(tynn-stripe-verti, (((bakgru-verti - tjukk-stripe) / 2) * (tjukk-stripe / 34.5)) * -1,0, overlay-align("middle", "middle", tynn-stripe-hori, overlay-xy(tjukk-stripe-verti, ((bakgru-verti - tjukk-stripe) / 2) * -1,0, overlay(tjukk-stripe-hori, bakgrunn)))))
end

draw-nordic-flags(220, 160, 40, 20, "red", "white", "blue")
draw-nordic-flags(220, 160, 40, 20, "white", "blue", "red")
draw-nordic-flags(250, 160, 40, 20, "blue", "white", "red")
draw-nordic-flags(169, 100, 20, 00, "blue", "yellow", "yellow")
draw-nordic-flags(370, 260, 40, 00, "red", "white", "white")
draw-nordic-flags(160, 110, 30, 00, "white", "blue", "blue")
