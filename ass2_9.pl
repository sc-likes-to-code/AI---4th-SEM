
squares(N1, N2) :-
    N1 =< N2,
    Square is N1 * N1,
    write(Square), nl,
    N3 is N1 + 1,
    squares(N3, N2).


% Query Example:
% ?- squares(6, 12).
