# SQL Analysis Report

## Objective

Perform SQL-based analysis on the airline performance dataset to identify operational trends, airline reliability, airport performance, delay patterns, and flight status metrics.

## Database Information

Database Name: airline_analysis

Tables Used:

* flights
* airlines
* airports

Total Records Analyzed: 1,048,575


## KPI Analysis

### Overall Flight Statistics

| Metric               | Value     |
| -------------------- | --------- |
| Total Flights        | 1,048,575 |
| Total Airlines       | 14        |
| Origin Airports      | 315       |
| Destination Airports | 315       |

### Flight Status Summary

| Metric            | Value     |
| ----------------- | --------- |
| Completed Flights | 1,008,048 |
| Cancelled Flights | 40,527    |
| Diverted Flights  | 2,544     |

### Delay Performance

| Metric                  | Value         |
| ----------------------- | ------------- |
| Average Departure Delay | 11.28 Minutes |
| Average Arrival Delay   | 7.61 Minutes  |


## Airline Performance Analysis

Airlines were evaluated using average arrival delay and cancellation rate.

### Best On-Time Performance

Alaska Airlines (AS) recorded the lowest average arrival delay of approximately 0.61 minutes.

### Worst On-Time Performance

Frontier Airlines (F9) recorded the highest average arrival delay of approximately 24.33 minutes.

### Most Reliable Airline

Hawaiian Airlines recorded the lowest cancellation rate at approximately 0.23%.

### Least Reliable Airline

American Eagle Airlines recorded the highest cancellation rate at approximately 11.79%.


## Airport Analysis

### Busiest Airports

The busiest origin airports were identified based on total departing flights.

Top airports included:

* ATL
* ORD
* DFW
* LAX
* DEN

ATL recorded the highest traffic volume with 66,599 departing flights.

### Airports with Highest Departure Delays

Chicago O'Hare International Airport recorded the highest average departure delay among major airports analyzed.

### Airports with Lowest Departure Delays

Hilo International Airport recorded the lowest average departure delay among the analyzed airports.


## Monthly Delay Analysis

Flight records covered three months of operational data.

Average delays increased across the observed period:

* Month 1: Lowest delay levels
* Month 2: Moderate increase in delays
* Month 3: Highest delay levels

This indicates worsening delay performance over the analyzed time period.


## Delay Cause Analysis

Major delay categories analyzed:

* Airline Delay
* Weather Delay
* Air System Delay
* Security Delay
* Late Aircraft Delay

Among all categories, Late Aircraft Delay and Airline Delay contributed the largest share of total delay minutes.

Security Delay contributed the smallest share of overall delays.


## Route Performance Analysis

Route-level analysis identified flight paths with the highest average arrival delays.

Examples of highly delayed routes included:

* MCO → TTN
* TTN → MCO
* ORD → CHO
* ORD → COU

These routes consistently reported significantly higher delay values than the overall network average.


## Conclusion

SQL analysis successfully transformed raw flight records into meaningful operational insights. The analysis identified airline reliability trends, airport performance differences, delay patterns, and route-level inefficiencies. These findings were later used to design interactive Power BI dashboards for business reporting and visualization.
