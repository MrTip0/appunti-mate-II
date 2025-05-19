= Integrali doppi
== Misura di jordan
Dovendo calcolare l'area di una regione di piano arbitraria si può usare come approssimazione superiore tute le unità di piano che condividono almeno un punto con la regione, o come approssimazione superiore tutte le unità che sono interamente contenute all'interno del piano.

#figure(image("assets/misura-jordan.png"), caption: "In blu la regione di cui calcolare l'area, in verde l'approssimazione inferiore e in rosso la superiore.")

_def_(Misura di Jordan) Si dice che $Omega$ è misurabile se 
$ lim_(n-> infinity) m_"int" (Omega) = lim_(n -> infinity) m_"ext"(Omega) $
e questo numero si chiama misura di Jordan o area di $Omega$
$ m Omega $

dove $n$ è il numero di suddivisioni del piano

nota che essendo le successioni crescenti e limitate superiormente o decrescenti e limitate inferiormente allora il limite esiste per entrambe.


Sia $f: RR^2 -> RR$ una funzione continua e limitata e sia $D$ una regione misurabile di $RR^2$, considero una suddivisione $g$ di $D$
e $m$ sottoregioni misurabili t.c. $D = union_(i=1)^N(rho) D_i$.

Scelgo un punto $P_i$ in ogni sottoregione, definisco somma integrale Riemann corrispondente alla suddivisione $rho$ e alla scelta $(P_1, ..., P_(N(rho)))$ il numero
$ sum_(i=1)^N(rho) f(P_i) dot m dot D_i $

Si chiama diametro di un insieme $Omega$ l'estremo superiore delle distanze di coppie di punti.

il diametro di $Omega$ è $sup{d(x, y)|x,y in Omega}$

== Definizione integrale doppio

il limite $ sum_(i=1)^N(rho) f(P_i) dot m dot D_i $ per max diam$(D_i) -> 0$ esiste e non dipende dalla scelta dei punti e si chiama integrale doppio di $f$ esteso a $D$.

$ integral.double_D f(x,y) d x d y $

Nota che

$ m D = integral.double_D 1 d x d y $

=== Proprietà
+ *Linearità:* $integral ... integral_D [c_1 f_1 + c_2 f_2] d x_1 ... d x_n = integral ... integral_D c_1 f_1 d x_1 ... d x_n + integral ... integral_D c_2 f_2 d x_1 ... d x_n $
+ *Additività rispetto al dominio: * sia il dominio $D$ e ${D_1, D_2}$ un suo partizionamento allora $integral ... integral_D f d x_1 d x_n = integral ... integral_D_1 f d x_1 d x_n + integral ... integral_D_2 f d x_1 d x_n$

=== Teorema della media
Se f è una funzione continua sulla chiusura di un dominio connesso per archi $D$ allora
$ exists arrow(x_0) in D "t.c." f(arrow(x_0)) = 1/(m D) integral ... integral_D f d x_1 ... d x_n $

== Come svolgere un integrale doppio

Sia $D = {(x, y) | a <= x <= b and c <= y <= d}$

$ integral.double_D f(x, y) d x d y = integral_c^d (integral_a^b f(x, y) d x) d y $

Di fatto quello che fai è trovare in primo luogo una funzione rispetto ad $y$ che restituisce l'area sotto funzione che si trova tra a e b lungo la coordinata $x$ e a $y$ lungo la coordinata $y$, successivamente integrando lungo la seconda coordinata si trova il volume della regione $D$.

*Nota* è accettabile fare anche il contrario quindi

$ integral.double_D f(x, y) d x d y = integral_a^b (integral_c^d f(x, y) d y) d x $