gcd(X, 0, X) :- X > 0, !.
gcd(X, Y, R) :-
    Y > 0,
    Z is X mod Y,
    gcd(Y, Z, R).

lcm(X, Y, R) :-
    gcd(X, Y, G),
    R is (X * Y) // G.
