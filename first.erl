-module(first).
-export([double/1, mult/2, square/1, treble/1]).

mult(X, Y) -> 
	X * Y.

double(X) -> 
	mult(2, X).

square(X) ->
	X * X.

treble(X) ->
	X * X * X.
