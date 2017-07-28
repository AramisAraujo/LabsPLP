:- initialization main.

main:- read_line_to_codes(user_input, VeiculoTipo),
string_to_atom(VeiculoTipo, X),
 nl, preco(X).


preco(X):- X == 'moto', write(5); 
X == 'carro', write(10); 
X == 'largo', write(30).
