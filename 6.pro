domains 
	file = dataFile
	Str = string
	
predicates
	nondeterm readLine(Str).
	nondeterm writeLine(Str).
	
	nondeterm strlen(string,integer).
	nondeterm lastchar(string,char).
	nondeterm init(string,string).
	nondeterm ispal(string).
	
clauses
	readLine(Str):- openread(dataFile, "D:/VIP/BIN/WIN/32/input.txt"),						
	readdevice(dataFile),
	readln(Str),
	closefile(dataFile).
	
	writeLine(Str):- openWrite(dataFile, "D:/VIP/BIN/WIN/32/output.txt"),
	writedevice(dataFile),
	write(Str),
	closefile(dataFile).
	
	strlen("",0).
	strlen(S,N) :- frontchar(S,_,RS), strlen(RS,N1), N=N1+1.
 
	lastchar(S,C) :- strlen(S,1), frontchar(S,C,"").
	lastchar(S,C) :- strlen(S,L),L>1, frontchar(S,_,RS), lastchar(RS,C).
 
	init(S,"") :- strlen(S,1).
	init(S,R) :- frontchar(S,B,RS),init(RS,Q), frontchar(R,B,Q).
 
	ispal(S) :- strlen(S,L), L<=1.
	ispal(S) :- frontchar(S,B,RS), lastchar(RS,E), B=E, init(RS,Q), ispal(Q).
	ispal(_) :- fail.
	
goal
	readLine(Str), writeLine("false"),  ispal(Str), writeLine("true").