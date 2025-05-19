#import "macros.typ"

= Punti stazionari per funzioni ristrette
*Problema* studiare i punti stazionari di una funzione di due variabili $f(x, y)$ ristretta alla curva di livello di una funzione $g(x, y)$ (*vincolo*).
$ f(x, y) "ristretta a" g(x, y) = c $
La soluzione diretta:
+ Parametrizzo il vincolo $g(x(t), y(t)) = c$.
+ Restringo $f$ al vincolo $F(t) = f(x(t), y(t))$.
+ I punti stazionari sono le soluzioni di $F' = 0$.

_Parametrizzare il vincolo può essere tedioso._

== Moltiplicatori di Lagrange
$F' = f_x (x(t), y(t)) (d x)/(d t) + f_y (x(t), y(t)) (d y)/(d t) = macros.arrowgrad f dot (d arrow(r))/(d t)$
Nei punti stazionari di $F$
$ F' = 0 arrow.double.l.r macros.arrowgrad f dot (d arrow(r))/(d t) = 0 $

Nei punti stazionari $macros.arrowgrad f$ è ortogonale alla curva.
D'altra parte, su *TUTTI* i punti della curva $g = c$ $macros.arrowgrad g$ è ortogonale alla curva.

Nei punti stazionari che cerco $exists lambda "t.c" macros.arrowgrad f = lambda macros.arrowgrad g$.

$ (*) = cases(
    macros.arrowgrad f = lambda macros.arrowgrad g,
    g(x, y) = c
) $

$ L(x, y, z) = f - lambda (g(x, y) - c) $
I punti stazionari di L sono le soluzioni di $(*)$.\
$L_x = f_x - lambda g_x = 0$\
$L_y = f_y - lambda g_y = 0$\
$L_z = f_z - lambda g_z = 0$

*Esempio* Determinare il punto sulla retta $x - y = 3$ posto alla minima distanza da $(1, 2)$

$d(x, y) = sqrt((x - 1)^2 + (y - 2)^2)$\
Nota che il minimo della distanza è anche il minimo della distanza al quadrato\
$d^2(x,y) = (x - 1)^2 + (y - 2)^2$

Proviamo a parametrizzare:
$ cases(
    x = t,
    y = t - 3
) $

$F(t) = (t-1)^2 + (t - 5)^2 = t^2 - 2t + 1 + t^2 - 10t + 25 = 2 t^2 - 12t + 26 = 2(t^2 - 6t + 13), 2t - 6 = 0 => t = 3$\
quindi la distanza minima si trova a $(3, 0)$

$ macros.arrowgrad d = macros.vec(
    2(x - 1),
    2(y - 2)
) $

$ macros.arrowgrad g = macros.vec(
    1,
    -1
) $

$ cases(
    2(x - 1) = lambda,
    2(y - 2) = - lambda,
    x - y = 3
) => (3, 0) $

== Punti stazionari per funzioni ristrette in 3 variabili
Come nel caso in 2 variabili si può procedere in più modi:

+ Si trova una parametrizzazione per $g(x, y, z) = c$ in $g(x(s, t), y(s, t), z(s, t)) = c$.
+ Si restringe la funzione $f(x, y, z)$ al vincolo: $F(s, t) = f(x(s, t), y(s, t), z(s, t))$
+ I punti stazionari sono le soluzioni del sistema $cases(F_s = 0, F_t = 0)$

== Moltiplicatori di Lagrange in 3 variabili
$ cases(
    macros.arrowgrad f = lambda macros.arrowgrad g,
    g = c
) equiv cases(
    f_x = lambda g_x,
    f_y = lambda g_y,
    f_z = lambda g_z,
    g = c
) $

*Esempio* Calcola le coordinate del punto appartenente al piano $x + y + z = 0$ avente minima distanza dal punto $(1, 1, 1)$.

$f(x, y, z) = d^2(x, y, z) = (x-1)^2 + (y-1)^2 + (z-1)^2$\
$g(x, y, z) = x + y + z$\
Il vincolo è $g = 0$

$macros.arrowgrad f = macros.vec(
    2(x - 1),
    2(y - 1),
    2(z - 1)
), g_x = g_y = g_z = 1$
$ cases(
    2(x-1) = lambda,
    2(y-1) = lambda,
    2(z-1) = lambda,
    x + y + z = 0
) arrow.double.l.r cases(
    x = y = z = lambda/2 + 1,
    3(lambda/2 + 1) = 0 arrow.double.l.r lambda/2 + 1 = 0
) arrow.double.l.r x = y = z = 0, overbrace(cancel(lambda = -2), "non ci interessa") $

Il punto di distanza minima è $O(0, 0, 0)$.

== Punti stazionari su 2 restrizioni

*Problema* Studiare i punti stazionari di $f(x, y, z)$ ristretta all'intersezione di due vincoli
$ cases(
    g_1 (x, y, z) = c_1,
    g_2 (x, y, z) = c_2,
) $

Assumiamo che l'intersezione non sia vuota e che $macros.arrowgrad g_1$ e $macros.arrowgrad g_2$ siano linearmente indipendenti.

C'è sempre il metodo diretto:
+ Parametrizzo il vincolo: $(x(t), y(t), z(t))$ la curva intersezione dei due piani.
    - l'equazione parametrica del sistema)$cases(
                g_1 (x, y, z) = c_1,
                g_2 (x, y, z) = c_2,
            )$
+ Restringiamo la funzione $F(t) = f(x(t), y(t), z(t))$
+ Cerchiamo i punti stazionari $F' = macros.arrowgrad f dot (d arrow(r))/(d t) = 0$

== Moltiplicatori di Lagrange per 2 restrizioni
$ macros.arrowgrad f = lambda_1 macros.arrowgrad g_1 + lambda_2 macros.arrowgrad g_2 $
$ cases(
    macros.arrowgrad f = lambda_1 macros.arrowgrad g_1 + lambda_2 macros.arrowgrad g_2,
    g_1 = c_1,
    g_2 = c_2
) equiv cases(
    f_x = lambda_1 (g_1)_x + lambda_2 (g_2)_x,
    f_y = lambda_1 (g_1)_y + lambda_2 (g_2)_y,
    f_z = lambda_1 (g_1)_z + lambda_2 (g_2)_z,
    g_1 = c_1,
    g_2 = c_2
) $

*Esempio* Calcola le coordinate del punto appartenente alla retta di intersezione tra il piano $x + y + z = 0$ e il piano $x - z = 1$ avente minima distanza dal punto $O(0, 0, 0)$.

In questo caso $f(x, y, z) = d^2(x, y, z) = x^2 + y^2 + z^2$, le due funzioni $g$ sono i piani: $g_1 = x + y + z$ e $g_2 = x - z$ e i vincoli: $g_1 = 0, g_2 = 1$

*Metodo 1*
$ g_1 inter g_2 = macros.vec(t, 1 - 2t, t - 1) $
$ F(t) = t^2 + (1 - 2t)^2 + (t - 1)^2 $
$ F'(t) = 2t - 4(1 - 2t) + 2(t - 1) = 12t - 6 $
$ F'(t) = 0 arrow.double.l.r t = 1/2 arrow.double.l.r x = 1/2, y = 0, z = -1/2 $

*Metodo 2*
$ macros.arrowgrad f = macros.vec(2x, 2y, 2z), macros.arrowgrad g_1 = macros.vec(1, 1, 1), macros.arrowgrad g_2 = macros.vec(1, 0, -1) $

$ (*)cases(
    2x = lambda_1 + lambda_2,
    2y = lambda_1,
    2z = lambda_1 - lambda_2,
    x + y + z = 0,
    x - z = 1
) $
$ (**)cases(
    lambda_1 + cancel(lambda_2) + lambda_1 + lambda_1 cancel(- lambda_2) = 0 arrow.double.l.r = lambda_1 = 0,
    cancel(lambda_1) + lambda_2 cancel(- lambda_1) + lambda_2 = 2 arrow.double.l.r lambda_2 = 1
) $
$ (*) + (**) = cases(
    2x = 1,
    2y = 0,
    2z = -1
) => cases(
    x = 1/2,
    y = 0,
    z = -1/2
) $