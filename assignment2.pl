%Assignment 2

% part 1

	s --> u(X), [2], v(Y), {X =:= Y}.

	u(X) --> [1], u(X).
	u(X) --> [0], u(Z), {X is (Z + 1)}.
	u(0) --> [].

	v(Y) --> [0], v(Y).
	v(Y) --> [1], v(Z), {Y is (Z + 1)}.
	v(0) --> [].

	part1(X) :- s(X, []).

% part 2

	street(X) --> col(X, Y) , nat, pet, col(Y, Z), nat, pet, col(Z, _), nat, pet.

	col(X, Y) --> {not(member(red, X))}, [red], {append([red], X, Y)}.
	col --> [blue].
	col --> [green].

	nat --> [english].
	nat --> [spanish].
	nat --> [japanese].

	pet --> [jaguar].
	pet --> [snail].
	pet --> [zebra].

	part2(S) :- street([], S, []).