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

	street(A, I, X) --> col(A, B) , nat(I, J), pet(X, Y), 
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

    part2(S) :- street([], [], [], S, []).

