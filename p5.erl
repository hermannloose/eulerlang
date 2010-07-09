-module(p5).
-import(util, [seq/2]).
-export([p5/0]).

gcd(A, 0) -> A;
gcd(A, B) -> gcd(B, A rem B).

lcm(A, B) -> abs(A * B) div gcd(A, B).
lcm([]) -> 1;
lcm([X | L]) -> lcm(X, lcm(L)).

p5() -> lcm(seq(1, 20)).
