% element_index/3: (i, i, i), (o, i, i) - детерминированные
% (i, o, i), (o, o, i) - недетерминированные
% (i, o, o), (o, o, o) - недетерминированные генераторы
element_index(E, 1, [E|_]).
element_index(E, N, [_|T]) :- element_index(E, N1, T), N is N1 + 1.
