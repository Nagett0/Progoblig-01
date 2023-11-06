
# Lager funksjon for å kunne tegne de forsklellige nordiske flaggene. Valgte denne typen funksjon da det senere blir veldig enkelt å legge inn de proposjonsstørrelse vi har fått oppgitt på flaggene.
fun draw-nordic-flags(bakgru-hori, bakgru-verti, tjukk-stripe, tynn-stripe, farge-bakg, stor-farge, liten-farge) -> Image:
  
  # Definerer de forskjellige delene av flaggene som jeg vil trenge
  bakgrunn = rectangle(bakgru-hori, bakgru-verti, "solid", farge-bakg)
  tjukk-stripe-hori = rectangle(bakgru-hori, tjukk-stripe, "solid", stor-farge)
  tjukk-stripe-verti = rectangle(tjukk-stripe, bakgru-verti, "solid", stor-farge)
  tynn-stripe-hori = rectangle(bakgru-hori, tynn-stripe, "solid", liten-farge)
  tynn-stripe-verti = rectangle(tynn-stripe, bakgru-verti, "solid", liten-farge)
  
  
  # Frame for å få en ramme rundt flaggene. Så er det overlay, overlay-align og overlign-xy for å slå sammen de enkelte delene/bildene av flagget samt utregning for at stripene skal være nøyaktig på plass.
  frame(overlay-xy(tynn-stripe-verti, (((bakgru-verti - tjukk-stripe) / 2) + (tjukk-stripe / 4)) * -1,0, overlay-align("middle", "middle", tynn-stripe-hori, overlay-xy(tjukk-stripe-verti, ((bakgru-verti - tjukk-stripe) / 2 ) * -1,0, overlay(tjukk-stripe-hori, bakgrunn)))))
end

# Definerer proposjonene, lengde, høyde, tykkelse på en tjukke stripen og den tynne stripen inkludert fargene. Bruker funksjonen jeg lagde i starten av oppgaven. Her er det nå enkelt å endre på proposjstørrelsene og fargene på de forskjellige delene av flagget.
draw-nordic-flags(220, 160, 40, 20, "red", "white", "blue")
draw-nordic-flags(220, 160, 40, 20, "white", "blue", "red")
draw-nordic-flags(250, 180, 40, 20, "blue", "white", "red")
draw-nordic-flags(160, 100, 20, 00, "blue", "yellow", "yellow")
draw-nordic-flags(370, 280, 40, 00, "red", "white", "white")
draw-nordic-flags(160, 110, 30, 00, "white", "blue", "blue")
