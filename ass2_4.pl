forward_loop(N, N).
forward_loop(X, N) :-
    X < N,
    write(X), nl,
    X1 is X + 1,
    forward_loop(X1, N).

backward_loop(N, N).
backward_loop(X, N) :-
    X > N,
    write(X), nl,
    X1 is X - 1,
    backward_loop(X1, N).

% Query Example:
% ?- forward_loop(1, 5).
% ?- backward_loop(5, 1).
