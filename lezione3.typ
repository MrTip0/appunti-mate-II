#import "macros.typ"

= Lezione3, Funzioni in più variabili
$ f:RR^n arrow.long RR $
L'obiettivo è studiarne limiti, continuità e differenziabilità.

Il grafico di una funzione $f:D subset RR arrow.long RR$ è l'insieme dei punti in $RR^(n+1)$ della forma $(x_1, ..., x_n, f(x_1, ..., x_n))$

#figure(image("assets/plot0.png"), caption: "Grafico di una funzione in 2 variabili")

Per le funzioni in più di 2 variabili la rappresentazione è praticamente impossibile.

== Limiti
Per le funzioni in una variabile la definizione di limite è:
$ lim_(x arrow x_0) f(x) = l "se" forall epsilon > 0 exists delta > 0 : forall x "che soddisfa" 0 < abs(x - x_0) < delta "vale" abs(f(x)-l) $

Per funzioni in più variabili:
$ lim_(arrow(x) arrow arrow(x_0)) f(arrow(x)) = l $
Se $forall epsilon > 0$ $exists delta > 0$ t.c. $forall arrow(x)$ che soddisfa $0 < lr(||arrow(x)-arrow(x_0)||) < delta$ vale $abs(f(arrow(x)) -l) < epsilon$.

=== Continuità
Una funzione è continua in $arrow(x_0)$ se 
$ lim_(arrow(x) arrow arrow(x_0)) f(arrow(x)) = f(arrow(x_0)) $

== Differenziabilità
Per le funzioni in più variabile la derivata è definita come:
$ lim_(Delta x arrow.bar 0) (f(x_0 + Delta x) - f(x_0))/(Delta x) = f'(x_0) = (d f)/(d x) (x_0) $

=== Derivata parziale
$ lim_(Delta x arrow.bar 0) (f(x_0 + Delta x, y_0) - f(x_0, y_0))/(Delta x) $
Se esiste si chiama derivata parziale di $f$ rispetto ad $x$ nel punto $(x_0, y_0)$.
Ed è rappresentata dalle seguenti notazioni: $(diff f)/(diff x), f'_x, f_x$

Analogamente
$ lim_(Delta y arrow.bar 0) (f(x_0, y_0 + Delta y) - f(x_0, y_0))/(Delta y) $
Se esiste si chiama derivata parziale di $f$ rispetto ad $y$ nel punto $(x_0, y_0)$.
Ed è rappresentata dalle seguenti notazioni: $(diff f)/(diff y), f'_y, f_y$

*Esempio* $f = x^2 y^2$, $f_x = 2 x y^3$, $f_y = 3 x^2 y^2$, $f_(x x) = 2 y^3$, $f_(x y) = 6 x y^2$, $f_(y x) = 6 x y^2$, $f_(y y) = 6 x^2 y$.
*Nota* L'ordine di derivazione non conta, conta solo per ogni variabile quante volte viene derivata.

=== Differenziabilità
Si dice che $f$ è derivabile in $x_0$ se esiste una costante $m$ t.c. $f(x) = f(x_0) + m (x - x_0) + omicron(Delta x)$ dove $lim_(Delta x arrow.bar 0) omicron(Delta x)/(Delta x) = 0$
$ f(x)/(Delta x) - f(x_0)/(Delta x) = m + omicron(Delta x)/(Delta x) $
$ lim_(Delta x arrow.bar 0) (f(x) - f(x_0))/(Delta x) = m + lim_(Delta x arrow.bar 0) omicron(x)/(Delta x) $
$ lim_(Delta x arrow.bar 0) (f(x) - f(x_0))/(Delta x) = m $

Si dice che $f(x,y)$ è differenziabile in $(x_0, y_0)$ se esistono due costanti $m_1$ e $m_2$ t.c.
$ f(x,y) = f(x_0,y_0) + m_1 (x-x_0) + m_2 (y-y_0) + omicron(rho) $
dove $rho = sqrt((x-x_0)^2 + (y-y_0)^2) = sqrt((Delta x)^2 + (Delta y)^2)$

*Nota* l'equazione $z - f(x_0,y_0) - m_1 (x-x_0) - m_2 (y-y_0) = 0$ è l'equazione di un piano, quindi una funzione in due variabili è differenziabile in $(x_0,y_0)$ se esiste un piano tangente alla funzione in quel punto.

Ora dimostriamo che $m_1 = f_x(x_0, y_0)$, che $m_2 = f_y(x_0, y_0)$ è una dimostrazione analoga.

$ f(x,y) = f(x_0,y_0) + m_1 (x-x_0) + m_2 (y-y_0) + omicron(rho) $
scelgo $y = y_0$
$ f(x,y_0) = f(x_0,y_0) + m_1 (x-x_0) + m_2 (y_0-y_0) + omicron(rho) $
$ f(x,y_0) = f(x_0,y_0) + m_1 (x-x_0) + omicron(abs(Delta x)) $
$ m_1 = (f(x, y_0) - f(x_0, y_0))/(Delta x) + omicron(abs(Delta x))/(Delta x) $
$ m_1 = lim_(Delta x arrow.bar 0) (f(x, y_0) - f(x_0, y_0))/(Delta x) $
$ m_1 = f_x (x_0, y_0) $
L'equazione del piano tangente al grafico di $f(x,y)$ nel punto $(x_0, y_0)$ ha la forma:
$ z = f(x_0,y_0) + f_x (x_0,y_0) (x-x_0) + f_y (x_0,y_0) (y-y_0) $

*Esempio* calcolare l'equazione del piano tangente al grafico di $f = x^2 + y^2$ nel punto $(1, 1)$.
$ f(1, 1) = 2 $
$ f_x = 2 x $
$ f_y = 2 y $
$ f_x (1,1) = f_y (1, 1) = 2 $
$ z = 2 + 2 (x - 1) + 2 (y - 1) $
$ z = 2 + 2 x - 2 + 2 y - 2 $
$ z = 2 x + 2 y - 2 $
$ 2x + 2y - z = 2 $

=== Differenziabilità $arrow.double$ Continuità
$ lim_((x, y) arrow.bar (x_0,y_0)) f(x, y) = lim_((x, y) arrow.bar (x_0,y_0)) (f(x_0,y_0) + m_1 (x-x_0) + m_2 (y-y_0) + omicron(rho)) = f(x_0, y_0) $

== Teorema di derivazione della funzione composta
$ g:[a,b] subset RR arrow.long RR^n, f: RR^n arrow.long RR $
$ F: f circle.small g $
$ g(t) = macros.vec(g_1 (t), dots.v, g_n (t)), F(t) = f(g_1 (t), ..., g_n (t)) $
*Teo* Sia $f(x, y)$ una funzione differenziabile in $(x_0, y_0)$ e $arrow(x)(t) = (x(t), y(t))$ una curva regolare passante per $(x_0, y_0)$ a $t = t_0$.

$ (d F)/(d t) (t_0) = (d f(x(t), y(t)))/(d t)(0) =
(diff f)/(diff x)(x_0, y_0) (d x)/(d t)(t_0) + (diff f)/(diff y)(x_0, y_0) (d y)/(d t)(t_0) $

*Dim*
$ f(x, y) = f(x_0, y_0) + (diff f)/(diff x) (x - x_0) + (diff f)/(diff y) (x_0, y_0)(y - y_0) + o(rho) $
$ f(x(t), y(t)) = f(x(t_0), y(t_0)) + (diff f)/(diff x)(x_0, y_0)(x(t) - x(t_0)) + (diff f)/(diff y)(x_0, y_0)(y(t) - y(t_0)) + o(rho) $
$ (f(x(t), y(t)) - f(x(t_0), y(t_0)))/(Delta t) = (diff f)/(diff x)(x_0, y_0) (x(t) - x(t_0))/(Delta t) + (diff f)/(diff y)(x_0, y_0) (y(t) - y(t_0))/(Delta t) + o(rho)/(Delta t) $
$ lim_(Delta t |-> 0)(f(x(t), y(t)) - f(x(t_0), y(t_0)))/(Delta t) = lim_(Delta t |-> 0) (diff f)/(diff x)(x_0, y_0) (x(t) - x(t_0))/(Delta t) + lim_(Delta t |-> 0) (diff f)/(diff y)(x_0, y_0) (y(t) - y(t_0))/(Delta t) + lim_(Delta t |-> 0) o(rho)/(Delta t) $
$ F'(t) = (diff f)/(diff x)(x_0, y_0) (d x)/(d t)(t_0) + (diff f)/(diff y)(x_0, y_0) (d y)/(d t)(t_0) + lim_(Delta t |-> 0) o(rho)/(Delta t) $
inoltre
$ lim_(Delta t |-> 0) o(rho)/(Delta t) =
lim_(Delta t |-> 0) o(rho)/rho rho/(Delta t) =
lim_(Delta t |-> 0) 0 * rho/(Delta t) =
lim_(Delta t |-> 0) 0 * sqrt(((Delta x)/(Delta t))^2 + ((Delta y)/(Delta t))^2) =
lim_(Delta t |-> 0) 0 * lr(|| (d arrow(x))/(d t)(t_0)||) = 0 $
quindi
$ F'(t) = (diff f)/(diff x)(x_0, y_0) (d x)/(d t)(t_0) + (diff f)/(diff y)(x_0, y_0) (d y)/(d t)(t_0) $

*Esempio: * $f(t) = x(t)^2 y(t)^3, x(t) = t + 1, y(t) = t^2$.
Calcolare la derivata della funzione composta nel punto $(2, 1)$.

Per quale valore di $t$ la curva passa per $(2, 1)$? $t=1$.

$ F(t) = (t+1)^2 + t^6 = t^8 + 2 t^7 + t^6 $
$ F'(t) = 8t^7 + 14t^6 + 6t^5 $
$ F'(1) = 28 $

$ F'(1) = (diff f)/(diff x)(2, 1) (d x)/(d t)(1) + (diff f)/(diff y)(2, 1) (d y)/(d t)(1) $
$ (diff f)/(diff x)=2 x y^3 |_(2,1)=4 $
$ (diff f)/(diff y)=3 x^2 y^2 |_(2,1)=12 $
$ (d x)/(d t) = 1 $
$ (d y)/(d t) = 2t |_1 = 2 $
$ F'(1) = 4 * 1 + 12 * 2 = 28 $

=== Gradiente
$ macros.arrowgrad f(arrow(x_0)) = macros.vec(
    (diff f)/(diff x_1) (arrow(x_0)),
    dots.v,
    (diff f)/(diff x_n) (arrow(x_0)),
) $

=== Caso in n variabili
$f(x_1, ..., x_n), x_1(t),...,x_n (t), F(t) = f(x_1(t), ..., x_n (t))$
$ F'(t_0) = sum_(i=1)^n (diff f)/(diff x_i)(x_1^0, ..., x_n^0) (d x_i)/(d t)(t_0) =
macros.arrowgrad f(arrow(x_0)) dot (d arrow(x))/(d t) (t_0) $

== Curva di livello
Si dice che $(x_1 (t), ..., x_n (t))$ è una curva di livello di $f(x_1, ..., x_n)$ se
$ F(t) = f(x_1 (t), ..., x_n (t)) = "costante" $

*Esempio* $f = x^2 + y^2, x(t) = sin(t), y(t)=cos(t)$

$F(t) = f(sin(t), cos(t)) = sin^2 t + cos^2 t = 1$

=== Teorema
Il gradiente è ortogonale alle curve di livello.
Sia $(x_1(t), ..., x_n (t))$ una curva di livello di $f(x_1, ..., x_n)$, allora
$ F(t) = f(x_1 (t), ..., x_n (t)) = "costante" $
$ F' = macros.arrowgrad f dot (d arrow(x))/(d t) = 0 $


== Punti Stazionari
In $RR$ i punti stazionari sono i punti dove la derivata sia annulla.
In $RR^n$ i punti stazionari sono i punti dove tutte le derivate parziali si annullano.
$(x_1, ..., x_n)$ è un punto stazionario se:
$ macros.arrowgrad f(x_1, ..., x_n) = macros.vec(0, dots.v, 0) $

=== Intorno
Si dice intorno di $(x_0, y_0)$ di raggio $delta$ l'insieme dei punti $(x, y) in RR^2$ che distano meno di delta da $(x_0, y_0)$.

Si dice intorno di $arrow(x_0) in RR^n$ di raggio $delta$ l'insieme dei punti $arrow(x) in RR^n$ tali che $d(arrow(x_0), arrow(x)) < delta$.

=== Minimo relativo
In $RR$ un punto $x_0$ è un minimo relativo se $exists delta "t.c." f(x_0) <= f(x) forall x in (x-delta, x+delta)$.

In $RR^n$ un punto $arrow(x_0)$ è un punto di minimo relativo se esiste un intorno $I "di" arrow(x_0)$ t.c.
$ f(arrow(x_0)) <= f(arrow(x)) forall arrow(x) in I $.

=== Massimo relativo
In $RR$ un punto $x_0$ è un massimo relativo se $exists delta "t.c." f(x_0) >= f(x) forall x in (x-delta, x+delta)$.

In $RR^n$ un punto $arrow(x_0)$ è un punto di massimo relativo se esiste un intorno $I "di" arrow(x_0)$ t.c.
$ f(arrow(x_0)) >= f(arrow(x)) forall arrow(x) in I $.