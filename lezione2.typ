#import "macros.typ"

= Curve in $RR^n$

== $RR^n$
$ RR^n = {(x_1, ..., x_n) | x_i in RR forall 1 <= i <= n} $
$ c macros.vec(x_1, dots.v, x_n) = macros.vec(c x_1, dots.v, c x_n) $
$ arrow(x) dot arrow(y) = sum_(i=1)^n x_i y_i $
$ d(arrow(x), arrow(y)) = sqrt(sum_(i=1)^n (y_i - x_i)^2) $

=== Spoiler
$ f: RR arrow RR^n $
$ f: RR^n arrow RR^m ("campi vettoriali") $
$ f: RR^2 arrow RR^3 $

== Curve nello spazio euclideo $RR^n$
Una curva parametrizzata nello spazio euclideo $RR^n$ è una funzione che associa valori vettoriali
$ arrow(x):[a,b] subset RR arrow RR^n $
$ t arrow macros.vec(x_1 (t), dots.v, x_n (t)) $

Assumeremo che $x_i (t)$ sia una funzione derivabile con derivata continua (Classe c1).

== Vettore "velocità" (tangente alla curva)
$ arrow(v)(t_0) = (d arrow(x))/(d t) (t_0) = lim_(Delta t arrow.bar 0) (arrow(x)(t_0 + Delta t) - arrow(x) (t_0))/(Delta t) $
- $arrow(v)(t_0)$ è tangente alla curva in $arrow(x)(t_0)$.
- Il verso di $arrow(v)$ dipende dal verso in cui è percorsa la curva.

$ (d arrow(x))/(d t) (t_0) = lim_(Delta t arrow.bar 0)
	1/(Delta t) (macros.vec(x_1 (t_0 - Delta t), dots.v, x_n (t_0 - Delta t))
				- macros.vec(x_1 (t_0), dots.v, x_n (t_0))) = lim_(Delta t arrow.bar 0)
				macros.vec(
					(x_1(t_0 + Delta t) - x_1 (t_0))/(Delta t),
					dots.v,
					(x_n(t_0 + Delta t) - x_n (t_0))/(Delta t)) $

*Esempio* (preso su carta)

== Curva regolare
Una curva è regolare se:
+ Le componenti della curva sono derivabili con derivata continua nell'intervallo $[a, b]$ dove la curva è definita.
+ $arrow(x)(t_1) != arrow(x)(t_2) forall t_1 != t_2 $, la curva non ha autointersezioni.
+ $||arrow(v)|| > 0 forall t in [a, b]$.

=== Moto rettilineo uniforme
$ (d arrow(x))/(d t) = d(arrow(x_0) + t arrow(v))/(d t) = arrow(v) $
Moto rettilineo uniforme (a velocità costante).

=== Moto circolare uniforme
$ arrow(x) = macros.vec(R cos t, R sin t), t in [0, 2 pi] $
$ arrow(v) = (d arrow(x))/(d t) = macros.vec(-R sin t, R cos t) $
$ ||arrow(v)|| = sqrt((-R sin t)^2 + (R cos t)^2) = sqrt(R (cos^2 t + sin^2 t)) = R sqrt(1) = R $

=== Moto elicoidale
$ macros.vec(
	R cos t,
	R sin t,
	t/(2 pi),
) $
Si nota perché le prime due descrivono una circonferenza, ma lungo la terza coordinata ci si sposta linearmente di $1/(2 pi)$.

#figure(image("assets/elica.png", width: 50%), caption: "Un moto elicoidale")

== Lunghezza di una curva regolare
*_Def_* si chiama lunghezza di una curva regolare.
$arrow(x)(t), t in [a, b]$.
$ l = integral_a^b lr(bar.double (d arrow(x))/(d t) bar.double) d t $

=== Esempio
Siano due punti $a$, $b$, la parametrizzazione standard della rette che le unisce è:
$ macros.vec(
	a_1 + t(b_1 - a_1),
	a_2 + t(b_2 - a_2)
) $
quindi la lunghezza da $[0, 1]$ della retta è:
$ integral_0^1 lr(||macros.vec(b_1 - a_1, b_2 - a_2)||) d t = 
integral_0^1 sqrt((b_1 - a_1)^2 + (b_2 - a_2)^2) d t =
sqrt((b_1 - a_1)^2 + (b_2 - a_2)^2) $

=== Lunghezza della circonferenza
$ integral_0^(2 pi) R d t = 2 pi R $