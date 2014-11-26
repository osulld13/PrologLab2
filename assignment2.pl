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

	/* Write a DCG that given a non-negative integer Sum, accepts lists of integers
	≥ 1 that add up to Sum. For example,

	| ?- s(3,L,[]).
	L = [3] ? ;
	L = [2,1] ? ;
	L = [1,2] ? ;
	L = [1,1,1] ? ;
	no

	It may be useful to write a predicate mkList(+Num,?List) that returns a list
	List of integers from Num down to 1. For example,

	| ?- mkList(3,L).
	L = [3,2,1] ? ;
	no

	*/

	/*s(Sum) --> {Sum > 0}, l(0, _, Result).
	
	l([I|L], Accum1, Accum2, Result)--> {I >= 1}, {Accum2 is Accum1 + I},  */   

	%use reverse of list is element function to get term.

	%, 

	s(Sum) --> {Sum > 0}, {mkList(Sum, L)},  l(L, Result), {Result =:= Sum}.
	
	l(_, 0) --> [].
	l(L, Accum1) --> {member(X, L)}, [X], l(L, Accum2), {Accum1 is Accum2 + X}.


	mkList(S, L) :- mkList1(S, [], L).

    mkList1(1, L, L).
	mkList1(S, L, X) :- S2 is S - 1, mkList1(S2, [S2|L], X).


	part3(Sum, L) :- s(Sum, L, []).