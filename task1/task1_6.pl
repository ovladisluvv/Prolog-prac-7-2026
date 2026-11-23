% delete_doubles/2: (i, i), (i, o) - детерминированные
delete_doubles([], []).
delete_doubles([E|T1], [E|T2]) :- delete_all(E, T1, L), delete_doubles(L, T2).

% delete_all/3: (i, i, i), (i, i, o) - детерминированные
delete_all(_, [], []).
delete_all(X, [X|T], L) :- !, delete_all(X, T, L).
delete_all(X, [E|T], [E|L]) :- delete_all(X, T, L).
