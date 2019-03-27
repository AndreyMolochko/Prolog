predicates
  line(integer L).
  text1.
  text2.
  text3.
 clauses
  line(0):-!.
  line(L):-write('*'),K=L-1,line(K).
  text1:-write("\n\t Molochko Andrey Gennadievich").
  text2:-write("\n Age:\t\t 19 years"), 
  write("\n Gender:\t\t Male"), 
  write("\n Job:\t\t 3rd year Yanka Kupala State University student").
  text3:-write("\n Group:\t\t 161.1.2"),
  write("\n Course:\t\t 3"),
  write("\n Faculty:\t\t Faculty of Math and Programming"),
  write("\n Speciality:\t SIT\n").
  
goal
  Lk = 100, 
  line(Lk),
  text1,
  nl,
  line(Lk),
  text2,
  text3,
  line(Lk),
  nl.