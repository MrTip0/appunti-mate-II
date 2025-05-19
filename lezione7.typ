#include "macros.typ"

= Massimi e minimi assoluti
== Definizioni
Sia $D$ un insieme.

- _def(Punto interno)_ $P in D$ si dice punto interno a $D$ se esiste un suo intorno composto solo da punti appartenenti a $D$.
- _def(Punto esterno)_ $P in.not D$ si dice punto esterno a $D$ se esiste un suo intorno composto solo elementi non appartenenti a $D$.
- _def(Punto di frontiera)_ $P$ si dice punto di frontiera se tutti i suoi intorni contengono sia punti appartenenti che non appartenenti a $D$.

- $D$ si dice aperto se contiene solo punti interni.
- $D$ si dice chiuso se contiene tutti i suoi punti di frontiera.

- $D$ si dice limitato se esiste un intorno che lo racchiude completamente.

- $D$ si dice compatto se è chiuso e limitato.


== Teorema di Weistrass
Sia $f: D subset RR^n --> RR $ una funzione, se $D$ è un insieme compatto ed $f$ è continua lungo $D$ allora $f$ ammette massimi e minimi sul dominio $D$.