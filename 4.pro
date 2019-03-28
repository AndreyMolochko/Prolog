domains
	Name = symbol
	MaxLoad, MinLoad, MaxSpeed, MinSpeed, Load, Speed = real
 predicates
	nondeterm machine(Name, MaxLoad, MaxSpeed)
	nondeterm get
	
clauses
	machine("BMW", 15, 700).
	machine("Chaika", 20, 500).
	machine("Ostrovec", 25, 400).
	machine("Samsung", 30, 300).
	machine("Stiralka",35, 200).
	
	get:-write("Input max load = "), readreal(MaxLoad),
		write("Input min load = "), readreal(MinLoad), nl,
		write("Input max speed = "), readreal(MaxSpeed),
		write("Input min speed = "), readreal(MinSpeed),nl,
		machine(Name, Load, Speed), 
		MaxLoad >= Load, MinLoad <= Load, MaxSpeed >= Speed, MinSpeed <= Speed, nl,
		writef("Name= %-1, Load= %-1 Speed= %-1\n",Name,Load, Speed),fail;true.
		
goal
 get.