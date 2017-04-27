
% true si Valerie peut jouer

x_canplay(Board) :- Board = [b,_,_,_,b,_,_,_,_,_,_,_,_,_,_,_].
x_canplay(Board) :- Board = [_,b,_,_,_,b,_,_,_,_,_,_,_,_,_,_].
x_canplay(Board) :- Board = [_,_,b,_,_,_,b,_,_,_,_,_,_,_,_,_].
x_canplay(Board) :- Board = [_,_,_,b,_,_,_,b,_,_,_,_,_,_,_,_].
x_canplay(Board) :- Board = [_,_,_,_,b,_,_,_,b,_,_,_,_,_,_,_].
x_canplay(Board) :- Board = [_,_,_,_,_,b,_,_,_,b,_,_,_,_,_,_].
x_canplay(Board) :- Board = [_,_,_,_,_,_,b,_,_,_,b,_,_,_,_,_].
x_canplay(Board) :- Board = [_,_,_,_,_,_,_,b,_,_,_,b,_,_,_,_].
x_canplay(Board) :- Board = [_,_,_,_,_,_,_,_,b,_,_,_,b,_,_,_].
x_canplay(Board) :- Board = [_,_,_,_,_,_,_,_,_,b,_,_,_,b,_,_].
x_canplay(Board) :- Board = [_,_,_,_,_,_,_,_,_,_,b,_,_,_,b,_].
x_canplay(Board) :- Board = [_,_,_,_,_,_,_,_,_,_,_,b,_,_,_,b].

% true si Henri peut jouer

o_canplay(Board) :- Board = [b,b,_,_,_,_,_,_,_,_,_,_,_,_,_,_].
o_canplay(Board) :- Board = [_,b,b,_,_,_,_,_,_,_,_,_,_,_,_,_].
o_canplay(Board) :- Board = [_,_,b,b,_,_,_,_,_,_,_,_,_,_,_,_].
o_canplay(Board) :- Board = [_,_,_,_,b,b,_,_,_,_,_,_,_,_,_,_].
o_canplay(Board) :- Board = [_,_,_,_,_,b,b,_,_,_,_,_,_,_,_,_].
o_canplay(Board) :- Board = [_,_,_,_,_,_,b,b,_,_,_,_,_,_,_,_].
o_canplay(Board) :- Board = [_,_,_,_,_,_,_,_,b,b,_,_,_,_,_,_].
o_canplay(Board) :- Board = [_,_,_,_,_,_,_,_,_,b,b,_,_,_,_,_].
o_canplay(Board) :- Board = [_,_,_,_,_,_,_,_,_,_,b,b,_,_,_,_].
o_canplay(Board) :- Board = [_,_,_,_,_,_,_,_,_,_,_,_,b,b,_,_].
o_canplay(Board) :- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,b,b,_].
o_canplay(Board) :- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,b,b].

% true si Henri ne peut pas jouer <=> Valerie a gagné et inversement

xwin(Board) :- not(o_canplay(Board)).
owin(Board) :- not(x_canplay(Board)).

% afficher la partie

display([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P]) :- 
	write([A,B,C,D]),
	nl,
	write([E,F,G,H]),
	nl,
	write([I,J,K,L]),
	nl,write([M,N,O,P]),
	nl,nl.

% x joue

xmove([b,B,C,D,b,F,G,H,I,J,K,L,M,N,O,P], 1, [x,B,C,D,x,F,G,H,I,J,K,L,M,N,O,P]).
xmove([A,b,C,D,E,b,G,H,I,J,K,L,M,N,O,P], 2, [A,x,C,D,E,x,G,H,I,J,K,L,M,N,O,P]).
xmove([A,B,b,D,E,F,b,H,I,J,K,L,M,N,O,P], 3, [A,B,x,D,E,F,x,H,I,J,K,L,M,N,O,P]).
xmove([A,B,C,b,E,F,G,b,I,J,K,L,M,N,O,P], 4, [A,B,C,x,E,F,G,x,I,J,K,L,M,N,O,P]).
xmove([A,B,C,D,b,F,G,H,b,J,K,L,M,N,O,P], 5, [A,B,C,D,x,F,G,H,x,J,K,L,M,N,O,P]).
xmove([A,B,C,D,E,b,G,H,I,b,K,L,M,N,O,P], 6, [A,B,C,D,E,x,G,H,I,x,K,L,M,N,O,P]).
xmove([A,B,C,D,E,F,b,H,I,J,b,L,M,N,O,P], 7, [A,B,C,D,E,F,x,H,I,J,x,L,M,N,O,P]).
xmove([A,B,C,D,E,F,G,b,I,J,K,b,M,N,O,P], 8, [A,B,C,D,E,F,G,x,I,J,K,x,M,N,O,P]).
xmove([A,B,C,D,E,F,G,H,b,J,K,L,b,N,O,P], 9, [A,B,C,D,E,F,G,H,x,J,K,L,x,N,O,P]).
xmove([A,B,C,D,E,F,G,H,I,b,K,L,M,b,O,P], 10, [A,B,C,D,E,F,G,H,I,x,K,L,M,x,O,P]).
xmove([A,B,C,D,E,F,G,H,I,J,b,L,M,N,b,P], 11, [A,B,C,D,E,F,G,H,I,J,x,L,M,N,x,P]).
xmove([A,B,C,D,E,F,G,H,I,J,K,b,M,N,O,b], 12, [A,B,C,D,E,F,G,H,I,J,K,x,M,N,O,x]).
xmove(Board, S, Board) :- write('Illegal move. Value = ~w', [S]), nl.

% o joue

omove([b,b,C,D,E,F,G,H,I,J,K,L,M,N,O,P], 1, [o,o,C,D,E,F,G,H,I,J,K,L,M,N,O,P]).
omove([A,b,b,D,E,F,G,H,I,J,K,L,M,N,O,P], 2, [A,o,o,D,E,F,G,H,I,J,K,L,M,N,O,P]).
omove([A,B,b,b,E,F,G,H,I,J,K,L,M,N,O,P], 3, [A,B,o,o,E,F,G,H,I,J,K,L,M,N,O,P]).
omove([A,B,C,D,b,b,G,H,I,J,K,L,M,N,O,P], 5, [A,B,C,D,o,o,G,H,I,J,K,L,M,N,O,P]).
omove([A,B,C,D,E,b,b,H,I,J,K,L,M,N,O,P], 6, [A,B,C,D,E,o,o,H,I,J,K,L,M,N,O,P]).
omove([A,B,C,D,E,F,b,b,I,J,K,L,M,N,O,P], 7, [A,B,C,D,E,F,o,o,I,J,K,L,M,N,O,P]).
omove([A,B,C,D,E,F,G,H,b,b,K,L,M,N,O,P], 9, [A,B,C,D,E,F,G,H,o,o,K,L,M,N,O,P]).
omove([A,B,C,D,E,F,G,H,I,b,b,L,M,N,O,P], 10, [A,B,C,D,E,F,G,H,I,o,o,L,M,N,O,P]).
omove([A,B,C,D,E,F,G,H,I,J,b,b,M,N,O,P], 11, [A,B,C,D,E,F,G,H,I,J,o,o,M,N,O,P]).
omove([A,B,C,D,E,F,G,H,I,J,K,L,b,b,O,P], 13, [A,B,C,D,E,F,G,H,I,J,K,L,o,o,O,P]).
omove([A,B,C,D,E,F,G,H,I,J,K,L,M,b,b,P], 14, [A,B,C,D,E,F,G,H,I,J,K,L,M,o,o,P]).
omove([A,B,C,D,E,F,G,H,I,J,K,L,M,N,b,b], 15, [A,B,C,D,E,F,G,H,I,J,K,L,M,N,o,o]).
omove(Board, S, Board) :- write('Illegal move. Value = ~w', [S]), nl.

% lancer le jeu

play :- 
	rules,
	playfrom([b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b]).

rules :-
	write('Choisissez un entier correspondant a la partie haute ou gauche du domino'),
	nl,
	display([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]).

playfrom(Board) :- 
	xwin(Board), 
	write('Bravo Valerie').
playfrom(Board) :- 
	owin(Board), 
	write('Bravo Henri').
playfrom(Board) :- 
	read(Q),
	xmove(Board, Q, Newboard), 
	display(Newboard),
	read(R),
	omove(Newboard, R, Newnewboard), 
	display(Newnewboard),
	playfrom(Newnewboard).