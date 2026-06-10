/*
AIRLINE PERFORMANCE ANALYSIS
Database Setup & Validation
*/

-- Select Database

USE airline_performance_analysis;

-- Verify Available Tables

SHOW TABLES;

-- Validate Row Counts

SELECT COUNT(*) AS Total_Airlines
FROM airlines;

SELECT COUNT(*) AS Total_Airports
FROM airports;

SELECT COUNT(*) AS Total_Flights
FROM flights;

-- Inspect Flights Table Structure

DESCRIBE flights;

-- Preview Sample Data

SELECT *
FROM flights
LIMIT 10;

-- Verify Month Coverage

SELECT
MIN(MONTH) AS Min_Month,
MAX(MONTH) AS Max_Month,
COUNT(DISTINCT MONTH) AS Distinct_Months
FROM flights;

-- Verify Dataset Size

SELECT COUNT(*) AS Total_Rows
FROM flights;
