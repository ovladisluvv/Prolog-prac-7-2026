edge(a, c, 8).
edge(a, b, 3).
edge(c, d, 12).
edge(b, d, 1).
edge(e, d, 9).
edge(a, f, 6).
edge(f, e, 7).
edge(b, e, 10).

% min_path/3: (i, i, o) - недетерминированный
% (i, i, i) - детерминированный
min_path(A, B, Res_path) :- findall([C, Path], cost_path(A, B, [A], Path, C), Paths), member([C, Res_path], Paths), not((member([C1, _], Paths), C1 < C)).

% cost_path/5: (i, i, i, o, o) - недетерминированный
cost_path(B, B, _, [B], 0) :- !.
cost_path(A, B, Path, [A|Res_path], C) :- (edge(A, Next, C_edge); edge(Next, A, C_edge)), not(member(Next,Path)), cost_path(Next, B, [Next|Path], Res_path, C1), C is C1 + C_edge.
