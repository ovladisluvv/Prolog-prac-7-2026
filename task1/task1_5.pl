% delete_one/3: (i, i, o) - детерминированный
% (o, i, o) - недетерминированный
delete_one(X, [X|T], T).
delete_one(X, [E|T], [E|L]) :- delete_one(X, T, L).
