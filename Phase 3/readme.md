# SQL to PySpark – Phase 3: ETL Pipeline

## Overview

This project demonstrates the implementation of an end-to-end **ETL (Extract, Transform, Load)** pipeline using **PySpark**. The pipeline reads data from multiple file formats, performs data cleaning and transformation, executes business analytics, and converts SQL queries into equivalent PySpark DataFrame operations.

The project is developed as part of my Data Engineering learning journey to strengthen practical knowledge of Spark-based data processing and ETL workflows.

---

## Objectives

- Read and process data from CSV, JSON, and Parquet files
- Inspect schemas and understand dataset structure
- Handle missing and invalid data
- Perform data transformation and cleaning
- Join multiple datasets for analysis
- Perform business analytics using SQL and PySpark
- Convert SQL queries into PySpark DataFrame API
- Build a reusable ETL pipeline
- Generate analytical reports

---

## Technologies Used

- Python
- PySpark
- Apache Spark
- Google Colab
- SQL
- Git & GitHub

---

## Datasets

The project uses the following sample datasets:

- `customers.csv`
- `sales.csv`
- `products.json`
- `customers.parquet`

---

# ETL Workflow

## Extract

- Read CSV files
- Read JSON files
- Read Parquet files
- Validate schemas
- Preview datasets

---

## Transform

- Handle missing values
- Remove invalid records
- Standardize data
- Join customer and sales datasets
- Perform aggregations
- Calculate business metrics

---

## Load

- Display transformed reports
- Save the final reporting table
- Export processed data for further analysis

---

# Business Exercises

### Exercise 1
Calculate daily sales from sales transactions.

### Exercise 2
Calculate city-wise revenue by joining customer and sales datasets.

### Exercise 3
Identify repeat customers with more than two orders.

### Exercise 4
Find the highest spending customer in each city.

### Exercise 5
Generate a final reporting table containing:

- Customer ID
- Customer Name
- City
- Total Spend
- Order Count

---

# SQL to PySpark Conversion

Each business problem is implemented using:

- SQL Queries
- Equivalent PySpark DataFrame API

This demonstrates how traditional SQL operations can be translated into scalable Spark transformations.

---

# Key PySpark Concepts Covered

- Reading Multiple File Formats
- Schema Inspection
- Data Cleaning
- Handling Missing Values
- Filtering Records
- DataFrame Transformations
- Aggregations
- GroupBy Operations
- Joins
- Window Functions
- Sorting
- SQL vs PySpark
- ETL Pipeline Design

---

# Learning Outcomes

After completing this project, I gained practical experience in:

- Building ETL pipelines using PySpark
- Reading and processing large datasets
- Data cleaning and preprocessing
- SQL to PySpark conversion
- Joins and aggregations
- Window functions
- Business analytics with Spark
- Writing reusable data processing workflows

---

# Project Structure

```
Phase-3-ETL/
│
├── Phase3_ETL.ipynb
├── datasets/
│   ├── customers.csv
│   ├── sales.csv
│   ├── products.json
│   └── customers.parquet
├── output/
├── README.md
└── screenshots/ (optional)
```

---

# Future Improvements

- Connect ETL pipeline to cloud storage
- Automate pipeline execution using scheduling tools
- Process larger datasets
- Integrate Spark SQL with Hive
- Visualize reports using Power BI or Tableau

---

# Author
**Daddala Sai Rishika**
