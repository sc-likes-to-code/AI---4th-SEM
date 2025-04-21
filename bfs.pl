%Facts
graph(a,b).
graph(a,c).
graph(b,d).
graph(b,e).
graph(c,f).
graph(c,g).

%defining facts for goals
goal(f).
goal(g).

%predicate to call from console
%Solution is a path (in reverse order)
%from Start to a goal.
solve1(Start,Solution):-
    bfs([[Start]],Solution).

%bfs predicate implementation
%Always first check if goal reached
bfs([[Node|Path]|_],[Node|Path]):-
    goal(Node).

% If not, then extend this path by all
% possible edges, put these new paths on the
% end of the queue (Paths1) to check, and do
% breadthfirst on this new collection of
% paths, Paths1:
bfs([Path|Paths],Solution):-
    extend(Path,NewPaths),conc(Paths,NewPaths,Paths1),bfs(Paths1,Solution).

% extend([N|Rest], NewPaths).
% Extend the path [N|Rest] using all edges
% through N that are not already on the path.
% This produces a list NewPaths.
%The built-in predicate bagof(+Template, +Goal, -Bag) is used to collect a list Bag of all the items Template that satisfy some goal Goal.
%Exclamation point ! denotes Cut in Prolog, a special goal that always succeeds, and %blocks backtracking for all branches above it that may have alternatives.
extend([Node|Path], NewPaths) :-
  bagof([NewNode, Node|Path],
          (graph(Node, NewNode),
           not(member(NewNode,[Node|Path]))),
          NewPaths),
  !.

%findall failed: no edge
extend(_,[]).

%concatenating paths
conc([],L2,L2).
conc([X|L1],L2,[X|L3]):-conc(L1,L2,L3).

