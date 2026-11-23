% my_append/3: (i, i, i), (i, i, o), (i, o, i), (o, i, i), (i, o, o) - детерминированные
% (o, o, i) - недетерминированный
% (o, i, o), (o, o, o) - недетерминированные генераторы
my_append([], L, L).
my_append([E|T1], L, [E|T2]) :- my_append(T1, L, T2).
