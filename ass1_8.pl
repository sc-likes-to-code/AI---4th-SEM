check_trigonometry :-
    write('Enter angle in degrees: '), read(Degrees),

    % Convert degrees to radians
    Radians is Degrees * pi / 180,

    % Compute sine and cosine
    SinVal is sin(Radians),
    CosVal is cos(Radians),

    % Display results
    nl, write('--- Trigonometric Results ---'), nl,
    write('sin('), write(Degrees), write(') = '), write(SinVal), nl,
    write('cos('), write(Degrees), write(') = '), write(CosVal), nl.
