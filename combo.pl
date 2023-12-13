% 9 op 9 op 9 op 9 = 100
% can this problem be solved ? we will use Prolog's backtracking

% Define the basic operations
operation(add, X, Y, Result) :- Result is X + Y.
operation(subtract, X, Y, Result) :- Result is X - Y.
operation(multiply, X, Y, Result) :- Result is X * Y.
operation(divide, X, Y, Result) :- Y =\= 0, Result is X / Y.

% Predicate to check if 100 can be obtained using four nines and basic operations
make_N(Nines, N, Operations) :-
    permutation(Nines, [A, B, C, D]),
    member(Op1, [add, subtract, multiply, divide]),
    member(Op2, [add, subtract, multiply, divide]),
    member(Op3, [add, subtract, multiply, divide]),
    Operations = [Op1, Op2, Op3],
    operation(Op1, A, B, R1),
    operation(Op2, R1, C, R2),
    operation(Op3, R2, D, N).
    
