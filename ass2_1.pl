% Facts
parent(sudip, piyus).
parent(sudip, raj).
male(piyus).
male(raj).

% Rule for brother relationship
brother(X, Y) :-
    parent(P, X),
    parent(P, Y),
    male(X),
    male(Y),
    X \= Y.

% Query Example:
% ?- brother(piyus, raj).
