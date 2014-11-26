%Assignment 2

% part 1
	
	/*Write a DCG that accepts strings of the form u2v where u and v are strings
	over the alphabet {0, 1} such that the number of 0’s in u is the same as the
	number of 1’s in v.*/

	% Satisfies condition (Number of 1s = Number of 0s)

	/*s --> u, [2], v.

	u --> dig, u.
	u --> dig.

	v --> dig, v.
	v --> dig.

	dig --> [0].
	dig --> [1].

	part1(X) :- s(X, []).*/

	s --> u, [2], v.

	u --> digU, u.
	u --> digU.

	v --> digV, v.
	v --> digV.

	digU --> [0].
	digU--> [1].

	digV --> [0].
	digV --> [1].

	part1(X) :- s(X, []).

	% with counts

	/*s(Accum1) --> u(0, Accum1), [2], v, Count1 =:= Count2.

	u(Count1, Accum1) --> digU(Count1, Accum1), u(Count1, Accum1).
	u(Count1, Accum1) --> digU(Count1, Accum1).

	v --> digV, v.
	v --> digV.

	digU(Count1, Count1) --> [].
	digU(Count1, _) --> [0], {Count1 is Count1 + 1}.
	digU(Count1, _) --> [1], {Count1 is Count1}.

	digV --> [0].
	digV --> [1].

	part1(X) :- s(X, []).*/