#include "macros.typ"

= Integrali di linea
== Lunghezza di un arco di curva
sia $arrow(r)(t)$ un arco regolare di curva con $t in [a, b]$ e $x(t), y(t)$ le sue componenti, la sua lunghezza è definita come
$ cal(l) = integral_a^b lr(||(d arrow(r))/(d t)||) d t $

== Integrali di linea di I specie
Si definisce integrale di linea di I specie della funzione $f$ lungo la curva $C$
$ integral_C f d cal(l) $
equivalente a (per $RR^2$)
$ integral_a^b f(x(t), y(t)) dot lr(||(d arrow(r))/(d t)||) d t $

== Campo vettoriale
Si chiama campo vettoriale una funzione
$ arrow(F): Omega subset RR^n --> RR^n $
In fisica esistono tanti esempi di campo vettoriali, ad esempio il campo elettromagnetico.

#figure(image("assets/campo-vettoriale.png", width: 50%), caption: "Un campo vettoriale")

== Integrali di linea di II specie
Si dice integrale di linea di II specie di un campo vettoriale $arrow(F)$ lungo la curva $C$

$ integral_C arrow(F) dot arrow(t) d cal(l) $

Se $arrow(r)(t) = (x_1 (t), ..., x_n (t)), a <= t <= b$ è la parametrizzazione di $C$ allora

$ arrow(t) d cal(l) plus.minus arrow(r)' d t $

pertanto

$ integral_C arrow(F) dot arrow(t) d cal(l) = plus.minus integral_a^b arrow(F) dot arrow(r)' d t = plus.minus integral_a^b (F_1 (t) (d x_1)/(d t) + ... + F_n (t) (d x_n)/(d t)) d t $

=== Forma differenziale
Un integrale di linea di II specie si denota anche come
$ integral_C (F_1 d x_1 + ... + F_n d x_n) $
dove $F_1 d x_1 + ... + F_n d x_n$ si chiama forma differenziale