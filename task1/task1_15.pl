% substitute/4: (i, i, i, i), (i, i, i, o), (i, i, o, i), (i, i, o, o) - детерминированные
% (i, o, i, i), (i, o, i, o), (i, o, o, i), (i, o, o, o) - недетерминированные
substitute(nil, _, _, nil).
substitute(tree(L1, R1, X), V, T, tree(L2, R2, Y)) :- substitute(L1, V, T, L2), substitute(R1, V, T, R2), replace_label(X, V, T, Y).

% replace_label/4: (i, i, i, i), (i, i, i, o), (i, i, o, i), (i, i, o, o) - детерминированные
% (i, o, i, i), (i, o, i, o), (i, o, o, i), (i, o, o, o) - недетерминированные
replace_label(V, V, T, T).
replace_label(X, V, _, X) :- dif(X, V).
