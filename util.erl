-module(util).
-export([seq/2]).

seq(S, E) when S >= E -> [S];
seq(S, E) when S < E -> [S | seq(S + 1, E)].
