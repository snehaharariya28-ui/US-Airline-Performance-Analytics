# Data Import and Preprocessing

## Objective

Prepare the airline performance dataset for SQL analysis and Power BI dashboard development.

## Tools Used

* MySQL Workbench 8.0 CE
* MySQL Server 8.0.45
* Python (Pandas)
* SQLAlchemy
* Jupyter Notebook

## Dataset Overview

* Total Records: 1,048,575
* Total Columns: 31
* Clean Dataset Size: 123.68 MB

## Database Preparation

* Imported `airlines.csv` into MySQL.
* Imported `airports.csv` into MySQL.
* Created and verified the `flights` table structure.
* Validated database connectivity and table availability.

## Data Validation

The dataset was examined to understand its structure, column types, and overall quality before loading it into the database.

Validation activities included:

* Reviewing column data types.
* Identifying missing values.
* Verifying record counts.
* Checking schema consistency across files.

## Data Cleaning

The flight dataset was processed using Pandas before database loading.

Cleaning steps performed:

* Standardized missing values as `NaN`.
* Preserved all original records and columns.
* Verified data types after cleaning.
* Generated the cleaned dataset file: `flights_clean.csv`.

## Data Loading

The cleaned dataset was loaded into MySQL using Python and SQLAlchemy.

Loading process:

* Established a connection between Python and MySQL.
* Performed a test import of 1,000 records.
* Validated successful insertion and table structure.
* Cleared test data.
* Imported the complete dataset into MySQL.

### Loading Configuration

* Import Method: Pandas `to_sql()`
* Chunk Size: 50,000 records
* Total Chunks Processed: 21

Chunk-based loading was used to improve memory efficiency and ensure stable processing of the large dataset.

## Final Status

* Airlines table successfully imported.
* Airports table successfully imported.
* Flights dataset cleaned and validated.
* 1,048,575 flight records successfully loaded into MySQL.
* Dataset ready for SQL analysis and Power BI dashboard development.
