%Assignment 2

% part 1
	
	/*Write a DCG that accepts strings of the form u2v where u and v are strings
	over the alphabet {0, 1} such that the number of 0’s in u is the same as the
	number of 1’s in v.*/

	s --> u(X), [2], v(Y), {X =:= Y}.

	u(X) --> [1], u(Z), {X is Z}.
	u(X) --> [0], u(Z), {X is (Z + 1)}.
	u(0) --> [].

	v(Y) --> [0], v(Z), {Y is Z}.
	v(Y) --> [1], v(Z), {Y is (Z + 1)}.
	v(0) --> [].

	part1(X) :- s(X, []).

% part 2

	/**/
