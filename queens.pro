% eight queens

% Representation
% we are going to represent this each queen's position as an index + element combination

% 1   2   3   4     element
% Q1  Q2  Q3  Q4    index

% equivalent 2d representation, 

%  0 0 0 Q
%  0 0 Q 0
%  0 Q 0 0
%  Q 0 0 0

% n queens
n_queens(N, Qs) :-
    length(Qs, N),
    % Qs ins 1..N,
    safe_queens(Qs).

safe_queens([]).
safe_queens([Q|Qs]) :-
    safe_queens_(Qs, Q, 1),
    safe_queens(Qs).

safe_queens_([], _, _).
safe_queens_([Q|Qs], Q0, D0) :-
    Q #\= Q0,
    abs(Q0 - Q) #\= D0,
    D #= D0 + 1,
    safe_queens_(Qs, Q0, D).

