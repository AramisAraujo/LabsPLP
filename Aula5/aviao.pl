estabiliza(X,Y,Diff) :- X =:= Y -> write('OK'); 
readAltura(Z), diff(Y,Z,LDiff), (LDiff >= Diff) -> write('PERIGO'), nl, estabiliza(X,Z,LDiff);
write('ADEQUADO'), nl, estabiliza(X,Z,LDiff).


diff(A,B,C) :- C is abs(A-B).

readAltura(X) :- read_line_to_codes(user_input,A2), string_to_atom(A2,A1), atom_number(A1,X).

:- initialization main.

main :-
	readAltura(Ideal),

	readAltura(Inicial),

	diff(Inicial,Ideal,Diff),

	estabiliza(Ideal,Inicial,Diff).


//*ler, calc diff, tenta estabilizar