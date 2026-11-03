edge(a, c, 8).
edge(a, b, 3).
edge(c, d, 12).
edge(b, d, 1).
edge(e, d, 9).
edge(a, f, 6).
edge(f, e, 7).
edge(b, e, 10).

% short_path/3: (i, i, o) - недетерминированный
% (i, i, i) - детерминированный
short_path(A, B, Res_path) :- bfs([[A]], B, Paths), member(Res_path, Paths).

% bfs/3: (i, i, o) - детерминированный
bfs(Level, B, [P|Ps]) :- findall(Path, (member(Path, Level), last(Path, B)), [P|Ps]), !.
bfs(Level, B, Res) :- findall(New_path, (member(Path, Level), last(Path, C), (edge(C, Next, _); edge(Next, C, _)), not(member(Next, Path)), append(Path, [Next], New_path)), [P|Ps]), bfs([P|Ps], B, Res).
