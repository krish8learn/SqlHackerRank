/*
Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
Weather Observation Station 10
*/
SELECT DISTINCT CITY FROM STATION WHERE SUBSTRING(CITY,LENGTH(CITY),LENGTH(CITY)) NOT IN ('a','e','i','o','u'); 
