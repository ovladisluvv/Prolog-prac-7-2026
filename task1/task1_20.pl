edge(a, c, 8).
edge(a, b, 3).
edge(c, d, 12).
edge(b, d, 1).
edge(e, d, 9).
edge(a, f, 6).
edge(f, e, 7).
edge(b, e, 10).

% is_connected/0: () - детерминированный
is_connected :- edge(A,_,_), not((edge(B,_,_), not(path(A,B,_)))).

% path/3: (i, i, o) - недетерминированный
% (i, i, i) - детерминированный
path(A, B, [A|T]) :- path1(A, B, [A], T).

% path1/4: (i, i, i, o) - недетерминированный
% (i, i, i, i) - детерминированный
path1(B, B, _, []) :- !.
path1(A, B, Path, [Next|T]) :- (edge(A, Next, _); edge(Next, A, _), not(edge(A, Next, _))), not(member(Next, Path)), path1(Next, B,[Next|Path], T).
