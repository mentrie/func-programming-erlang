-module(four).
-export([fib/1, pieces/1]).

fibOf(0) ->
    0;
fibOf(1) ->
    1;
fibOf(N) ->
    fibOf(N-1) + fibOf(N-2).

fib(Count, Count, Seq) ->
    Seq++[fibOf(Count)];
fib(Count, Current, Seq) ->
    fib(Count, Current+1, Seq++[fibOf(Current)]).

fib(Count) ->
    fib(Count, 0, []).

pieces(0) -> 1;
pieces(N) when N>0 -> N + pieces(N-1).