#import "macros.typ"

= Formula di Stokes

== Rotori e divergenza
Dato $arrow(F)$ un campo vettoriale

$ "rot" arrow(F) = ((diff F_3)/(diff y) - (diff F_2)/(diff z)) arrow(e_1) + ((diff F_1)/(diff z) - (diff F_3)/(diff x)) arrow(e_2) + ((diff F_1)/(diff y) - (diff F_2)/(diff z)) arrow(e_3) $

$ "div" arrow(F) = (diff F_1)/(diff x) + (diff F_2)/(diff y) + (diff F_3)/(diff z) $

$"rot" arrow(F) = arrow(0)$ è il campo vettoriale irrotazionale.

Il rotore come espressione mnemonica può essere scritto come
$"rot" arrow(F) = macros.arrowgrad times arrow(F)$.

La divergenza invece come 
$"rot" arrow(F) = macros.arrowgrad dot arrow(F)$.

dove $macros.arrowgrad = macros.vec((diff)/(diff x), (diff)/(diff y), (diff)/(diff z))$ e un prodotto con uno dei suoi componenti è da intendersi come l'eseguire l'operazione che rappresenta e non un prodotto vero e proprio.

== Teorema di Stokes

$ integral.cont_C arrow(F) dot arrow(t) d cal(l) = integral.double_S "rot" arrow(F) dot arrow(n) d S $

C è la frontiera di $S$ percorsa in modo tale che la superficie si trovi sulla sinistra.

_dimostrazione_ La dimostrazione è lasciata come mistero al lettore.