between(F, T, F) :- F >= T.
between(F, T, K) :- F > T, Next is F - 1, between(Next, T, K).

threeDigitNumber(N) :- between(999, 100, N).

toList(0, R, R).
toList(N, T, R) :- H is N mod 10, M is floor(N / 10), toList(M, [H|T], R).

reverse([],[]). 
reverse([H|T], R) :- reverse(T, RevT), append(RevT, [H], R).

palindrome(L) :- reverse(L, L).

isPalindrome(N) :- toList(N, [], L), !, palindrome(L).

?- threeDigitNumber(A), threeDigitNumber(B), N is A * B, isPalindrome(N), write(N), nl, fail.
