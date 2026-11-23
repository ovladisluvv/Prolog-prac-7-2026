% delete_first/3: (i, i, i), (i, i, o), (o, i, i) - детерминированные
% (o, i, o), (i, o, i), (o, o, i) - недетерминированные
% (i, o, o), (o, o, o) - недетерминированные генераторы
delete_first(X, [X|T], T) :- !.
delete_first(X, [E|T1], [E|T2]) :- delete_first(X, T1, T2).
