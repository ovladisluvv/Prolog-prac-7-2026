% is_sublist/2: (i, i), (o, i) - недетерминированные
% (i, o) - недетерминированный генератор
is_sublist([E|T], L) :- my_append(_, T1, L), my_append([E|T], _, T1).

% my_append/3: (i, i, i), (i, i, o), (i, o, i), (o, i, i), (i, o, o) - детерминированные
% (o, o, i) - недетерминированный
% (o, i, o), (o, o, o) - недетерминированные генераторы
my_append([], L, L).
my_append([E|T1], L, [E|T2]) :- my_append(T1, L, T2).
