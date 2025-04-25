loop(N) :-
    (N < 10 -> write(N), nl, N1 is N + 1, loop(N1); write('Done!'), nl).

% Query:
% ?- loop(5).
