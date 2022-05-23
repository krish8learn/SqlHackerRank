/*
Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.
*/
 SET @R1=0, @R2= 0, @R3 = 0, @R4 = 0;

SELECT MIN(DOCTOR), MIN(PROFESSOR), MIN(SINGER), MIN(ACTOR) FROM (
SELECT CASE WHEN OCCUPATION = "Doctor" THEN (@R1:= @R1 + 1) WHEN OCCUPATION = "Professor" THEN (@R2 := @R2 + 1) WHEN OCCUPATION = "Singer" THEN (@R3 :=@R3+1)
WHEN OCCUPATION = "Actor" THEN (@R4 := @R4 + 1) END AS ROWNUMBER,
CASE WHEN OCCUPATION = "Doctor" THEN NAME END AS DOCTOR,
CASE WHEN OCCUPATION = "Professor" THEN NAME END AS PROFESSOR,
CASE WHEN OCCUPATION = "Singer" THEN NAME END AS SINGER,
CASE WHEN OCCUPATION = "Actor" THEN NAME END AS ACTOR FROM OCCUPATIONS ORDER BY NAME
) TEMP GROUP BY ROWNUMBER;
