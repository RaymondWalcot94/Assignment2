
/* 1 */

sum_up_numbers_simple(L, S) :- sum_up(L, 0, S). /* calls the function sum_up funtion with inital value 0 then the varaible to be assigned the total sum */



sum_up([Z|Y], Sa, S):- \+(number(Sa)), sum_up(Y, S1, S). /* checks to see whether the value Sa is of type number of not, then based whether it is not a number it recursivly call the remaining List argument.in the function */


sum_up([Z|Y], Sa, S):- \+(number(Z)), sum_up(Y, S1, S).  /* checks to see whether the value Z is of type number of not, then based whether it is not a number it recursivly call the remaining List argument in the function */

sum_up([], S, S).  /* returns when the list is empty */

sum_up([Z|Y], Sa, S) :- S1 is Sa + Z , sum_up(Y, S1, S). /* sums up accumulated S1 value with value Sa, Z  then recursively call the remaing parnt of the list */









/* 2 */

sum_up_numbers_general([],0). /* Case list is empty returns 0 */

sum_up_numbers_general(N,N) :- number(N). /* tests type to see whether it is of type int */

sum_up_numbers_general([A|L],S) :- sum_up_numbers_general(A,S1), sum_up_numbers_general(L,S2), S is S1 + S2.

sum_up_numbers_general([A|L], S):- \+(number(S1)), sum_up_numbers_general(L, S), write('true'). /* if S1 is of type character it recursively calls the  remaining part of the list then return true if condition is stasfied. */

sum_up_numbers_general([A|L], S):- \+(number(S2)), sum_up_numbers_general(L, S). /* if S1 is of type character it recursively calls the  remaining part of the list */




/* 4 */

common_unique_elements([], _, []). /* base case where list is empty */
common_unique_elements([Head|End], L1, L2) :- member(Head, L1), !, L2 = [Head|End2], /* checks if it is a member also prevents unnecessary back tracking */
common_unique_elements(End, L1, End2). /* defined fact */
common_unique_elements([_|End], L1, L2) :-
       common_unique_elements(End, L1, L2). /* recursively calls the end of the list part of the list */

