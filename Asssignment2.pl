%Assignment 2

% part 1

	% Valid input - Has a 2
	%				Has only 0s and 1s
	% Satisfies condition (Number of 1s = Number of 0s)

	s --> u, [2], v.

	u --> dig, u.
	u --> dig.

	v --> dig, v.
	v --> dig.

	dig --> [0].
	dig --> [1].

	part1(X) :- s(X, []).