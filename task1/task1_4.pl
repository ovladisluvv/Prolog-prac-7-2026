% delete_all/3: (i, i, i), (i, i, o) - детерминированные
delete_all(_, [], []).
delete_all(X, [X|T], L) :- !, delete_all(X, T, L).
delete_all(X, [E|T], [E|L]) :- delete_all(X, T, L).
