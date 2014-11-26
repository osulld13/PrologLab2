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

	s(A, I, X) --> col(A, B) , nat(I, J), pet(X, Y), 
						col(B, C), nat(J, K), pet(Y, Z), 
						col(C, _), nat(K, _), pet(Z, _).

    col(X, Y) --> {not(member(red, X))}, [red], {append([red], X, Y)}.
    col(X, Y) --> {not(member(blue, X))}, [blue], {append([blue], X, Y)}.
    col(X, Y) --> {not(member(green, X))}, [green], {append([green], X, Y)}.

	nat(X, Y) --> {not(member(english, X))}, [english], {append([english], X, Y)}.
	nat(X, Y) --> {not(member(spanish, X))}, [spanish], {append([spanish], X, Y)}.
	nat(X, Y) --> {not(member(japanese, X))}, [japanese], {append([japanese], X, Y)}.

	pet(X, Y) --> {not(member(jaguar, X))}, [jaguar], {append([jaguar], X, Y)}.
	pet(X, Y) --> {not(member(snail, X))}, [snail], {append([snail], X, Y)}.
	pet(X, Y) --> {not(member(zebra, X))}, [zebra], {append([zebra], X, Y)}.

    part2(S) :- s([], [], [], S, []).

% part 3

	s(Sum) --> {Sum > 0}, {mkList(Sum, L)},  l(L, 0, Sum, Result), {Result =:= Sum}.
	
	l(L, Accum1, Sum, Result) --> {member(X, L)}, [X],{Accum2 is Accum1 + X}, {Accum2 =< Sum}, l(L, Accum2, Sum, Result).
	l(_, Accum, _, Accum) --> [].

	mkList(S, L) :- mkList1(S, [], L).

    mkList1(0, L, L1) :- reverse(L, L1).
	mkList1(S, L, X) :- S2 is S - 1, S2 >= 0, mkList1(S2, [S|L], X).

	part3(Sum, L) :- s(Sum, L, []).