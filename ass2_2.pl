% Facts
parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).
parent(bob, peter).
parent(peter, jim).

female(pam).
female(liz).
female(pat).
female(ann).
male(tom).
male(bob).
male(jim).

% Rules
mother(M, C) :- parent(M, C), female(M).
father(F, C) :- parent(F, C), male(F).
sister(S, X) :- parent(P, S), parent(P, X), female(S), S \= X.
grandparent(GP, C) :- parent(GP, P), parent(P, C).
grandmother(GM, C) :- grandparent(GM, C), female(GM).
grandfather(GF, C) :- grandparent(GF, C), male(GF).
wife(W, H) :- parent(W, C), parent(H, C), female(W), male(H).
uncle(U, C) :- parent(P, C), brother(U, P).

% Query Example:
% ?- mother(pam, bob).
% ?- grandmother(pam, ann).
