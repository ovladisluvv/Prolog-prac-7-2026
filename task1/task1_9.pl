% insertion_sort/2: (i, i), (i, o) - детерминированные
insertion_sort([], []).
insertion_sort([X|T], Res) :- insertion_sort(T, Sorted), insert_number(X, Sorted, Res).

% insert_number/3: (i, i, i), (i, i, o) - детерминированные
insert_number(X, [], [X]).
insert_number(X, [Y|T], [X,Y|T]) :- X =< Y.
insert_number(X, [Y|T], [Y|Res]) :- X > Y, insert_number(X, T, Res).
