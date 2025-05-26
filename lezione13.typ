#import "macros.typ"

= Formula di Green

$ integral.cont_C arrow(F) dot arrow(t) d cal(l) = integral.double_sigma ( (diff F_2)/(diff x) - (diff F_1)/(diff y)) d x d y $

Dove $arrow(F) = F_1 (x, y) arrow(e_1) + F_2 (x, y) arrow(e_2)$, inoltre $C$ deve essere la frontiera di $sigma$ percorsa in modo che il dominio si trovi sulla sinistra.

== Diversi tipi di regione
+ Regione di tipo I
  - $a <= x <= b$
  - $y_1 (x) <= y <= y_2 (x)$

+ Regione di tipo II
  - $x_1 (y) <= x <= x_2 (y)$
  - $a <= y <= b$

_def(Dominio semplice)_ Un dominio $G$ si dice semplice se è l'unione di un numero finito di regioni di tipo I e simultaneamente è l'unione di un numero finito di regioni di tipo II. Le regioni di tipo I possono avere punti in comune al più sulla loro frontiera, lo stesso vale per le regioni di tipo II.

== Dimostrazione
$ integral.cont_C arrow(F) dot arrow(t) d cal(l) = integral.cont_C F_1 (x, y) d x + F_2 (x, y) d y $
+ $ integral.cont_C F_1 d x = - integral.double_sigma (diff F_1)/(diff y) d x d y $
+ $ integral.cont_C F_2 d y = integral.double_sigma (diff F_1)/(diff x) d x d y $

dimostrazione della prima identità (la seconda è analoga)

$ sigma = union_(i=1)^n sigma_i $

vogliamo dimostrare che
$ integral.cont_C_i F_1 d x = - integral.double_sigma_i (diff F_1)/(diff y) d d y $

che dimostrerebbe
$ sum_(i=1)^n integral.cont_C_i F_1 d x = - sum_(i=1)^n integral.double_sigma_i (diff F_1)/(diff y) d d y $

che è equivalente a
$ integral.cont_C F_1 d x = - integral.double_sigma (diff F_1)/(diff y) d x d y $

Considero $G_i$ regioni di tipo I, ogni regione può essere divisa in 4 curve lungo la sua frontiera:

$ integral_C_1 F_1 (x_1 (t), y_1 (t)) (d x)/(d t) d t + cancel(integral_C_2 F_1 (x_2 (t), y_2 (t)) (d x)/(d t) d t) + integral_C_3 F_1 (x_3 (t), y_3 (t)) (d x)/(d t) d t + cancel(integral_C_4 F_1 (x_4 (t), y_4 (t)) (d x)/(d t) d t) $

La curva I sarà del tipo: $x(t) = t, y(t) = y_1 (t)$.

La curva III sarà del tipo: $x(t) = t, y(t) = y_2 (t)$.

con $t in [a, b]$

$ = integral_a^b F_1 (t, y_1 (t)) d t - integral_a^b F_1 (t, y_2 (t)) d t $

$ = integral_a^b (F_1 (t, y_1 (t)) -   F_1 (t, y_2 (t))) d t = - integral_a^b (F_1 (t, y_2 (t)) -   F_1 (t, y_1 (t))) d t $

$ = - integral_a^b d t integral_(y_1 (t))^(y_2 (t)) (diff F_1)/(diff y) d y $

$ = - integral.double_sigma (diff F_1)/(diff y) d t d y $

== Dimostrazione del #link(<pointcarre>, "Lemma di Pointcarré") <pointcarreproof>

*TODO*