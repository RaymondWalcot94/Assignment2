common_unique_elements([], _, []). /* base case where list is empty */
common_unique_elements([Head|End], L1, L2) :- member(Head, L1), !, L2 = [Head|End2], /* checks if it is a member also prevents unnecessary back tracking */
common_unique_elements(End, L1, End2). /* defined fact */
common_unique_elements([_|End], L1, L2) :-
       common_unique_elements(End, L1, L2). /* recursively calls the end of the list part of the list */
