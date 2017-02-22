-module(second).
-import(first, [square/1]).
-import(math, [sqrt/1]).
-export([rtt/2, perimeter/2, area/2]).


rtt(X, Y) ->
	sqrt((square(X) + square(Y))).

perimeter(X, Y) -> 
	rtt(X, Y) + X + Y.

area(X, Y) -> 
	1/2 * X * Y.