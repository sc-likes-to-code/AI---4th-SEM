food(burger).
food(sandwich).
food(pizza).

lunch(sandwich).
dinner(pizza).

meal(X):- food(X).

%outputs:
?- food(pizza).
true.

?- meal(X),lunch(X).
X = sandwich ;
false.

?- dinner(sandwich).
false.
