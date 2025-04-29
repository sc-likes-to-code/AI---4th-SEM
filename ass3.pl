mem_check(X, [X|_]).
mem_check(X, [_|T]) :- mem_check(X,T).


length1([], 0).
length1([_|T], N) :- length1(T, N1), N is N1 + 1.

concat([], L, L).
concat([H|T], L2, [H|R]) :- concat(T, L2, R).


delete1(_, [], []).
delete1(X, [X|T], T).
delete1(X, [H|T], [H|R]) :- delete1(X, T, R).


list_insert(X, L, [X|L]).
list_insert(X, [H|T], [H|R]) :- list_insert(X, T, R).


list_order([]).
list_order([_]).
list_order([X,Y|T]) :- X =< Y, list_order([Y|T]).


sum1([], 0).
sum1([H|T], R) :- sum1(T, R1), R is R1 + H.


list_even_len([]).
list_even_len([_,_|T]) :- list_even_len(T).


list_rev([], []).
list_rev([H|T], R) :- list_rev(T, R1), concat(R1, [H], R).


list_shift([H|T], R) :- concat(T, [H], R).
