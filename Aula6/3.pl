:- initialization main.


insere(X, L, [X|L]).

readInt(X):- 
	read_line_to_codes(user_input,A2),
	string_to_atom(A2,A1),
	atom_number(A1,X).

readXIntToList([],0).

readXIntToList(List, Qtd):- readInt(Z), 
	insere(Z, P, List),
	K is Qtd - 1,
	readXIntToList(P,K). 

sumEachList([A],[B],Sums):- C is A + B, 
	Sums = [C].

sumEachList([FH|FT],[SH|ST],Sums):- K is FH + SH, 
	append([K], P, Sums), 
	sumEachList(FT,ST,P).

printEach([]).
printEach([H|T]):- write(H),nl, printEach(T).


main:-

	readInt(Amount),
	readXIntToList(FirstList,Amount),
	readXIntToList(SecondList,Amount),
	sumEachList(FirstList,SecondList,Results),
	printEach(Results).