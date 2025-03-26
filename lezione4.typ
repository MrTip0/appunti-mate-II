#import "macros.typ"

= Lezione 4, Sviluppo di taylor di una funzione in 2 variabili
Sia $f(x, y)$ una funzione.
per fare lo sviluppo della serie lungo una determinata linea si può restringere la funzione lungo un segmento su quella linea.
$ x(t) = x_0 + t(x - x_0) $
$ y(t) = y_0 + t(y - y_0) $
$ x(0) = x_0, y(0) = y_0, x(1) = x, y(1) = y $

$ F(t) = f(x_0 + t(x-x_0), y_0 + t(y - y_0)) $
$ F(t) = F(0) + F'(0) t + 1/2 F''(0) t^2 "+ resto" $
$ F(0) = F(x_0, y_0) $
$ F(1) = F(0) + F'(0) + 1/2 F''(0) $

Ora, sia $F(t) = f(x(t), y(t))$
$ F'(t) = f_x (x(t), y(t)) (d x)/(d t)(t) + f_y (x(t), y(t)) (d y)/(d t)(t) $
$ = f_x (x(t), y(t)) Delta x + f_y (x(t), y(t)) Delta y $
$ = f_x (x_0, y_0) Delta x + f_y (x_0, y_0) Delta y $

L'approssimazione di Taylor del I ordine è:
$ f(x, y) = f(x_0, y_0) + f_x (x_0, y_0) Delta x + f_y (x_0, y_0) Delta y $

ora procediamo con la derivata seconda:
$ F''(t) = Delta x (f_(x x) (x_0, y_0) Delta x + f_(x y) (x_0, y_0) Delta y) + Delta y (f_(y x) (x_0, y_0) Delta x + f_(y y) (x_0, y_0) Delta y) $
$ F''(t) = f_(x x) (x_0, y_0) Delta x^2 + 2 f_(x y) (x_0, y_0) Delta x Delta y + f_(y y) (x_0, y_0) Delta y^2 $

L'approssimazione di Taylor del II ordine è:
$ f(x, y) = f(x_0, y_0) + f_x (x_0, y_0) Delta x + f_y (x_0, y_0) Delta y + 1/2 (f_(x x) (x_0, y_0) Delta x^2 + 2 f_(x y) (x_0, y_0) Delta x Delta y + f_(y y) (x_0, y_0) Delta y^2) $

*Esempio* Calcolare lo sviluppo di Taylor del II ordine di $f(x, y) = cos(x + y) "in" (0, 0)$.

$ f_x (x + y) = - sin (x + y) $
$ f_y (x + y) = - sin (x + y) $
$ f_(x x) (x + y) = - cos (x + y) $
$ f_(x y) (x + y) = - cos (x + y) $
$ f_(y y) (x + y) = - cos (x + y) $
$ f(0, 0) = 1 $
$ f_(x)(0, 0) = 0 $
$ f_(y)(0, 0) = 0 $
$ f_(x x)(0, 0) = - 1 $
$ f_(x y)(0, 0) = - 1 $
$ f_(y y)(0, 0) = - 1 $

$ f(x, y) = 1 - 1/2 (Delta x^2 + 2 Delta x Delta y + Delta y^2) = 1 - 1/2 (Delta x + Delta y)^2 $

*Esempio 2* Calcola lo sviluppo di Taylor di II ordine di $f(x, y) = 3 + 6 y + x^2 + 2 x y + 7 y^2$, Nota che ci si aspetta di trovare la funzione stessa essendo un polinomio di secondo grado.

$ f_x = 2 x + 2 y $
$ f_y = 6 + 2 x + 14 y $
$ f_(x x) = 2 $
$ f_(x y) = 2 $
$ f_(y y) = 14 $

$f(0, 0) = 3$, $f_x (0, 0) = 0$, $f_y (0, 0) = 6$
$ f(x, y) = 3 + 6 y + 1/2 (2 x^2 + 4 x y + 14 y^2) = 3 + 6 y + x^2 + 2 x y + 7 y^2 $

== Sviluppo di Taylor in un punto stazionario $(x_0, y_0)$
$ Delta f = f(x, y) - f(x_0, y_0) $

Se $(x_0, y_0)$ è un punto stazionario allora
$ Delta f = 1/2 (f_(x x) (x_0, y_0) Delta x^2 + 2 f_(x y) (x_0, y_0) Delta x Delta y + f_(y y) (x_0, y_0) Delta y^2) $

=== Matrice Hessiana
$ H = macros.mat(
  f_(x x), f_(y x);
  f_(x y), f_(y y)  
) $


La forma quadratica $H_11 Delta x^2 + 2 H_12 Delta x Delta y + H_22 Delta y^2$ si dice
- Definita positiva se è $>= 0$ per ogni scelta di $Delta x " e " Delta y$ e si annulla solo quando $Delta x = Delta y = 0$.
  - In questo caso in $(x_0, y_0)$ è presente un punto di minimo relativo.
- Definita positiva se è $<= 0$ per ogni scelta di $Delta x " e " Delta y$ e si annulla solo quando $Delta x = Delta y = 0$.
  - In questo caso in $(x_0, y_0)$ è presente un punto di massimo relativo.
- Indefinita se il segno dipende dalla scelta di $Delta x$ e $Delta y$.
  - In questo caso in $(x_0, y_0)$ è presente un punto sella.
- Semi-definita positiva se è $>= 0$ per ogni scelta di $Delta x " e " Delta y$ e $exists (Delta x, Delta y) != (0, 0)$ in cui la forma quadratica si annulla.
  - Con la matrice Hessiana non è possibile decidere che tipo di punto stazionario sia.
- Semi-definita negativa se è $<= 0$ per ogni scelta di $Delta x " e " Delta y$ e $exists (Delta x, Delta y) != (0, 0)$ in cui la forma quadratica si annulla.
  - Con la matrice Hessiana non è possibile decidere che tipo di punto stazionario sia.

== La forma quadratica $H_11 Delta x^2 + 2 H_12 Delta x Delta y + H_22 Delta y^2$
Assumiamo che $H_11 != 0$.
$ H_11 Delta x^2 + 2 H_12 Delta x Delta y + H_22 Delta y^2 $
$ H_11 (Delta x^2 + 2 H_12/H_11 Delta x Delta y) + H_22 Delta y^2 $
$ H_11 (Delta x^2 + 2 H_12/H_11 Delta x Delta y + H_12^2/H_11^2 Delta y^2) - H_12^2/H_11 Delta y^2 + H_22 Delta y^2 $
$ H_11 (Delta x + H_12/H_11 Delta y)^2 + (H_11 H_12 - H_12^2)/H_11 Delta y^2 $
$ H_11 (Delta x + H_12/H_11 Delta y)^2 + (det H)/H_11 Delta y^2 $

Quindi adesso, se
- $det H > 0$:
  + $H_11 > 0$: La forma quadratica è definita positiva
    - L'annullarsi della forma quadratica equivale alla richiesta che:
        $ cases(
          Delta y = 0,
          Delta x + H_12/H_11 Delta y = 0
        ) => Delta x = Delta y = 0 $
  + $H_11 < 0$: La forma quadratica è definita negativa
- $det H < 0$: La forma quadratica è indefinita.

*Esempio* Sia $(x_0, y_0)$ un punto stazionario e sia $H(x_0, y_0)$ la matrice Hessiana valutata in $(x_0, y_0)$.
- $det H(x_0, y_0) > 0 and H_11 (x_0, y_0) > 0$: allora $(x_0, y_0)$ è un punto di minimo relativo.
- $det H(x_0, y_0) > 0 and H_11 (x_0, y_0) < 0$: allora $(x_0, y_0)$ è un punto di massimo relativo.
- $det H(x_0, y_0) < 0$: allora $(x_0, y_0)$ è un punto sella.