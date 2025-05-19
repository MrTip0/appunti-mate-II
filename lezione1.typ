#import "macros.typ"

= Accenni di GAL
== Lista Appelli
+ Gennaio
+ Febbraio
+ Aprile
+ Giugno
+ Luglio
+ Settembre
+ Novembre

== Funzioni di più Variabili
=== Rappresentazione
#image("assets/plot0.png")

=== Definizione funzioni in 2 Variabili

$ f : RR^2 arrow RR $

$ RR^2 = {(x, y) | x,y in RR } $

$ RR^n = {(x_1,...,x_n) | x_i in RR forall 1 <= i <= n} $ 

$RR^2$
- struttura lineare
- struttura euclidea

=== $RR^2$ come struttura lineare (spazio vettoriale)
$ arrow(x) = macros.vec(x_1, x_2, delim: bar) $
#h(2in)
$ arrow(y) = macros.vec(y_1, y_2, delim: bar) $

$ c arrow(x) = macros.vec(c x_1, c x_2, delim: bar) $

$ arrow(x) + arrow(y) = macros.vec(x_1 + y_1, x_2 + y_2, delim: bar) $

=== $RR^2$ come struttura euclidea
==== Prodotto Scalare
$ arrow(x) dot arrow(y) = x_1 y_1 + x_2 y_2 =
bar.double arrow(x) bar.double bar.double arrow(y) bar.double cos theta $
Dove $theta$ è l'angolo compreso tra i 2 vettori.

Quando $arrow(x) dot arrow(y) = 0$ i vettori $arrow(x)$ e $arrow(y)$ 
sono ortogonali.

==== Norma di un vettore
$ bar.double x bar.double = sqrt(arrow(x) dot arrow(x)) $

==== Distanza tra 2 punti
$ d(x, y) = bar.double arrow(x) - arrow(y) bar.double =
bar.double arrow(y) - arrow(x) bar.double $

dove $arrow(x) - arrow(y) = arrow(x) + (-1) arrow(y)$

==== Angolo tra 2 vettori
$ cos(theta_(arrow(x),arrow(y))) = (x_1 y_1 + x_2 y_2)/
(||arrow(x)||||arrow(y)||) $

=== Coordinate polari
Dato un vettore $arrow(x) = (x_1, x_2)$ e l'angolo $phi$ compreso
tra il vettore e l'asse orizzontale, associo al vettore la coppia di
numeri $(||arrow(x)||, phi)$, dove quindi:
$ x_1 = ||arrow(x)|| cos(phi) $
$ x_2 = ||arrow(x)|| sin(phi) $

$ x = macros.vec(||arrow(x)|| cos(phi), ||arrow(x)|| sin(phi)) $

ora consideriamo il vettore $(||arrow(y)||, psi)$

$ arrow(x) dot arrow(y) = x_1 y_1 + x_2 y_2 =
||arrow(x)||||arrow(y)|| (cos(phi)cos(psi) + sin(phi)sin(psi)) =
||arrow(x)||||arrow(y)|| cos(theta) $

== Retta nel piano
$ a_1 x_1 + a_2 x_2 = c $
$x_2 = m x_1 + q$ è meno generale
$ a_1 x_1 + a_2 x_2 = 0 $
$ arrow(a) = macros.vec(a_1, a_2), arrow(x) = macros.vec(x_1, x_2) $
$ arrow(a) dot arrow(x) = 0 $ 

#image("assets/plot1.png")
dove la retta è perperndicolare a $arrow(a)$ e passa per l'origine perchè $c = 0$

$ a_1 x_1 + a_2 x_2 = c, c != 0 $
$ a_1 x_1 + a_2 x_2 = c $
$ a_1 x_1 + a_2 x_2 = a_1 x_1^0 a_2 x_2^0 $
$ a_1 (x_1 - x_1^0) + a_2 (x_2 - x_2^0) = 0 $

$ arrow(a) dot (arrow(x) - arrow(x_0)) $
questa è l'equazione cartesiana.

Data $arrow(x_0) = (x_1^0, x_2^0)$ e $arrow(V) = (v_1, v_2)$, l'equazione
parametrica della retta passante per $arrow(x_0)$ e parallela a
$arrow(V)$ è data da $arrow(x) = arrow(x_0) + arrow(V) t$

$ macros.vec(x_1, x_2, delim: bar) =
macros.vec(x_1^0, x_2^0, delim: bar) + t macros.vec(v_1, v_2, delim: bar) =
macros.vec(x_1^0 + v_1 t, x_2^0 + v_2 t, delim: bar) $

== Equazioni lineari
$ cases(
    a_(11) x_1 + a_(12) x_2 = b_1,
    a_(21) x_1 + a_(22) x_2 = b_2,
) $
Esistono 2 casi:
+ Le rette non sono parallele ed $exists!$ una soluzione.
+ Le rette sono parallele
    - $exists.not$ una soluzione.
    - Ci sono infinite soluzioni (le due equazioni rappresentano la stessa
        retta)

Siano $arrow(a_1) = macros.vec(a_(11), a_(12)), arrow(a_2) = macros.vec(a_(21), a_(22))$
le due rette sono parallele se: $exists c | arrow(a_1) = c arrow(a_2)$

Sia
$ A = mat(a_(11), a_(12); a_(21), a_(22)) $
$ det(A) = a_(11) a_(22) - a_(12) a_(21) $
$ det(A) = 0 arrow.l.r.double exists c | a_1 = c a_2 $
*VAI A CERCARE LA DIMOSTRAZIONE*

=== Regola di Cramer
$det(A) != 0$
$ x_i = det(A^i)/det(A) $
dove $A^i = A_0 ... A_(i-1) B A_(i+1) ... A_n$ e $B = macros.vec(b_1,dots.v, b_n)$

== $RR^3$ come struttura euclidea
siano $arrow(x), arrow(y) in RR^n$
$ arrow(x) dot arrow(y) = sum_(i=1)^n arrow(x)_i arrow(y)_i =
||arrow(x)|| ||arrow(y)|| cos(theta) $
$ ||arrow(x)|| = sqrt(arrow(x) dot arrow(x)) $

== Il piano
$ a_1 x_1 + a_2 x_2 + a_3 x_3 = c $
prendiamo il caso
$ a_1 x_1 + a_2 x_2 + a_3 x_3 = 0 $

$ arrow(a) = macros.vec(a_1, a_2, a_3), arrow(x) = macros.vec(x_1, x_2, x_3) $
$ arrow(a) dot arrow(x) = 0 $
indica il piano passante per 0 e ortogonale (perpendicolare) ad $arrow(a)$

=== Caso $c != 0$
Sia $arrow(x_0)$ appartentente al piano
$ a_1 x^0_1 + a_2 x^0_2 + a_3 x^0_3 = c $
$ a_1 x^0_1 + a_2 x^0_2 + a_3 x^0_3 = a_1 x_1 + a_2 x_2 + a_3 x_3 $
$ a_1 (x_1 - x^0_1) + a_2 (x_2 - x^0_2) + a_3 (x_3 - x^0_3) = 0 $
$ arrow(a) dot (arrow(x) - arrow(x_0)) = 0 $

*ES* scrivere l'equazione del piano passante per $(1, 2, 3)$ e ortogonale a 
$(1, 1, 1)$

$ macros.vec(1, 1, 1) dot (macros.vec(x_1, x_2, x_3) - macros.vec(1, 2, 3)) = 0 $
$ x_1 + x_2 + x_3 = 6 $

=== Rappresentazione di una retta in $RR^3$
==== Equazione parametrica
dato $arrow(x_0)$ appartentente alla retta e $arrow(v)$ parallela ad essa
un equazione parametrica della retta è:
$ arrow(x) = arrow(x_0) + t arrow(v) arrow.l.r.double
cases(
    x_1 = x^0_1 + t v_1,
    x_2 = x^0_2 + t v_2,
    x_3 = x^0_3 + t v_3,
) $

==== Equazione cartesiana
Sia la retta
$ macros.vec(t, t, 1 + t) equiv cases(x_1 = t, x_2 = t, x_3 = 1 + t)
overbrace(equiv, "eliminando la t") 
cases(x_1 - x_2 = 0, x_3 - x_2 = 1) $
*NB* sono infiniti i piani che hanno una retta come intersezione, quindi
esistono infinite equazione cartesiana di una retta in $RR^3$

== Equazione parametrica del piano
$ P: x_1 + x_2 + x_3 = 6 $
sostituendo $x_1 = t, x_2 = s$, allora $x_3 = 6 - s - t$
$ P = macros.vec(t, s, 6 - s - t) = macros.vec(0, 0, 6) + t macros.vec(1, 0, -1) + s macros.vec(0, 1, -1) $
$ arrow(x_0) = macros.vec(0, 0, 6) in P, arrow(v) = macros.vec(1, 0, -1) in.not P,
arrow(w) = macros.vec(0, 1, -1) in.not P $
dove però $t arrow(v) + s arrow(w)$ è l'equazione parametrica del piano
parallelo a $P$ e passante per l'origine.
Quindi $arrow(v), arrow(w)$ non sono linearmente dipendenti, e appartengono
al piano passante per l'origine e parallelo a $P$.

== Significato geometrico del determinante
$ arrow(v) = macros.vec(v_1, v_2), arrow(w) = macros.vec(w_1, w_2) $
$ det mat(v_1, v_2 ; w_1, w_2) = det mat(v_1, w_1 ; v_2, w_2) $

$det(arrow(v) arrow(w))$ coincide, a meno del segno con l'area del
parallelogramma generato dai 2 vettori.
$ arrow(v) = (||arrow(v)||, phi), arrow(w) = (||arrow(w)||, psi) $
$ det(arrow(v) arrow(w)) = v_1 w_2 - v_2 w_1 =
||arrow(v)|| ||arrow(w)|| cos phi sin psi -
||arrow(v)|| ||arrow(w)|| sin phi cos psi $
$ ||arrow(v)|| ||arrow(w)|| (cos phi sin psi - sin phi cos psi) =
||arrow(v)|| ||arrow(w)|| sin theta_(arrow(v), arrow(w)) $

== Determinante matrice 3x3
$ det
mat(a_(11), a_(12), a_(13);
    a_(21), a_(22), a_(23);
    a_(31), a_(32), a_(33)
) = sum_(i=1)^3 (-1)^(i+1) a_(j i) det (A^(j i))
= sum_(i=1)^3 (-1)^(i+1) a_(i j) det(A^(i j)), forall 1<=j<=3 $
dove $A^(i j)$ è la matrice $A$ senza la colonna $j$ e la riga $i$.

$ det(A) = sum_sigma "sgn"(sigma) 
a_(1 sigma(1)) a_(2 sigma(2)) ... a_(n-1 sigma(n-1)) a_(n sigma(n)) $

siano $arrow(v), arrow(w), arrow(z)$ tre vettori di dimensione 3.
$ abs(det(arrow(v) arrow(w) arrow(z))) =
abs(det macros.vec(arrow(v)^t, arrow(w)^t, arrow(z)^t)) $
e indica il volume del parallelepipedo generato dai tre vettori.

== Sistema lineare a 3 equazioni
$ cases(
    a_(11) x_1 + a_(12) x_2 + a_(13) x_3 = b_1,
    a_(21) x_1 + a_(22) x_2 + a_(23) x_3 = b_2,
    a_(31) x_1 + a_(32) x_2 + a_(33) x_3 = b_3,
) $
Trovare la soluzione significa trovare l'intersezione tra i 3 piani
$ A = mat(
    a_(11), a_(12), a_(13);
    a_(21), a_(22), a_(23);
    a_(31), a_(32), a_(33)
), arrow(x) = macros.vec(x_1, x_2, x_3), arrow(b) = macros.vec(b_1, b_2, b_3) $
$ det(A) != 0 arrow.l.r.double exists! arrow(x) | A arrow(x) = arrow(b) $
$ det(A) = 0 arrow.double cases(
    "esistono infinite soluzioni",
    "non esiste alcuna soluzione"
) $

=== Esercizio di un equazione lineare a 3 equazioni con regola di Cramer
$ cases(
    x_1 + x_2 + x_3 = 1,
    x_1 - x_2 + x_3 = 1,
    x_1 - x_3 = 1,
) $
abbiamo
$ A = mat(
    1, 1, 1;
    1, -1, 1;
    1, 0, -1
), arrow(B) = macros.vec(1, 1, 1) $

$ det A = 2 +2 = 4 $
$ det mat(B A^2 A^3) = det A = 4 $
$ det mat(
    1, 1, 1;
    1, 1, 1;
    1, 1, -1
) = 0 (M^1 = M^2) $
$ det mat(
    1, 1, 1;
    1, -1, 1;
    1, 0, 1
) = 0 (M^1 = M^3) $
$ x_1 = 4/4 = 1, x_2 = 0/4 = 0, x_3 = 0/4 = 0, arrow(x) = macros.vec(1, 0, 0) $

== Prodotto vettoriale
siano $arrow(v)$ e $arrow(w)$
$ arrow(v) times arrow(w) =
||arrow(v)|| ||arrow(w)|| sin theta_(arrow(v), arrow(w)) arrow(n) $
dove $||arrow(n)|| = 1$ e $arrow(n)$ ortogonale ad $arrow(v)$ e $arrow(w)$.

$ arrow(v) times arrow(w) = det mat(
    arrow(e_1), arrow(e_2), arrow(e_3);
    v_1, v_2, v_3;
    w_1, w_2, w_3;
) = macros.vec(
    v_2 w_3 - v_3 w_2,
    v_3 w_1 - v_1 w_3,
    v_1 w_2 - v_2 w_3
) $

dove $arrow(e_i)$ è l'$i$-esimo vettore della base canonica.
$ arrow(e_1) = macros.vec(1, 0, 0),
arrow(e_2) = macros.vec(0, 1, 0),
arrow(e_3) = macros.vec(0, 0, 1) $

=== Esempio
$ arrow(e_1) times arrow(e_2) = macros.vec(1, 0, 0) times macros.vec(0, 1, 0) =
macros.vec(0, 0, 1) = arrow(e_3) $

== Prodotto misto di 3 vettori
siano $arrow(v), arrow(w), arrow(z)$, il prodotto misto dei 3 è:
$ (arrow(v) times arrow(w)) dot arrow(z) $
Il prodotto misto coincide con il volume del parallelepipedo generato dai 3
vettori.
$ (arrow(v) times arrow(w)) dot arrow(z) = underbrace(
    ||arrow(v)||||arrow(w)||sin theta,
    "area del parallelogramma generato da " arrow(v) " e " arrow(w))
||arrow(n)|| underbrace(
    ||arrow(z)||cos phi,
    "altezza del parallelepipedo") $

*Esercizio per casa* dimostrare che
$ macros.vec(
    v_2 w_3 - v_3 w_2,
    v_3 w_1 - v_1 w_3,
    v_1 w_2 - v_2 w_3
) dot macros.vec(z_1, z_2, z_3) = det mat(
    v_1, v_2, v_3;
    w_1, w_2, w_3;
    z_1, z_2, z_3
) $

sono un sacco di passaggi ma è molto semplice.