/*
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* * * * * 
* * * * 
* * * 
* * 
*
Write a query to print the pattern P(20).
Draw Triangle 1
*/

SET @ROW:= 21;
SELECT REPEAT('* ',@ROW:= @ROW-1) FROM INFORMATION_SCHEMA.TABLES WHERE @ROW > 0;
