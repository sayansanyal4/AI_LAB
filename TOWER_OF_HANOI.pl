% Define the predicate for Towers of Hanoi
hanoi(1, Start, End, _ , Moves) :-
    % Base case: When there's only one disk, move it from Start to End
    append(['Move disk from ', Start, ' to ', End], [], Moves).
hanoi(N, Start, End, Aux, Moves) :-
    % Recursive case: Move N-1 disks from Start to Aux using End as the auxiliary peg
    N > 1,
    N1 is N - 1,
hanoi(N1, Start, Aux, End, FirstMoves),
    % Move the largest disk from Start to End
    append(['Move disk from ', Start, ' to ', End], [], Move),
    % Move the N-1 disks from Aux to End using Start as the auxiliary peg
    hanoi(N1, Aux, End, Start, LastMoves),
    % Concatenate the moves
    append(FirstMoves, [Move | LastMoves], Moves).