:- initialization main.

getFromPos([H|T],X,C):- X == 0 -> C = H ; Z is X - 1, getFromPos(T,Z,C).

decode([],[],''):-!.
decode([NH|NT],[SH|ST],Word):- decode(NT,ST,Z), getFromPos(SH,NH,Y), atom_concat(Y, Z, Word).



main:-
	read_line_to_codes(user_input,A2),
	string_to_atom(A2,A1),
	atom_number(A1,Le1),

	read_line_to_codes(user_input,A3),
	string_to_atom(A3,A4),
	atom_number(A4,Le2),

	read_line_to_codes(user_input,A5),
	string_to_atom(A5,A6),
	atom_number(A6,Le3),
	
	read_line_to_codes(user_input,A7),
	string_to_atom(A7,A8),
	atom_number(A8,Le4),
	

	read_line_to_codes(user_input,B1),
	string_to_atom(B1,S1),
	atom_chars(S1,Str1),

	read_line_to_codes(user_input,B2),
	string_to_atom(B2,S2),
	atom_chars(S2,Str2),

	read_line_to_codes(user_input,B3),
	string_to_atom(B3,S3),
	atom_chars(S3,Str3),

	read_line_to_codes(user_input,B4),
	string_to_atom(B4,S4),
	atom_chars(S4,Str4),

	decode([Le1,Le2,Le3,Le4], [Str1,Str2,Str3,Str4], Decoded),

	write(Decoded).
