# Business Insights Report

## Executive Summary

This analysis was conducted on 1,048,575 U.S. domestic flight records to evaluate airline performance, airport efficiency, operational reliability, delay patterns, and route-level performance. The findings provide insights into factors affecting flight operations and identify opportunities for improving customer experience and operational efficiency.

---

## Dashboard 1: Operational Overview

The dataset contains:

* Total Flights: 1,048,575
* Total Airlines: 14
* Origin Airports: 315
* Destination Airports: 315

Flight status distribution shows:

* Completed Flights: 1,008,048
* Cancelled Flights: 40,527
* Diverted Flights: 2,544

### Key Insight

More than 96% of all flights were successfully completed, indicating overall operational stability across the airline network. However, over 40,000 cancellations still represent a significant source of customer disruption and operational cost.

### Business Impact

Even a relatively small cancellation percentage can affect thousands of passengers, making cancellation management a critical performance indicator for airlines.

---

## Dashboard 2: Airline Performance Analysis

Airline-level analysis revealed substantial differences in operational performance.

### Best On-Time Performance

Alaska Airlines (AS) recorded the lowest average arrival delay at approximately -0.61 minutes, indicating highly reliable scheduling performance.

### Worst On-Time Performance

Frontier Airlines (F9) recorded the highest average arrival delay at approximately 24.33 minutes.

### Cancellation Performance

Hawaiian Airlines (HA) recorded the lowest cancellation rate at approximately 0.23%.

American Eagle Airlines (MQ) recorded the highest cancellation rate at approximately 11.79%.

### Key Insight

Strong performance in both delay management and cancellation control directly contributes to customer satisfaction and operational efficiency. Airlines demonstrating consistently low delays and low cancellation rates establish a significant competitive advantage.

### Business Impact

Passengers are more likely to prefer airlines with reliable schedules, while airlines with persistent delays and cancellations may face reputational damage and increased operational costs.

---

## Dashboard 3: Airport Analysis

Airport performance varied significantly across the network.

### Busiest Airports

The highest traffic volumes were observed at:

* Atlanta International Airport (ATL)
* Chicago O'Hare International Airport (ORD)
* Dallas/Fort Worth International Airport (DFW)
* Los Angeles International Airport (LAX)
* Denver International Airport (DEN)

ATL handled the largest number of departing flights.

### Airports with Highest Delays

Several airports recorded substantially higher average arrival delays than the network average, with TTN and ILG showing the highest delay levels.

### Airports with Lowest Delays

Airports such as CNY, BTM, YAK, and LWS demonstrated the strongest on-time performance.

### Key Insight

Airport performance has a direct influence on network efficiency. High-traffic airports often face congestion-related challenges that contribute to delays, while smaller airports may benefit from reduced operational complexity.

### Business Impact

Identifying high-delay airports helps airlines improve scheduling strategies and resource allocation while providing valuable information for passengers and airport management.

---

## Dashboard 4: Delay Trends and Route Analysis

### Monthly Delay Trends

Average arrival delays showed a declining trend across the analyzed period:

* Month 3: 11.40 minutes
* Month 2: 8.32 minutes
* Month 1: 5.81 minutes

### Key Insight

Operational performance improved over time, resulting in lower average delays in later periods of the dataset.

### Delay Cause Analysis

Average delay contribution by category:

* Late Aircraft Delay: 22.92 minutes
* Airline Delay: 18.20 minutes
* Air System Delay: 13.69 minutes
* Weather Delay: 3.55 minutes
* Security Delay: 0.06 minutes

### Key Insight

Late Aircraft Delay and Airline Delay were the dominant contributors to overall flight delays, while Security Delay had minimal impact.

### Business Impact

Improving aircraft turnaround efficiency and airline operational processes offers the greatest opportunity for reducing delays across the network.

---

## Route-Level Performance

Several routes consistently recorded significantly higher delays than the network average.

The most delayed routes included:

* IAD → TTN
* RIC → CAE
* JAC → JFK
* TTN → MSP
* LGA → IND

### Key Insight

Delay performance is not uniformly distributed across the route network. Certain routes experience recurring operational challenges that warrant further investigation.

### Business Impact

Route-specific monitoring enables airlines to identify bottlenecks, improve scheduling accuracy, and allocate resources more effectively.

---

## Strategic Recommendations

Based on the analysis, the following actions are recommended:

1. Focus operational improvements on reducing Late Aircraft Delays and Airline Delays.
2. Monitor airports with consistently high delay levels and investigate root causes.
3. Review scheduling and operational practices for highly delayed routes.
4. Benchmark airline operations against top-performing carriers such as Alaska Airlines and Hawaiian Airlines.
5. Incorporate airport and route performance metrics into planning and resource allocation decisions.

---

## Conclusion

The analysis demonstrates that flight performance is influenced by a combination of airline efficiency, airport operations, delay causes, and route-specific factors. While the overall network exhibits strong completion rates, opportunities remain to reduce delays and cancellations through targeted operational improvements. The Power BI dashboard provides an interactive view of these insights and supports data-driven decision-making across multiple levels of airline operations.
