-- The CITY table is described as follows
-- CITY
-- Field       Type
-- --------------------------
-- ID           NUMBER
-- NAME         VARCHAR2(17)
-- COUNTRYCODE  VARCHAR2(3)
-- DISTRICT     VARCHAR2(20)
-- POPULATION   NUMBER

CREATE TABLE city
(
    ID          NUMBER,
    NAME        VARCHAR2(17),
    COUNTRYCODE VARCHAR2(3),
    DISTRICT    VARCHAR2(20),
    POPULATION  NUMBER
);

-- Test data
INSERT INTO city (ID, NAME, COUNTRYCODE, DISTRICT, POPULATION)
VALUES (10, 'city 1', 'USA', 'district 1', 100000);

INSERT INTO city (ID, NAME, COUNTRYCODE, DISTRICT, POPULATION)
VALUES (11, 'city 2', 'USA', 'district 2', 2000);

INSERT INTO city (ID, NAME, COUNTRYCODE, DISTRICT, POPULATION)
VALUES (12, 'city 3', 'USA', 'district 3', 155000);

INSERT INTO city (ID, NAME, COUNTRYCODE, DISTRICT, POPULATION)
VALUES (13, 'city 4', 'USA', 'district 4', 1000);

INSERT INTO city (ID, NAME, COUNTRYCODE, DISTRICT, POPULATION)
VALUES (14, 'city 1', 'JPN', 'district 1', 100001);

INSERT INTO city (ID, NAME, COUNTRYCODE, DISTRICT, POPULATION)
VALUES (15, 'city 2', 'JPN', 'district 2', 999999);

INSERT INTO city (ID, NAME, COUNTRYCODE, DISTRICT, POPULATION)
VALUES (16, 'city 7', 'CND', 'district 1', 100001);

INSERT INTO city (ID, NAME, COUNTRYCODE, DISTRICT, POPULATION)
VALUES (17, 'city 8', 'IND', 'district 1', 1000000);

-- QUESTION #1
-- Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.

-- Solution #1
SELECT *
FROM city
WHERE COUNTRYCODE = 'USA'
  and POPULATION > 100000;

-- QUESTION #2
-- Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.

-- Solution #2
SELECT name
FROM city
WHERE COUNTRYCODE = 'USA'
  and POPULATION > 120000;

-- QUESTION #3
-- Query all columns (attributes) for every row in the CITY table.

-- Solution #3
SELECT *
FROM city;

-- QUESTION #4
-- Query all columns for a city in CITY with the ID 1661.

-- Solution #4
SELECT *
FROM city
WHERE id = 1661;

-- QUESTION #5
-- Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.

-- Solution #5
SELECT *
FROM city
WHERE COUNTRYCODE = 'JPN';

-- QUESTION #5
-- Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.

-- Solution #5
SELECT name
FROM city
WHERE COUNTRYCODE = 'JPN';
