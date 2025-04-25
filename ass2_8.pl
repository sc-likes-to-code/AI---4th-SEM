person(john, smith, 45, london, doctor).
person(martin, williams, 33, birmingham, teacher).
person(henry, smith, 26, manchester, plumber).
person(jane, wilson, 62, london, teacher).
person(mary, smith, 29, glasgow, surveyor).

surname_smith(Name) :- person(Name, smith, _, _, _).

% Query Example:
% ?- surname_smith(X).
