person(john, smith, 45, london, doctor).
person(martin, williams, 33, birmingham, teacher).
person(henry, smith, 26, manchester, plumber).
person(jane, wilson, 62, london, teacher).
person(mary, smith, 29, glasgow, surveyor).

age40(Profession) :- person(_, _, Age, _, Profession), Age >= 40.

% Query Example:
% ?- age40(X).
