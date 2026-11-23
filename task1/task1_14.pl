% flatten_tree/2: (i, i), (i, o) - детерминированные
% (o, i) - недетерминированный
flatten_tree(T, L) :- flat_tree(T, [], L).

% flat_tree/3: (i, i, i), (i, i, o) - детерминированные
flat_tree(nil, T, T).
flat_tree(tree(L, R, X), T, Res) :- flat_tree(R, T, R_res), flat_tree(L, [X|R_res], Res).
