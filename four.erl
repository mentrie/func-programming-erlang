-module(four).
-export([fib/1, pieces/1, tail/1, perfect/1]).

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

% Tail recursion
tail(N) -> 
	tail(N, 1).

tail(0, P) -> 
	P;
tail(N, P) when N>0 -> tail(N-1, P*N).

 % Perfect number
perfect(N, N, S) ->
	N==S;

perfect(N, M, S) when N rem M == 0 -> 
	perfect(N, M+1, M+S);

perfect(N, M, S) ->
 	perfect(N, M+1, S).

perfect(N) ->
	perfect(N, 0, 1).
