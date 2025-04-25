predecessor(X, Y) :- parent(X, Y).
predecessor(X, Y) :- parent(X, Z), predecessor(Z, Y).

% Query Example:
% ?- predecessor(tom, jim).
