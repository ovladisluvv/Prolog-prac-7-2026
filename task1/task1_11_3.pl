% subtract/3: (i, i, i), (i, i, o) - детерминированные
subtract(M1, M2, M3) :- subtract_set(M1, M2, R), is_same_set(M3, R), !.

% subtract_set/3: (i, i, o) - детерминированный
subtract_set([], _, []).
subtract_set([X|T], M, R) :- member(X, M), !, subtract_set(T, M, R).
subtract_set([X|T], M, [X|R]) :- subtract_set(T, M, R).

% is_same_set/2: (i, i) - детерминированный
% (o, i) - недетерминированный
is_same_set([], []).
is_same_set([X|T], M) :- delete_one(X, M, R), is_same_set(T, R).

% delete_one/3: (i, i, o) - детерминированный
% (o, i, o) - недетерминированный
delete_one(E, [E|T], T).
delete_one(E, [X|T], [X|R]) :- delete_one(E, T, R).
