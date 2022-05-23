/*
Write a query to print all prime numbers less than or equal to 1000. Print your result on a single line, and use the ampersand (&) character as your separator (instead of a space).

For example, the output for all prime numbers <= 10 would be:


 I WAS NOT ABLE TO SOLVE THIS PROBLEM MYSELF, I TOOK HELP FROM THE DISCUSION
 LINK --> https://www.hackerrank.com/challenges/print-prime-numbers/problem?isFullScreen=true
 SOLUTION
*/

SET @potential_prime = 1;
SET @divisor = 1;

SELECT GROUP_CONCAT(POTENTIAL_PRIME SEPARATOR '&') FROM
    (SELECT @potential_prime := @potential_prime + 1 AS POTENTIAL_PRIME FROM
    information_schema.tables t1,
    information_schema.tables t2
    LIMIT 1000) list_of_potential_primes
WHERE NOT EXISTS(
	SELECT * FROM
        (SELECT @divisor := @divisor + 1 AS DIVISOR FROM
	    information_schema.tables t4,
        information_schema.tables t5
	    LIMIT 1000) list_of_divisors
	WHERE MOD(POTENTIAL_PRIME, DIVISOR) = 0 AND POTENTIAL_PRIME <> DIVISOR);
