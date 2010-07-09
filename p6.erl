-module(p6).
-import(lists, [map/2, sum/1]).
-import(math, [pow/2]).
-import(util, [seq/2]).
-export([p6/0]).

p6() -> sum(map(fun(X) -> pow(X, 2) end, seq(1, 100))) - pow(sum(seq(1, 100)), 2).
