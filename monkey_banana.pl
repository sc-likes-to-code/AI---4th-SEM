% monkey grasps banana
act(state(middle, onbox, middle, hasnot),grasp,state(middle, onbox, middle, has) ).
% monkey climbs box
act(state(P, onfloor, P, H),climb,state(P, onbox,   P, H) ).
% monkey pushes box from P1 to P2
act(state(P1, onfloor, P1, H),push(P1, P2),state(P2, onfloor, P2, H) ).
% monkey moves from P1 to P2
act(state(P1, onfloor, B, H),walk(P1, P2),state(P2, onfloor, B, H) ).
% define (recursively) how the monkey can get the banana
canget(state(_,_,_,has)).
canget(State1) :- act(State1, _Action, State2), canget(State2).
% define the initial starting condition
go :- canget( state(atdoor, onfloor, atwindow, hasnot) ).
