#import "macros.typ"

= Cambio di variabili di integrali multipli
Come calcolare l'area di una superficie generica?

Data l'equazione parametrica di una superficie
$ cases(
  x(u, v),
  y(u, v)
) $

il segmento della retta $u = overline(u)$ verrà trasformato nell'arco di curva
$ cases(
  x(overline(u), v),
  y(overline(u), v)
) $

lo stesso vale fissando $v = overline(v)$

Dividendo la superficie in tante sezioni rispetto a $u$ e $v$ ottengo una partizione le cui componenti sono delimitate dai quadrilateri i cui vertici sono
+ $q_1 = (x(overline(u), overline(v)), y(overline(u), overline(v)))$
+ $q_2 = (x(overline(u) + Delta u, overline(v)), y(overline(u) + Delta u, overline(v)))$
+ $q_3 = (x(overline(u) + Delta u, overline(v) + Delta v), y(overline(u) + Delta u, overline(v) + Delta v))$
+ $q_4 = (x(overline(u), overline(v) + Delta v), y(overline(u), overline(v) + Delta v))$

Approssimo l'area con il parallelogramma delimitato da $arrow(r_v) Delta v$ e $arrow(r_u) Delta u$

L'approssimazione dell'area è quindi
$ lim_(max "diam"(D_i) -> 0) sum_(i=1)^N(delta) f(P_i) m D_i $

$ m Delta_i = abs(det underbrace(macros.mat(
  x_u, x_v;
  y_u, y_v
), "matrice jacobiana della trasformata" (x, y) -> (u, v)) Delta u Delta v) $

Quindi l'integrale

$ integral.double_D f(x, y) d x d y equiv integral.double_Omega f(u, v) abs(det macros.mat(
  x_u, x_v;
  y_u, y_v
)) d u d v $

== Calcolare l'area del disco di raggio R
$ D = {(x, y)|x^2 + y^2 <= R} $
$ "Area"(D) = integral.double_D d x d y $
passando in coordinate polari
$ = integral.double_Omega abs(det macros.mat(x_r, x_theta; y_r, y_theta)) d theta d r $
$ = integral_0^(2 pi) d theta integral_0^R abs(det macros.mat(x_r, x_theta; y_r, y_theta)) d r $
$ x(r, theta) = r cos theta, y(r, theta) = r sin theta $
quindi il determinante risulta essere
$ det macros.mat(cos theta, -r sin theta; sin theta, R cos theta) = r cos^2 theta + r sin^2 theta = r $
l'integrale risulta essere quindi

$ integral_0^(2 pi)d theta integral_0^r r d r = integral_0^(2 pi) r^2/2 d theta
= pi r^2 $

== Cambio di variabili per integrali multipli
$ integral ... integral_D f(x_1, ..., x_n) d x_1 ... d x_n $
$y_i (x_1, ..., x_n)$ sono le nuove coordinate

...

== Coordinate cilindriche
$x = r cos theta$,
$y = r sin theta$,
$z = z$, $r >= 0, 0 <= theta <= 2 pi$

$ det J = det macros.mat(
  cos theta, -r sin theta, 0;
  sin theta, r cos theta, 0;
  0, 0, 1
) = r cos^2 theta + r sin^2 theta = r $

*esempio*

$ integral.triple_D x y z d x d y d z $
$D$ è la regione di spazio delimitata dal grafico della funzione $x^2 + y^2$ e dai piani $x=0, y=0, z= 1$

in coordinate cilindriche

$ integral_0^(pi/2) d theta integral_0^1 d r integral_(r^2)^1 z r^3 sin theta cos theta d z $

== Coordinate sferiche
$x = r cos theta cos phi, y = r cos theta sin phi, z = r sin phi$
con $r >= 0, - pi/2 <= theta <= pi/2, 0 <= phi <= 2 pi$

$ abs(det J) = abs(det macros.mat(
  cos theta cos phi, - r sin theta cos phi, -r cos theta sin phi;
  cos theta sin phi, -r sin theta sin phi, r cos theta cos phi;
  sin phi, r cos phi, 0
)) = abs(- r^2 cos theta) = r^2 cos theta $

$ integral.triple_D f(x, y, z) d x d y d z = integral.triple_Omega f(r cos theta cos phi, r cos theta sin phi, r sin theta) r^2 cos theta d r d theta d phi $

*esempio*
$ D = {(x, y, z) | x^2 + y^2 + z^2 = R^2} $
$ "Vol"(D) = integral.triple_D 1 d x d y d z  = integral.triple_Omega r^2 cos theta d r d theta d phi $
$ = integral_0^R r^2 d r integral_0^(2 pi) d phi integral_(-pi/2)^(pi/2) cos theta d theta $
$ = [r^3/3]_0^R [phi]_0^(2 pi) [sin theta]_(-pi/2)^(pi/2) = R^3/3 2 pi 2 = 4/3 pi R^3 $