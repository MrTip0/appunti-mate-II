#import "macros.typ"

= Formula di Gauss
$ integral.double_S arrow(F) dot arrow(n) d S = integral.triple_V "div" arrow(F) d v $

Dove S è la frontiera di $V$ e $arrow(n)$ è la normale uscente.

#columns(3, [
  *Regione di tipo I*

  $(x, y) in D$

  $z_1 (x, y) <= z <= z_2 (x, y)$

  con $D$ la proiezione del volume lungo il piano $x y$

  #colbreak()
  *Regione di tipo II*

  $(x, z) in D'$

  $y_1 (x, z) <= y <= y_2 (x, z)$

  con $D'$ la proiezione del volume lungo il piano $x z$


  #colbreak()
  *Regione di tipo III*

  $(y, z) in D''$

  $x_1 (y, z) <= x <= x_2 (y, z)$

  con $D''$ la proiezione del volume lungo il piano $y z$
])

== Dimostrazione
Assumendo che $V$ sia l'unione di un numero finito di regioni di tipo I aventi punti in comune al più sulla frontiera e simultaneamente sia l'unione di un numero finito di regioni di tipo II e di tipo III

$ arrow(F) = F_1 (x, y, z) arrow(e_1) + F_2 (x, y, z) arrow(e_2) + F_3 (x, y, z) arrow(e_3) $

$ integral.double_S arrow(F) dot arrow(n) = integral.double_S F_1 arrow(e_1) dot arrow(n) d S + integral.double_S F_2 arrow(e_2) dot arrow(n) d S + integral.double_S F_3 arrow(e_3) dot arrow(n) d S $

per dimostrare la formula è quindi sufficiente dimostrare che

$ integral.double_S F_1 arrow(e_1) dot arrow(n) d S = integral.triple_V (diff F_1)/(diff x) d V $
$ integral.double_S F_2 arrow(e_2) dot arrow(n) d S = integral.triple_V (diff F_2)/(diff y) d V $
$ integral.double_S F_3 arrow(e_3) dot arrow(n) d S = integral.triple_V (diff F_3)/(diff z) d V $

Dimostriamo solo la terza
$ integral.double_S F_3 arrow(e_3) dot arrow(n) d S = sum_(i = 1)^n integral.double_S_i F_3 arrow(e_3) dot arrow(n) d S $


$ integral.double_S F_3 arrow(e_3) dot arrow(n) d S = integral.double_S_1 F_3 arrow(e_3) dot arrow(n) d S + integral.double_S_2 F_3 arrow(e_3) dot arrow(n) d S + cancel(integral.double_S_3 F_3 arrow(e_3) dot arrow(n) d S)(arrow(e_3) "è ortogonale a" arrow(n)) $
$ integral.double_S_1 F_3 arrow(e_3) dot arrow(n) d S = plus.minus integral.double_D F_3 (x, y, z_1 (x, y)) arrow(e_3) dot (arrow(r_x) times arrow(r_y)) d x d y $
$ integral.double_S_2 F_3 arrow(e_3) dot arrow(n) d S = plus.minus integral.double_D F_3 (x, y, z_2 (x, y)) arrow(e_3) dot (arrow(r_x) times arrow(r_y)) d x d y $

$ arrow(r_x) times arrow(r_y) = macros.vec(-z_(1 "/" 2)(x, y)_x, -z_(1 "/" 2)(x, y)_y, 1) => arrow(e_1) dot (arrow(r_x) times arrow(r_y)) = 1 $

$ integral.double_S_1 F_3 arrow(e_3) dot arrow(n) d S = - integral.double_D F_3 (x, y, z_1 (x, y)) d x d y $
$ integral.double_S_2 F_3 arrow(e_3) dot arrow(n) d S = + integral.double_D F_3 (x, y, z_2 (x, y)) d x d y $

$ integral.double_S F_3 arrow(e_3) dot arrow(n) d S = integral.double_S_1 F_3 arrow(e_3) dot arrow(n) d S + integral.double_S_2 F_3 arrow(e_3) dot arrow(n) d S $
$ = integral.double_D [F_3 (x, y, z_2 (x, y)) - F_3 (x, y, z_1 (x, y))] d x d y $

$ = integral.double_D d x d y integral_(z_1 (x, y))^(z_2 (x, y)) (diff F_3)/(diff z) d z = integral.triple_V (diff F_3)/(diff z) d x d y d z $

$ = sum_(i = 1)^n integral.triple_V_i (diff F_3)/(diff z) d V = integral.triple_V (diff F_3)/(diff z) d V $