predicates
	nondeterm action(integer, integer, integer)
	nondeterm q
	nondeterm non(integer, integer, integer)
clauses
 	non(A,B,C):- (A mod 2) <> 0; (B mod 2) <> 0; (C mod 2) <> 0.
 	action(A, B, C):- (A mod 2) = 0, (B mod 2) = 0, (C mod 2) = 0, write("we have!!!").
	action(A, B, C):- non(A,B,C), write("we don't have!!!").
	
	
	q:-write("Input 1-st number = "), readint(X), write("Input 2-nd number = "), readint(Y), write("Input 3-rd number = "), readint(Z),
	action(X, Y, Z).
	
goal
	q.