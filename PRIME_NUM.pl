 % Base case: 0 and 1 are not prime
is_prime(0) :- false.
is_prime(1) :- false.

% Predicate to check if N is divisible by any number up to the square root of N
is_divisible(N, Div) :-
N > 1,
N1 is N - 1,
between(2, N1, Div),
0 is N mod Div.

% A number is prime if it's not divisible by any number other than 1 and itself
is_prime(N) :-
N > 1,
not(is_divisible(N, _)).