



display([A,B,C,D,E,F,G,H,I]) :- write([A,B,C]),nl,write([D,E,F]),nl,
 write([G,H,I]),nl,nl.

% The following translates from an integer description
% of x's' move to a board transformation.

xmove([b,B,C,b,E,F,G,H,I], 1, [x,B,C,x,E,F,G,H,I]).
xmove([A,b,C,D,b,F,G,H,I], 2, [A,x,C,D,x,F,G,H,I]).
xmove([A,B,b,D,E,b,G,H,I], 3, [A,B,x,D,E,x,G,H,I]).
xmove([A,B,C,b,E,F,b,H,I], 4, [A,B,C,x,E,F,x,H,I]).
xmove([A,B,C,D,b,F,G,b,I], 5, [A,B,C,D,x,F,G,x,I]).
xmove([A,B,C,D,E,b,G,H,b], 6, [A,B,C,D,E,x,G,H,x]).
xmove([A,B,C,D,E,F,b,H,I], 7, [A,B,C,D,E,F,x,H,I]).
xmove([A,B,C,D,E,F,G,b,I], 8, [A,B,C,D,E,F,G,x,I]).
xmove([A,B,C,D,E,F,G,H,b], 9, [A,B,C,D,E,F,G,H,x]).
xmove(Board, N, Board) :- write('Illegal move.'), nl.

playo :- explain, playfrom([b,b,b,b,b,b,b,b,b]).

explain :-
  write('You play X by entering integer positions followed by a period.'),
  nl,
  display([1,2,3,4,5,6,7,8,9]).

% playfrom(Board) :- win(Board, x), write('You win!').
% playfrom(Board) :- win(Board, o), write('I win!').
% playfrom(Board) :- read(N),
%  xmove(Board, N, Newboard), 
%  display(Newboard),
%  orespond(Newboard, Newnewboard), 
%  display(Newnewboard),
%  playfrom(Newnewboard).

playfrom(Board) :- read(N),
  xmove(Board, N, Newboard), 
  display(Newboard).