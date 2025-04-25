check_operators :-
    write('Enter value for A: '), read(A),
    write('Enter value for B: '), read(B),

    % Perform all operations
    Sum      is A + B,
    Diff     is A - B,
    Prod     is A * B,
    Div      is A / B,
    Power    is A ** B,
    IntDiv   is A // B,
    Modulus  is A mod B,
    Sqrt     is sqrt(A),
    MaxVal   is max(A, B),

    % Display all results
    nl, write('--- Results ---'), nl,
    write('Addition: '), write(Sum), nl,
    write('Subtraction: '), write(Diff), nl,
    write('Multiplication: '), write(Prod), nl,
    write('Division: '), write(Div), nl,
    write('Power (**): '), write(Power), nl,
    write('Integer Division (//): '), write(IntDiv), nl,
    write('Modulus (mod): '), write(Modulus), nl,
    write('Square Root of A: '), write(Sqrt), nl,
    write('Maximum: '), write(MaxVal), nl.
