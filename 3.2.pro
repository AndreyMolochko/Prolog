predicates
	nondeterm isInCircle(real, real)
	nondeterm is4thQuarter(real, real)
	nondeterm is2ndQuarter(real, real)
	nondeterm non(real, real)
	nondeterm action
clauses
 	isInCircle(X, Y):- ((X*X) + (Y*Y)) <= 4.
	is4thQuarter(X, Y):- X <= 0, X>=-2,Y>=0, Y<=2.
	is2ndQuarter(X, Y):- X>=0,X<=2,Y>=-2,Y<=0.
	non(X, Y):-is4thQuarter(X, Y);is2ndQuarter(X, Y).
	
	action:-write("Input X = "), readint(X), write("Input Y = "), readint(Y), isInCircle(X, Y), non(X, Y), write("It is inside!!!"), nl. 
	action:-write("It isn't inside!!!"), nl.
	
goal
	action.