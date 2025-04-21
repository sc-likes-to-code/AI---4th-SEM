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

%membership check
member(X,[X|_]).
member(X,[_|Tail]):-member(X,Tail).

%predicate to call from console
%Solution is a path (in reverse order)
%from Start to a goal.
solve(Node,Solution):-dfs([],Node,Solution).

%dfs predicate implementation
dfs(Path,Node,[Node|Path]):-goal(Node).

dfs(Path,Node,Sol):-
    graph(Node,Node1),
    not(member(Node1,Path)),
    dfs([Node|Path],Node1,Sol).

Sample Test Case:
[1]  ?- solve(a,Sol).
Sol = [f, c, a] ;
Sol = [g, c, a] ;
false.
