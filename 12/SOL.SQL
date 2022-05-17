/*
Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

Station.jpg

where LAT_N is the northern latitude and LONG_W is the western longitude.
Weather Observation Station 7
*/

/*
SOLUTION
*/
SELECT DISTINCT CITY FROM STATION WHERE SUBSTRING(CITY,LENGTH(CITY),LENGTH(CITY)) IN ('a','e','i','o','u');
