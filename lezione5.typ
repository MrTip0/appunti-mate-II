#import "macros.typ"

= Lezione 5
== Superfici bidimensionali nello spazio tridimensionale
$ D subset RR^2 --> RR^3, arrow(r)(s, t) = macros.vec(x(s,t), y(s,t), z(s,t), delim:"[") $
$ arrow(r_s) = macros.vec(
    (diff x)/(diff s),
    (diff y)/(diff s),
    (diff z)/(diff s),
), "la velocità di r lungo la linea dove t è fissata" $

=== Superfici regolari
+ Le componenti di $arrow(r)(s, t)$ sono funzioni continue con derivate parziali continue.
+ $arrow(r)$ sia iniettiva. $arrow(r)(s_1, t_1) != arrow(r)(s_2, t_2) "se" (s_1, t_1)!= (s_2, t_2)$
+ I vettori $arrow(r_s)$ e $arrow(r_t)$ sono lin. indipendenti fra di loro in ogni punto.

*Esempio* Superficie sferica di raggio $R$ e centrata nell'origine.
$
  arrow(r)(theta, phi) = cases(
    x(theta, phi) = R cos theta cos phi,
    y(theta, phi) = R cos theta sin phi,
    z(theta, phi) = R sin theta
  )
$
$D = [-pi/2, pi/2] times [0, 2 pi]$. Per rispettare l'iniettività.

$theta$ la chiamiamo latitudine, e $phi$ la chiamiamo longitudine.

== Superfici come grafici di funzioni di 2 variabili
Dato $f:D subset RR^2 --> RR$ la superficie associata alla funzione è
$ arrow(r)(x, y) = macros.vec(x, y, f(x, y)) $
ed è sempre una superficie regolare
$ arrow(r_x) = macros.vec(1, 0, f_x), arrow(r_y) = macros.vec(0, 1, f_y) $


== Superfici di livello
Sotto opportune ipotesi data una funzione $f:RR^3 --> RR$ il luogo dei punti che soddisfano l'equazione
$ f(x, y, z) = c $
è la superficie detta superficie di livello di $f$.

*Esempio* $f(x, y, z) = x^2 + y^2 + z^2$.

Se $c > 0$ il luogo dei punti descritto dall'equazione $ x^2 + y^2 + z^2 = c $
è una superficie sferica di raggio $sqrt(c)$

== Derivazione di una funzione composta con superficie
$ f(x, y, z), arrow(r)(s, t) = macros.vec(
    x(s, t),
    y(s, t),
    z(s, t),
) $

$ F(s, t) = f(x(s, t), y(s, t), z(s, t)) $
$ F_s(s_0, t_0) = macros.arrowgrad f(x_0, y_0, z_0) dot arrow(r_s)(s_0, t_0) $
$ F_t(s_0, t_0) = macros.arrowgrad f(x_0, y_0, z_0) dot arrow(r_t)(s_0, t_0) $

== Restrizione di una funzione in 3 variabili
Calcola $f = y^2 + x - z$ ristretta al piano $ cases(
    x = 1 + 2 s,
    y = s - t,
    z = 1 + s + 3 t,
) $

$ F(s, t) = (s - t)^2 + 1 + 2s -1 -s - 3t $
$ F(s, t) = s^2 + t^2 - 2s t + s - 3t $
$ F_s = 2 s - 2t + 1 $
$ F_t = 2 t - 2s - 3 $
$ macros.arrowgrad f = macros.vec(
    1,
    2y,
    -1
) $

== Teorema della funzione implicita
Supponiamo che una funzione $F(x, y)$ abbia derivate parziali prime continue in un intorno di un punto $(x_0, y_0)$ dove $F(x_0, y_0) = 0$ e $F_y (x_0, y_0) != 0$.

Allora $exists$ un intorno di $(x_0, y_0)$ tale che i punti $(x, y)$ che soddisfano l'equazione $F(x, y) = 0$ appartengono al grafico di una funzione $f(x)$, cioè

$ exists f(x) "t.c." F(x, f(x)) $

in particolare $y_0 = f(x_0)$

*Esempio* $F(x,y) = x^2 + y^2 - 1$

$F(x, y) = 0 arrow.l.r.double x^2 + y^2 - 1 = 0$

$y = plus.minus sqrt(1 - x^2)$

$f_1(x) = sqrt(1 - x^2), f_2(x) = -sqrt(1 - x^2)$

=== Per 3 variabili
Supponiamo che una funzione $F(x, y, z)$ abbia derivate parziali prime continue in un intorno di un punto $(x_0, y_0, z_0)$ dove $F(x_0, y_0, z_0) = 0$ e $F_z (x_0, y_0, z_0) != 0$.

Allora $exists$ un intorno di $(x_0, y_0, z_0)$ tale che i punti $(x, y, z)$ che soddisfano l'equazione $F(x, y, z) = 0$ appartengono al grafico di una funzione $f(x, y)$, cioè

$ exists f(x, y) "t.c." F(x, y, f(x, y)) $

in particolare $z_0 = f(x_0, y_0)$

*Esempio* $F(x, y, z) = x^2 + y^2 + z^2 - 1$

$F(x, y, z) = 0 arrow.l.r.double x^2 + y^2 + z^2 = 1$

$z = plus.minus sqrt(1 - x^2 - y^2) $

$f_1(x, y) = sqrt(1 - x^2- y^2), f_2(x, y) = -sqrt(1 - x^2 - y^2)$

=== Derivata della funzione del teorema della funzione implicita
$F(t) = f(x(t), y(t))$

$F' = macros.arrowgrad f dot (d arrow(x))/(d t) = F_x (d x)/(d t) + F_y (d y)/(d t)$

$F(x, f(x)) = 0$

$d/(d x) F(x, f(x)) = 0 equiv F_x + F_y f'(x) = 0 arrow.double.l.r f' = - F_x/F_y$
$ f'(x) = - F_x/F_y $

==== Per 3 variabili
$F(x, y, f(x, y)) = 0$

Faccio la derivata parziale di $G(x, y) := F(x, y, f(x, y))$ rispetto a x.

$G_x = F_x + F_z f_x = 0$

rispetto a y

$G_y = F_y + F_z f_y = 0$

$ cases(
    f_x = - F_x/F_z,
    f_y = - F_y/F_z
) $

*Esempio* $F(x, y, z) = x^2 + y^2 + z^2 - 1$

$f_2 = - sqrt(1 - x^2 - y^2)$

$(f_2)_x = x/sqrt(1 - x^2 - y^2)$, $(f_2)_y = y/sqrt(1 - x^2 - y^2)$

usando il teo:
$ f_x = - F_x/F_z = - (2 x)/(2 z) = - x/z overbrace(=, z = f_2) - x/(- sqrt(1 - x^2 - y^2)) = x/sqrt(1 - x^2 - y^2) $
analogamente
$ f_y = - F_y/F_z = - (2 y)/(2 z) = - y/z overbrace(=, z = f_2) - y/(- sqrt(1 - x^2 - y^2)) = y/sqrt(1 - x^2 - y^2) $