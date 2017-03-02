-module(list).
-export([head/1, tail/1, second/1, second2/1, sum/1, sum_tail/1]).


head([X|_Xs]) -> X.

tail([_X|Xs]) -> Xs.

second(X) -> head(tail(X)). % Function composition.

second2([_X,Y | _Zs]) -> Y. % Using pattern matching.

% Direct recursion
sum([]) -> 0;
sum([X|Xs]) -> X + sum(Xs).

% Tail recursion
sum_tail(Xs) -> sum_tail(Xs, 0).

sum_tail([], S) -> S;
sum_tail([X|Xs], S) -> sum_tail(Xs, X+S).