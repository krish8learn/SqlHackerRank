/*
Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
*/
/*Weather Observation Station 8*/
SELECT DISTINCT CITY FROM STATION WHERE REGEXP_LIKE (CITY,'^[aeiou].*[aeiou]$');
