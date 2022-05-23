/*
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
 Weather Observation Station 11
 */
/*solution*/
SELECT DISTINCT CITY FROM STATION WHERE SUBSTRING(CITY,1,1) NOT IN ('A','E','I','O','U') OR SUBSTRING(CITY, LENGTH(CITY), LENGTH(CITY)) NOT IN ('a','e','i','o','u');  
