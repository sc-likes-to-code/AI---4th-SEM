%Facts
cat(fubby).
has_black_spots(fubby).

dog(figaro).
has_white_spots(figaro).

%Rules
owns(mary, Pet) :- cat(Pet), has_black_spots(Pet).

loves(Person, Pet) :- owns(Person, Pet).
