%Zad.1.
%zakres(4,9,L).

zakres(X,X,[X]).
zakres(P,K,[G|O]):-P1 is P+1,K>P,G is P,zakres(P1,K,O).

%Zad.2.
%kompresuj([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).

kompresuj([],[]).
kompresuj([X],[X]).
kompresuj([X,X|X1],Z):-kompresuj([X|X1],Z).
kompresuj([X,Y|Y1],[X|Z]):-X\=Y,kompresuj([Y|Y1],Z).

%Zad.3.
%odwroc([1,2,3,4,5],L).

koniec(X,[],[X]).
koniec(X,[G|O],[G|O1]):-koniec(X,O,O1).

odwroc([X],[X]).
odwroc([G|O],L):-odwroc(O,L1),koniec(G,L1,L).

%Zad.4.
%przodek(jan, maciej).

syn(adam,jan).	%adam jest synem jana
syn(krzysztof,piotr).
syn(norbert,adam).
syn(krzysztof,maria).
syn(adam,ewa).
syn(maciej,monika).
corka(maria,ewa).
corka(monika,halina).
corka(maria,jan).
corka(monika,adam).
corka(halina,edward).
plec(edward,m).
plec(jan,m).
plec(piotr,m).

przodek(X,Y):-syn(Y,X);corka(Y,X).
przodek(X,Y):-syn(Y,Z),przodek(X,Z).
przodek(X,Y):-corka(Y,Z),przodek(X,Z).

%Zad.5.
%liczba_przodkow(maciej, N).

liczba_przodkow(X,N):-findall(Y,przodek(Y,X),L),length(L,N).




