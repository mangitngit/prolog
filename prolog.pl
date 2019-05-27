/* Program 1 */
posiada(jan,auto).
posiada(ewa,radio).
posiada(tomasz,wideo).
posiada(monika,auto).
posiada(jan,radio).

ma_dostep(monika,wideo).
ma_dostep(monika,radio).
ma_dostep(monika,ksiazki).

lubi(ewa,radio).
lubi(monika,ksiazki).
lubi(tomasz,wideo).
lubi(ewa,wideo).
lubi(_,auto).

korzysta(ewa,plyty).
korzysta(X,Y):- posiada(X,Y), lubi(X,Y).
korzysta(X,Y):- ma_dostep(X,Y), lubi(X,Y).

/* Program 2 */
magazyn(ksiazka('Sienkiewicz H.','Potop'),60,17).
magazyn(ksiazka('Blixen K','Pozegnanie z Afryka'),41,30).
magazyn(plyta(klasyczna('Bruckner A.','Symfonia nr 9','Jochum E.')),40,40).
magazyn(plyta(rozrywkowa('Cat Stevens','Tea for the tillerman')),45,5).
magazyn(pilka,8,100).

/* Program 2 */

dolacz_element(X,Y,[X|Y]).

p(a).
p(b).
p(c).
p(d).

silnia(1,1).
silnia(N,Y):-N>1,N1 is N-1,silnia(N1,W),Y is W*N.

element(X,[X|_]).
element(X,[_|O]):-element(X,O).

not_element(_,[]).
not_element(X,[G|O]):-X\=G,not_element(X,O).
