predicates
	%Variant 9
	%Создайте предикат, который в зависимости от того введена ли открытая скобка или закрытая, напечатать 
	%"открытая круглая скобка" или "закрытая фигурная скобка". (Учитывать круглые, квадратные, фигурны скобки).
	nondeterm open(char)
	nondeterm close(char)
	nondeterm roundd(char)
	nondeterm square(char)
	nondeterm figure(char)
	nondeterm openOrClose(char)
	nondeterm roundOrSquareOrFigure(char)
	nondeterm foo(char)

clauses
	open(CH):-CH='(';CH='[';CH='{'.
	close(CH):-CH=')';CH=']';CH='}'.
	roundd(CH):-CH='(';CH=')'.
	square(CH):-CH='[';CH=']'.
	figure(CH):-CH='{';CH='}'.
	openOrClose(CH):-open(CH), write(" open ").
	openOrClose(CH):-close(CH), write(" close ").	
	roundOrSquareOrFigure(CH):-roundd(CH), write(" round ").
	roundOrSquareOrFigure(CH):-square(CH), write(" square ").
	roundOrSquareOrFigure(CH):-figure(CH), write(" figure ").
	
	foo(CH):- write("You input"), openOrClose(CH),roundOrSquareOrFigure(CH), write(" bracket ").
	
	
goal
	nl, write("Input a bracket = "), readchar(CH), nl, foo(CH), nl, nl.