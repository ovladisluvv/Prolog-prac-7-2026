% my_subset/2: (i, i) - детерминированный
% (o, i) - недетерминированный
my_subset(M1, M2) :- subset_scan(M2, M1).

% subset_scan/2: (i, i) - детерминированный
% (i, o) - недетерминированный
subset_scan([], []).
subset_scan([E|T1], S) :- remove_first(E, S, T2), subset_scan(T1, T2).
subset_scan([_|T], S) :- subset_scan(T, S).

% remove_first/3: (i, i, i), (i, i, o), (o, i, i), (i, o, o) - детерминированные
remove_first(E, [E|T], T) :- !.
remove_first(X, [Y|T1], [Y|T2]) :- dif(X, Y), remove_first(X, T1, T2).
