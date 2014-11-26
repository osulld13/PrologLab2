%Assignment 2

% part 1
	
	/*Write a DCG that accepts strings of the form u2v where u and v are strings
	over the alphabet {0, 1} such that the number of 0’s in u is the same as the
	number of 1’s in v.*/

	/*s --> u, [2], v.

	u --> digU.

	v --> digV.

	digU --> [].
	digU --> [0], digU.
	digU --> [1], digU.

	digV --> [].
	digV --> [0], digV.
	digV --> [1], digV.

	part1(X) :- s(X, []).*/

	% with counts

	/*s(Accum1) --> u(Count1, Accum1), [2], v.

	u(Count1, Accum1) --> digU(Count1, Accum1).

	v --> digV.

	digU(Count1, Accum1) --> [1], digU(Var, Accum1), Count1 is Var.
	digU(Count1, Accum1) --> [0], digU(Var, Accum1), Count1 is (Var + 1).
	digU(Count1, Count1) --> [].

	digV --> [].
	digV --> [0], digV.
	digV --> [1], digV.

	part1(X, Y) :- s(X, Y, []).*/

	s(Count1) --> u(Count1), [2], v.

	u(Count1) --> digU(Count1).

	v --> digV.

	digU(Count1) --> [1], digU(Var), Count1 is Var.
	digU(Count1) --> [0], digU(Var), Count1 is (Var + 1).
	digU(0) --> [].

	digV --> [].
	digV --> [0], digV.
	digV --> [1], digV.

	part1(X, Y) :- s(X, Y, []).