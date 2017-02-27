-module(assignment).
-export([perimeter/1, area/1, enclose/1, bit/1]).

% perimeter implementation
perimeter({circle, R}) ->
	2 * math:pi() * R;

perimeter({rectangle, H, W}) ->
	2*(H + W);

perimeter({triangle, A, B, C}) ->
	A+B+C;

perimeter({triangle, A, B}) ->
	(2 * A) + B;

perimeter({triangle, A}) ->
  A*A*A;

perimeter(S) ->
	io:format("~s Shape not known ~n", [element(1,S)]).

% area implementation
area({circle, R}) ->
	2 * math:pi()*R*R;

area({rectangle, H,W}) ->
	H*W;

% Scalene triangle
area({triangle, A,B,C}) ->
	S = 1/2*(A+B+C),
	math:sqrt(S*(S-A)*(S-B)*(S-C));

% Right angle triangle
area({triangle, B,H}) ->
	1/2*B*H;

area(S) -> 
 io:format('~p not known ~n', [element(1, S)]).

% enclose implementation
enclose({circle, R}) ->
	{triangle, 2*R, 2*R};

enclose({triangle, A, _B, _C}) ->
	{circle, 2*A};

enclose({rectangle, W, _H}) -> 
	{circle, 2*W}.


% bit implementation
bitOf(0, M, P) ->
	P;

% Recursively add remainder the bits of the number supplied
bitOf(N, M, P) when N > 0 -> 
	bitOf(N div M, M, P+(N rem M)).

bit(N) ->
	bitOf(N, 2, 0).