-module(product_max).
-export([product/1, product_tail/1, maximum/1, maximum_tail/1]).


% Direct recursion for product
product([]) -> 1;
product([X|Xa]) -> X * product(Xa).

% Tail recursion for product
product_tail(Xa) -> product_tail(Xa, 1).

product_tail([], S) -> S;
product_tail([X|Xa], S) -> product_tail(Xa, S*X).

% Direct recursion of maximum
maximum([X]) -> X;
maximum([]) -> 0;
maximum([X|Xa]) -> max(X, maximum(Xa)).

% Tail recursion for maximum
maximum_tail([X|Y]) -> maximum_tail(X, Y).
maximum_tail(S, []) -> S;
maximum_tail(X, [H|T]) -> maximum_tail(max(X,H), T). 