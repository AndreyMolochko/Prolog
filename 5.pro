domains
	list=integer*
	
predicates
	print(list)
	read(list)
	action(list, list)
	
clauses
	print([]):-!.
	print([HEAD|TAIL]):-write(HEAD, ' '), print(TAIL).
	read([HEAD|TAIL]):-write("Input element of list = "), readint(HEAD), !, read(TAIL).
	read([]):-!.
	action([HEAD1|TAIL1], [HEAD2|TAIL2]):- HEAD2 = HEAD1 + 1, action(TAIL1, TAIL2).
	action([], []):-!.
	
goal
	read(LIST1), action(LIST1, LIST2), nl, print(LIST2),nl, nl.