:- initialization main.

	countIn(C,[],0):- !.
	countIn(C,[H|T],X):- C == H -> countIn(C,T,P), X is P + 1; countIn(C,T,P), X is P.

main:-

	read_line_to_codes(user_input,A1),
	string_to_atom(A1,Char),
	
	read_line_to_codes(user_input,B1),
	string_to_atom(B1,Str1),
	atom_chars(Str1,String),	


	countIn(Char,String,Resp),
	write(Resp).






