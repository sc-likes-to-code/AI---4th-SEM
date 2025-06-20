% Goal state
water_jug(2, 0) :- 
    write('4L:2 & 3L:0 (Goal reached)'), nl.

% Overflow checks
water_jug(X, Y) :- X > 4, write('4L jug overflowed'), nl, !.
water_jug(X, Y) :- Y > 3, write('3L jug overflowed'), nl, !.

% Rules (sequence of actions)
water_jug(0, 0) :- 
    write('4L:0 & 3L:3 (Fill 3L)'), nl, 
    water_jug(0, 3).

water_jug(0, 3) :- 
    write('4L:3 & 3L:0 (Pour 3L into 4L)'), nl, 
    water_jug(3, 0).

water_jug(3, 0) :- 
    write('4L:3 & 3L:3 (Fill 3L)'), nl, 
    water_jug(3, 3).

water_jug(3, 3) :- 
    write('4L:4 & 3L:2 (Pour 3L into 4L)'), nl, 
    water_jug(4, 2).

water_jug(4, 2) :- 
    write('4L:0 & 3L:2 (Empty 4L)'), nl, 
    water_jug(0, 2).

water_jug(0, 2) :- 
    write('4L:2 & 3L:0 (Pour 3L into 4L)'), nl, 
    water_jug(2, 0).
