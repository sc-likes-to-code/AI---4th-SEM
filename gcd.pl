gcd(X, 0, X) :- X > 0, !.
gcd(X, Y, R) :-
    Y > 0,
    Z is X mod Y,
    gcd(Y, Z, R).
