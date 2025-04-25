check_comparisons:-
    write('Enter value for A: '), read(A),
    write('Enter value for B: '),read(B),

    (A > B  -> R1 = true; R1 = false),
    (A < B  -> R2 = true; R2 = false),
    (A >= B  -> R3 = true; R3 = false),
    (A =< B  -> R4 = true; R4 = false),
    (A =:= B  -> R5 = true; R5 = false),
    (A =\= B  -> R6 = true; R6 = false),

     nl, write('--- Comparison Results ---'), nl,
     write('A > B: '), write(R1), nl,
     write('A < B: '), write(R2), nl,
     write('A >= B: '), write(R3), nl,
     write('A =< B: '), write(R4), nl,
     write('A =:= B (Equal): '), write(R5), nl,
     write('A =\\= B (Not Equal): '), write(R6), nl.

