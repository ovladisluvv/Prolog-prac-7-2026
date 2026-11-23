% is_subtree/2: (i, i), (o, i) - недетерминированные
is_subtree(tree(L, R, X), tree(L, R, X)).
is_subtree(T, tree(L, _, _)) :- is_subtree(T, L).
is_subtree(T, tree(_, R, _)) :- is_subtree(T, R).
