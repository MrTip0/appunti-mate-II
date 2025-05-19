#import "macros.typ"

= Integrali di superficie

== Integrali di superficie di I specie
Data una superficie in forma parametrica
$ arrow(r)(u, v) = macros.vec(x(u, v), y(u, v), z(u, v)) $

$ arrow(r_u) = macros.vec(x_u, y_u, z_u), arrow(r_v) = macros.vec(x_v, y_v, z_v) $

$ "Area"(S) = sum_(i=1)^N f(P_i) m Delta_i = sum_(i=1)^N f(P_i) lr(||arrow(r_u) times arrow(r_v)||) Delta u Delta v $
$ = integral.double_S f d S = integral.double_D f(x(u, v), y(u, v), z(u, v)) lr(||arrow(r_u) times arrow(r_v)||) d u d v  $


== Integrali di superficie di II specie
Supponendo una superficie orientabile (muovendosi con continuità sulla superficie non è possibile ottenere un vettore ortogonale opposto), un esempio di superficie non orientabile è il nastro di mobius.

Il flusso del campo vettoriale $arrow(F)$ attorno alla superficie $S$ si definisce come
$ integral.double_S arrow(F) dot arrow(n) d S $
dove $arrow(n)$ è il versore ortogonale a $S$.
$ arrow(n) = plus.minus (arrow(r_u) times arrow(r_v))/(lr(||arrow(r_u) times arrow(r_v)||)) $

$ integral.double_S arrow(F) dot arrow(n) d S = plus.minus integral.double_D arrow(F) dot (arrow(r_u) times arrow(r_v)) d u d v $

*esempio* Calcolare il flusso del campo vettoriale $arrow(F) = macros.vec(x, y, z)$ attraverso la porzione del piano \ $x + y + z = 1$ situata nel primo ottante e orientata verso l'alto.

$z = 1 - x - y$ $ arrow(r)(x, y) = macros.vec(x, y, 1 - x - y), arrow(r_x) times arrow(r_y) = macros.vec(-f_x, -f_y, 1) = macros.vec(1, 1, 1) $

$ integral.double_S arrow(F) dot arrow(n) d S = integral.double_D macros.vec(x, y, z) dot macros.vec(1, 1, 1) d x d y = integral.double_D (x + y + z)d x d y = integral.double_D 1 d x d y $
$ integral_0^1 d x integral_0^x d y = integral_0^1 x d x = 1/2 $