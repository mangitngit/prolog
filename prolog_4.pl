dolacz(X,[],[X]).
dolacz(X,[G|O],[G|O1]):-dolacz(X,O,O1).

usun(X,[X|O],O).
usun(X,[G|O],[G|O1]):-usun(X,O,O1).

dlugosc([],0).
dlugosc([_|O],N):-dlugosc(O,N1),N is N1+1.

indeks(1,[X|_],X).
indeks(K,[_|O],X):-K>1,K1 is K-1,indeks(K1,O,X).

ostatni([X],X).
ostatni([_|O],N):-ostatni(O,N).


duplikuj([],[]).
duplikuj([X|X1],[X,X|Y]):-duplikuj(X1,Y).
