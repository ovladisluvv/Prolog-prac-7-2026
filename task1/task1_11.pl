% union/3: (i, i, i), (i, i, o) - детерминированные
union(M1, M2, M3) :- union_set(M1, M2, R), is_same_set(M3, R), !.

% union_set/3: (i, i, o) - детерминированный
% (i, i, i) - детерминированный, учитывает порядок элементов
union_set([], M, M).
union_set([X|T], M, M3) :- member(X, M), !, union_set(T, M, M3).
union_set([X|T], M, [X|M3]) :- union_set(T, M, M3).

% is_same_set/2: (i, i) - детерминированный
% (o, i), (i, o), (o, o) - недетерминированные
is_same_set([], []).
is_same_set([X|T], M) :- delete_one(X, M, R), is_same_set(T, R).

% delete_one/3: (i, i, i), (i, i, o), (i, o, i), (o, i, i), (i, o, o), (o, i, o), (o, o, i) - недетерминированные
delete_one(E, [E|T], T).
delete_one(E, [X|T], [X|R]) :- delete_one(E, T, R).
