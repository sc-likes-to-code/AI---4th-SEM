% Write a Prolog program to find all possible paths from a given node to another for the following graph.

%facts
edge(1,2).
edge(1,6).
edge(2,3).
edge(2,5).
edge(2,6).
edge(3,4).
edge(3,5).
edge(4,5).
edge(5,6).

%since no direction i.e. bidirectional given
connected(X,Y):-edge(X,Y);edge(Y,X).

%predicate needs to be called from console
%reverse inbuilt predicate
path(A,B,Path):-traverse(A,B,[A],Q),reverse(Q,Path).

traverse(A,B,P,[B|P]):-connected(A,B).

traverse(A,B,Visited,Path):-
    connected(A,C),
    C\==B,
    not(member(C,Visited)),
    traverse(C,B,[C|Visited],Path).

