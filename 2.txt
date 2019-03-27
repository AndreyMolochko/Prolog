predicates 
	name(string).
	nondeterm shoes(string).
	nondeterm dress(string).
	nondeterm is(string, string, string).
	nondeterm ans(string, string, string, string, string, string, string, string, string).
clauses
	name(anja).
	name(valja).
	name(natasha).
	dress(white).
	dress(green).
	dress(blue).
	shoes(white).
	shoes(green).
	shoes(blue).
	
	is(X,Y,Z):-name(X), dress(Y), shoes(Z), X=anja, Y=Z.
	is(X,Y,Z):-name(X), dress(Y), shoes(Z), X=valja, not(Y=white), not(Z=white), Y<>Z.
	is(X,Y,Z):-name(X), dress(Y), shoes(Z), X=natasha, Z=green, Y<>Z.
	
	ans(X1,Y1,Z1,X2,Y2,Z2,X3,Y3,Z3):- X1=anja,is(X1,Y1,Z1), X2=valja,is(X2,Y2,Z2), X3=natasha,is(X3,Y3,Z3),
	Y1<>Y2, Y2<>Y3, Y1<>Y3,Z1<>Z2, Z2<>Z3, Z1<>Z3.
	
goal
	ans(X1,Y1,Z1,X2,Y2,Z2,X3,Y3,Z3),
	write(X1," dress- ",Y1," shoes- ",Z1),nl,
	write(X2," dress- ",Y2," shoes- ",Z2),nl,
	write(X3," dress- ",Y3," shoes- ",Z3),nl.