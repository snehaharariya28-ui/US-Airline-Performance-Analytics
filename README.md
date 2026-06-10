# U.S. Airline Performance Analytics

## Overview

Flight delays and cancellations are among the most significant operational challenges in the U.S. aviation industry. These disruptions affect passenger satisfaction, airline profitability, airport operations, and overall transportation efficiency.

This project analyzes over **1 million U.S. domestic flight records** to investigate the factors contributing to delays and cancellations, evaluate airline and airport performance, identify operational bottlenecks, and generate actionable business insights.

Using **Python, MySQL, and Power BI**, the project transforms raw operational data into meaningful insights that can support data-driven decision-making for airlines, airport authorities, and transportation stakeholders.

---

## Business Problem

Airlines operate within a highly complex environment where delays and cancellations can result from multiple factors including weather conditions, airline operations, airport congestion, aircraft availability, and air traffic systems.

The objective of this project is to identify:

* The primary drivers of flight delays and cancellations.
* The most reliable and least reliable airlines.
* The busiest and most delay-prone airports.
* The major operational causes of delays.
* Route-level performance patterns.
* Opportunities for improving operational efficiency.

---

## Dataset Information

### Dataset Summary

| Metric               | Value     |
| -------------------- | --------- |
| Total Flights        | 1,048,575 |
| Total Airlines       | 14        |
| Origin Airports      | 315       |
| Destination Airports | 315       |
| Completed Flights    | 1,008,048 |
| Cancelled Flights    | 40,527    |
| Diverted Flights     | 2,544     |

### Dataset Files

* flights.csv
* airlines.csv
* airports.csv

### Dataset Source

Dataset provided as part of an internship project assignment. Original source information was not provided with the dataset.

---

## Tools & Technologies

| Category                | Tools            |
| ----------------------- | ---------------- |
| Data Cleaning           | Python, Pandas   |
| Data Analysis           | MySQL            |
| Data Visualization      | Power BI         |
| Development Environment | Jupyter Notebook |
| Documentation           | Markdown         |
| Version Control         | Git & GitHub     |

---

## Methodology

### 1. Data Preparation (Python)

The raw flight dataset contained missing and inconsistent values that affected database loading and analysis.

Using Python and Pandas:

- Inspected dataset quality and structure.
- Handled missing values and data inconsistencies.
- Prepared a clean version of the flight dataset.
- Generated `flights_clean.csv` for database import.

### 2. SQL Analysis (MySQL)

The cleaned dataset was imported into MySQL, where the primary analysis was performed.

Key analyses included:

- Flight status analysis
- Airline performance analysis
- Airport performance analysis
- Delay trend analysis
- Delay cause analysis
- Route performance analysis

### 3. Dashboard Development (Power BI)

The SQL findings were transformed into an interactive Power BI dashboard consisting of four analytical pages:

- Operational Overview
- Airline Performance Analysis
- Airport Analysis
- Delay Trends & Route Analysis

---

## Executive Findings

### Airline Performance

* Alaska Airlines recorded the best on-time performance with the lowest average arrival delay.
* Frontier Airlines recorded the highest average arrival delay.
* Hawaiian Airlines demonstrated the lowest cancellation rate.
* American Eagle Airlines recorded the highest cancellation rate.

### Airport Performance

* Atlanta International Airport handled the highest flight volume.
* Chicago O'Hare International Airport emerged as one of the most delay-prone major airports.
* Several smaller airports consistently achieved strong on-time performance.

### Delay Analysis

The largest contributors to delays were:

1. Late Aircraft Delay
2. Airline Delay
3. Air System Delay

Security-related delays contributed only a negligible portion of total delay time.

### Route Analysis

Several routes consistently experienced significantly higher delays than the network average, highlighting route-specific operational bottlenecks.

---

## Business Recommendations

Based on the findings, the following actions are recommended:

* Improve aircraft turnaround efficiency to reduce late aircraft delays.
* Monitor and optimize high-delay routes.
* Increase operational focus on airports with persistent delay patterns.
* Benchmark operational practices against top-performing airlines.
* Incorporate route and airport performance metrics into scheduling decisions.

---

## Dashboard Preview

### Dashboard 1 – Operational Overview

![Operational Overview](PowerBI/Dashboard/Dashboard_Page_1.png)

### Dashboard 2 – Airline Performance Analysis

![Airline Performance Analysis](PowerBI/Dashboard/Dashboard_Page_2.png)

### Dashboard 3 – Airport Analysis

![Airport Analysis](PowerBI/Dashboard/Dashboard_Page_3.png)

### Dashboard 4 – Delay Trends & Route Analysis

![Delay Trends & Route Analysis](PowerBI/Dashboard/Dashboard_Page_4.png)

---

## Project Structure

```text
Airline_Performance_Analysis/
│
├── Data/
│   ├── flights.csv
│   ├── flights_clean.csv
│   ├── airlines.csv
│   └── airports.csv
│
├── Notebooks/
│   └── Flights_Data_Cleaning.ipynb
│
├── SQL/
│   ├── Database_Setup.sql
│   └── KPI_Analysis.sql
│
├── PowerBI/
│   ├── Airline_Performance_Analysis.pbix
│   └── Dashboard/
│
├── Reports/
│   ├── Data_Import_and_Preprocessing.md
│   ├── SQL_Analysis_Report.md
│   └── Business_Insights_Report.md
│
└── README.md
```

## Reports

Detailed project documentation is available in the Reports folder:

* Data Import and Preprocessing Report
* SQL Analysis Report
* Business Insights Report

---

## Conclusion

## Conclusion

This analysis demonstrates the value of data-driven decision-making in aviation operations. By identifying performance trends, operational bottlenecks, and the primary drivers of delays and cancellations, the project provides actionable insights that can support improvements in reliability, efficiency, and overall passenger experience.

