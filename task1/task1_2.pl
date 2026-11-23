% my_reverse/2: (i, i), (i, o), (o, i) - детерминированные
% (o, o) - недетерминированный генератор
my_reverse(L1, L2) :- same_size(L1, L2), my_rev(L1, [], L2).

% same_size/2: (i, i), (i, o), (o, i) - детерминированные
% (o, o) - недетерминированный генератор
same_size([], []).
same_size([_|T1], [_|T2]) :- same_size(T1, T2).

% my_rev/3: (i, i, i), (i, i, o), (i, o, i), (i, o, o) - детерминированные
my_rev([], L_rev, L_rev).
my_rev([E|T], L_rev, L) :- my_rev(T, [E|L_rev], L).
