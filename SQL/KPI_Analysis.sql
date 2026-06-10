-- KPI 1: Total Flights
SELECT COUNT(*) AS Total_Flights
FROM flights;

-- KPI 2: Network Coverage
SELECT
    COUNT(DISTINCT AIRLINE) AS Total_Airlines,
    COUNT(DISTINCT ORIGIN_AIRPORT) AS Origin_Airports,
    COUNT(DISTINCT DESTINATION_AIRPORT) AS Destination_Airports
FROM flights;

-- KPI 3: Flight Status Distribution
SELECT
    COUNT(*) AS Total_Flights,
    SUM(CANCELLED) AS Cancelled_Flights,
    SUM(DIVERTED) AS Diverted_Flights,
    COUNT(*) - SUM(CANCELLED) AS Completed_Flights
FROM flights;

-- KPI 4: Average Flight Delay

SELECT
    ROUND(AVG(DEPARTURE_DELAY),2) AS Avg_Departure_Delay,
    ROUND(AVG(ARRIVAL_DELAY),2) AS Avg_Arrival_Delay
FROM flights
WHERE CANCELLED = 0;

-- KPI 5: Airline Performance by Average Arrival Delay

SELECT
    a.AIRLINE AS Airline_Name,
    ROUND(AVG(f.ARRIVAL_DELAY),2) AS Avg_Arrival_Delay,
    COUNT(*) AS Total_Flights
FROM flights f
JOIN airlines a
    ON f.AIRLINE = a.IATA_CODE
WHERE f.CANCELLED = 0
GROUP BY a.AIRLINE
HAVING COUNT(*) > 1000
ORDER BY Avg_Arrival_Delay;

-- KPI 6: Airline Cancellation Analysis

SELECT
    a.AIRLINE AS Airline_Name,
    COUNT(*) AS Total_Flights,
    SUM(f.CANCELLED) AS Cancelled_Flights,
    ROUND(
        (SUM(f.CANCELLED) * 100.0) / COUNT(*),
        2
    ) AS Cancellation_Rate_Percent
FROM flights f
JOIN airlines a
    ON f.AIRLINE = a.IATA_CODE
GROUP BY a.AIRLINE
ORDER BY Cancellation_Rate_Percent DESC;

-- KPI 7: Busiest Origin Airports

SELECT
    a.AIRPORT AS Airport_Name,
    f.ORIGIN_AIRPORT AS Airport_Code,
    COUNT(*) AS Total_Flights
FROM flights f
JOIN airports a
    ON f.ORIGIN_AIRPORT = a.IATA_CODE
GROUP BY a.AIRPORT, f.ORIGIN_AIRPORT
ORDER BY Total_Flights DESC
LIMIT 10;


-- KPI 8: Airport Delay Performance
SELECT
    a.AIRPORT AS Airport_Name,
    f.ORIGIN_AIRPORT AS Airport_Code,
    COUNT(*) AS Total_Flights,
    ROUND(AVG(f.DEPARTURE_DELAY),2) AS Avg_Departure_Delay
FROM flights f
JOIN airports a
    ON f.ORIGIN_AIRPORT = a.IATA_CODE
WHERE f.CANCELLED = 0
GROUP BY a.AIRPORT, f.ORIGIN_AIRPORT
HAVING COUNT(*) > 1000
ORDER BY Avg_Departure_Delay DESC
LIMIT 10;

-- KPI 9: Best Performing Airports

SELECT
    a.AIRPORT AS Airport_Name,
    f.ORIGIN_AIRPORT AS Airport_Code,
    COUNT(*) AS Total_Flights,
    ROUND(AVG(f.DEPARTURE_DELAY),2) AS Avg_Departure_Delay
FROM flights f
JOIN airports a
    ON f.ORIGIN_AIRPORT = a.IATA_CODE
WHERE f.CANCELLED = 0
GROUP BY a.AIRPORT, f.ORIGIN_AIRPORT
HAVING COUNT(*) > 1000
ORDER BY Avg_Departure_Delay ASC
LIMIT 10;

-- KPI 10: Monthly Delay Trend

SELECT
    MONTH,
    ROUND(AVG(DEPARTURE_DELAY),2) AS Avg_Departure_Delay,
    ROUND(AVG(ARRIVAL_DELAY),2) AS Avg_Arrival_Delay,
    COUNT(*) AS Total_Flights
FROM flights
WHERE CANCELLED = 0
GROUP BY MONTH
ORDER BY MONTH;

-- KPI 11: Delay Cause Analysis

SELECT
    ROUND(AVG(AIR_SYSTEM_DELAY),2) AS Air_System_Delay,
    ROUND(AVG(SECURITY_DELAY),2) AS Security_Delay,
    ROUND(AVG(AIRLINE_DELAY),2) AS Airline_Delay,
    ROUND(AVG(LATE_AIRCRAFT_DELAY),2) AS Late_Aircraft_Delay,
    ROUND(AVG(WEATHER_DELAY),2) AS Weather_Delay
FROM flights;

-- KPI 12: Most Delayed Routes

SELECT
    ORIGIN_AIRPORT,
    DESTINATION_AIRPORT,
    COUNT(*) AS Total_Flights,
    ROUND(AVG(ARRIVAL_DELAY),2) AS Avg_Arrival_Delay
FROM flights
WHERE CANCELLED = 0
GROUP BY ORIGIN_AIRPORT, DESTINATION_AIRPORT
HAVING COUNT(*) >= 100
ORDER BY Avg_Arrival_Delay DESC
LIMIT 10;