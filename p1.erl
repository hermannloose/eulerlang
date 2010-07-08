-module(p1).
-import(lists, [filter/2, sum/1]).
-export([p1/0]).

seq(S, E) when S < E -> [S] ++ seq(S + 1, E);
seq(S, S) -> [S].

p1() -> sum(filter(fun(X) -> (X rem 3 =:= 0) or (X rem 5 =:= 0) end, seq(1, 999))).
