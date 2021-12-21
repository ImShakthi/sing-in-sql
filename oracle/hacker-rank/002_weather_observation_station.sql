-- Weather Observation Station

-- The STATION table is described as follows:
CREATE TABLE station
(
    ID     NUMBER PRIMARY KEY,
    CITY   VARCHAR2(21),
    STATE  VARCHAR2(2),
    LAT_N  NUMBER,
    LONG_W NUMBER
);
-- where LAT_N is the northern latitude and LONG_W is the western longitude.


-- QUESTION #1
-- Query a list of CITY and STATE from the STATION table.

-- ANSWER #1
SELECT city, state
FROM station;

-- QUESTION #2
-- Query the following two values from the STATION table:
-- #1 The sum of all values in LAT_N rounded to a scale of 2 decimal places.
-- #2 The sum of all values in LONG_W rounded to a scale of 2 decimal places.

-- ANSWER #2
SELECT TO_CHAR(SUM(LAT_N), '99999.99'), TO_CHAR(SUM(LONG_W), '99999.99')
FROM station;

-- QUESTION #3
-- Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.

-- ANSWER #3
SELECT city
FROM (
         SELECT city, count(*)
         FROM station
         WHERE MOD(id, 2) = 0
         GROUP BY city
     );

-- QUESTION #4
-- Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
-- total no of records - number of unique records by city name

-- ANSWER #4
SELECT count(city) - count(DISTINCT city)
FROM station;

-- QUESTION #5
-- Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths
-- (i.e.: number of characters in the name). If there is more than one smallest or largest city,
-- choose the one that comes first when ordered alphabetically.

-- ANSWER #5
SELECT * FROM(SELECT city, LENGTH(city) FROM station ORDER BY LENGTH(city), city) WHERE ROWNUM = 1
UNION
SELECT * FROM(SELECT city, LENGTH(city) FROM station ORDER BY LENGTH(city) DESC, city) WHERE ROWNUM = 1;

-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem

-- QUESTION #6
-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION.
-- Your result cannot contain duplicates.
-- where LAT_N is the northern latitude and LONG_W is the western longitude.

-- ANSWER #6
SELECT DISTINCT city FROM station WHERE REGEXP_LIKE (city, '^(A|E|I|O|U)(*)');

-- https://www.hackerrank.com/challenges/weather-observation-station-6/problem

-- QUESTION #7
-- Query the list of CITY names ends with vowels (i.e., a, e, i, o, or u) from STATION.
-- Your result cannot contain duplicates.
-- where LAT_N is the northern latitude and LONG_W is the western longitude.

-- ANSWER #7
SELECT DISTINCT city FROM station WHERE REGEXP_LIKE (city, '(*)(a|e|i|o|u)$');

-- https://www.hackerrank.com/challenges/weather-observation-station-7/problem

-- QUESTION #8
-- Query the list of CITY names starts and ends with vowels (i.e., a, e, i, o, or u) from STATION.
-- Your result cannot contain duplicates.
-- where LAT_N is the northern latitude and LONG_W is the western longitude.

-- ANSWER #8
SELECT DISTINCT city FROM station WHERE REGEXP_LIKE (city, '^(A|E|I|O|U).*(a|e|i|o|u)$');

-- https://www.hackerrank.com/challenges/weather-observation-station-8/problem

-- QUESTION #9
-- Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

-- ANSWER #9
SELECT DISTINCT city FROM station WHERE NOT REGEXP_LIKE (city, '^(!(A|E|I|O|U))(*)');

-- https://www.hackerrank.com/challenges/weather-observation-station-9/problem

-- QUESTION #10
-- Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

-- ANSWER #10
SELECT DISTINCT city FROM station WHERE NOT REGEXP_LIKE (city, '(*)(a|e|i|o|u)$');

-- https://www.hackerrank.com/challenges/weather-observation-station-10/problem

-- QUESTION #11
-- Query the list of CITY names DOES NOT starts OR ends with vowels (i.e., a, e, i, o, or u) from STATION.
-- Your result cannot contain duplicates.
-- where LAT_N is the northern latitude and LONG_W is the western longitude.

-- ANSWER #11
SELECT DISTINCT city FROM station WHERE NOT REGEXP_LIKE (city, '^(A|E|I|O|U).*(a|e|i|o|u)$');

-- https://www.hackerrank.com/challenges/weather-observation-station-11/problem

-- QUESTION #12
-- Query the list of CITY names DOES NOT starts AND ends with vowels (i.e., a, e, i, o, or u) from STATION.
-- Your result cannot contain duplicates.
-- where LAT_N is the northern latitude and LONG_W is the western longitude.

-- ANSWER #12
SELECT DISTINCT city FROM station WHERE NOT REGEXP_LIKE (city, '^(A|E|I|O|U)') AND NOT REGEXP_LIKE (city, '*(a|e|i|o|u)$');

-- https://www.hackerrank.com/challenges/weather-observation-station-12/problem

