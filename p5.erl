-module(p5).
-export([p5/0]).

seq(S, E) when S < E -> [S] ++ seq(S + 1, E);
seq(S, S) -> [S].

gcd(A, 0) -> A;
gcd(A, B) -> gcd(B, A rem B).

lcm(A, B) -> abs(A * B) div gcd(A, B).
lcm([]) -> 1;
lcm([X | L]) -> lcm(X, lcm(L)).

p5() -> lcm(seq(1, 20)).
