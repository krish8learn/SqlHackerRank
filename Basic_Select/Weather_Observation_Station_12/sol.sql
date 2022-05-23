/*
Weather Observation Station 12
Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
solution
 */
 SELECT DISTINCT CITY FROM STATION WHERE SUBSTRING(CITY,1,1) NOT IN ('A','E','I','O','U') AND SUBSTRING(CITY, LENGTH(CITY), LENGTH(CITY)) NOT IN ('a','e','o','u','i');
