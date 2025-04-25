% Facts: player(Name, StartYear, EndYear)
player(rahulDravid, 1996, 2012).
player(sachinTendulkar, 1989, 2013).
player(vvsLaxman, 1996, 2012).
player(sauravGanguly, 1996, 2008).
player(virendarSehwag, 2001, 2013).
% Note: The fact for rahulDravid is repeated but only one instance is needed.

% Rule: A player played in a given Year if that year falls between their start and end years.
played_in_year(Player, Year) :-
    player(Player, Start, End),
    Year >= Start,
    Year =< End.

% Rule: A player started their career in a given Year if the StartYear equals that Year.
started_in_year(Player, Year) :-
    player(Player, Year, _).
