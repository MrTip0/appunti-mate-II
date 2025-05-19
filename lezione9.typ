#import "macros.typ"

= Campi vettoriali conservativi
Un campo vettoriale $arrow(F)$ si dice conservativo se esiste una funzione $U$ t.c. $arrow(F) = macros.arrowgrad U$

== Teorema
Se $arrow(F)$ è un campo vettoriale conservativo e $U$ la sua funzione potenziale e $P_1, P_2$ i punti iniziali e finali della curva $gamma$ allora:

$ integral_gamma arrow(F) dot arrow(t) d cal(l) = U(P_2) - U(P_1) $

_dim_
$ integral_C arrow(F) dot arrow(t) d cal(l) = integral_a^b (F_1 (d x_1)/(d t) + ... + F_n (d x_n)/(d t)) d t $
$ = integral_a^b ((diff U)/(diff x_1) (d x_1)/(d t) + ... + (diff U)/(diff x_n) (d x_n)/(d t)) d t = integral_a^b macros.arrowgrad U dot (d arrow(r))/(d t) d t $
$ = integral_a^b d/(d t) U(x_1 (t), ..., x_n (t)) d t $
$ = U(x_1 (b), ..., x_n (b)) - U(x_1 (a), ..., x_n (a)) = U(P_2) - U(P_1) $

== Requisito necessario perché un campo sia conservativo
$ arrow(F) = macros.arrowgrad U => arrow(F_i) = (diff U)/(diff x_i) => (diff arrow(F_j))/(diff x_i) - (diff arrow(F_i))/(diff x_j) = (diff U)/(diff x_i diff x_j) - (diff U)/(diff x_i diff x_j) = 0 $

pertanto perché un campo sia conservativo deve valere che $forall i,j in [1, dim(arrow(F))]$

$ (diff arrow(F_i))/(diff x_j) = (diff arrow(F_j))/(diff x_i) $

ad esempio in 2 dimensioni

$ (diff arrow(F_x))/(diff y) = (diff arrow(F_y))/(diff x) $
(i casi $x, x$ e $y, y$ sono banali, mentre il caso $y, x$ è il medesimo per la proprietà di simmetria dell'uguale)

== Dominio di definizione di un campo vettoriale

Sia un campo vettoriale $arrow(F)(x_1, ..., x_n)$ e $F_1 : D_1 subset RR^n -> RR^n, ..., F_n : D_n subset RR^n -> RR^n$ le sue componenti, allora il dominio $D$ di $arrow(F)$ è:
$ inter_(i=1)^n D_i $

== Dominio semplicemente connesso
_definizione_ Un dominio $D subset RR^n$ si dice semplicemente connesso se è connesso per archie per ogni curva chiusa regolare contenuta in $D$ è la frontiera di una regione interamente contenuta in $D$.

== Lemma di Pointcarré
Sia $arrow(F)$ un campo vettoriale di classe C^1 (Le componenti di $arrow(F)$ e le loro derivate parziali prime sono continue) e il dominio di definizione di $arrow(F)$ è semplicemente connesso allora le seguenti affermazioni sono equivalenti:

1. $arrow(F)$ è conservativo.
2. $forall i, j in [1, dim(arrow(F))], (diff arrow(F_i))/(diff x_j) = (diff arrow(F_j))/(diff x_i)$.