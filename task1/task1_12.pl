% tree_depth/2: (i, i), (i, o) - детерминированные
tree_depth(nil, -1).
tree_depth(tree(L, R, _), N) :- tree_depth(L, N1), tree_depth(R, N2), N is max(N1, N2) + 1.
