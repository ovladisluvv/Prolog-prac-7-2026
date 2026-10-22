union([], M, M).
union([X|T], M, M3) :- member(X, M), !, union(T, M, M3).
union([X|T], M, [X|M3]) :- union(T, M, M3).
