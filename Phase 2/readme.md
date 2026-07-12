# SQL to PySpark Phase 2 – Revised Bridge Pack

## Overview

This project demonstrates the implementation of SQL queries and their equivalent PySpark DataFrame transformations using Apache Spark. The objective is to bridge the gap between traditional SQL and distributed data processing with PySpark by solving real-world data engineering tasks on customer and order datasets.

---

## Objectives

- Learn the relationship between SQL and PySpark.
- Perform basic data cleaning before analysis.
- Implement joins, filtering, grouping, sorting, and aggregation.
- Compare SQL queries with equivalent PySpark transformations.
- Build confidence in solving business analytics problems using Apache Spark.

---

## Technologies Used

- Python
- PySpark
- Apache Spark
- Spark SQL
- Google Colab

---

## Datasets

- **customers.csv**
- **orders.csv**

---

## Project Workflow

### 1. Data Ingestion

- Load customer dataset
- Load order dataset

### 2. Data Inspection

- Display sample records
- Print dataset schemas

### 3. Data Cleaning

- Remove rows with missing `customer_id`
- Validate column data types

### 4. SQL to PySpark Exercises

For each task, the SQL solution was written first and then converted into the equivalent PySpark DataFrame API.

---

## Exercises Completed

### Exercise 1 – Total Order Amount for Each Customer

Calculate the total spending of every customer.

**Output**

- Customer ID
- Total Spend

---

### Exercise 2 – Top 3 Customers by Total Spend

Identify the top three customers based on total purchase value.

**Output**

- Customer ID
- Total Spend

---

### Exercise 3 – Customers with No Orders

Find customers who have not placed any orders.

**Output**

- Customer ID
- Customer Name

---

### Exercise 4 – City-wise Total Revenue

Calculate total revenue generated from each city.

**Output**

- City
- Total Revenue

---

### Exercise 5 – Average Order Amount per Customer

Compute the average order value for every customer.

**Output**

- Customer ID
- Average Order Amount

---

### Exercise 6 – Customers with More Than One Order

Identify repeat customers.

**Output**

- Customer ID
- Order Count

---

### Exercise 7 – Sort Customers by Total Spend

Sort customers according to their spending in descending order.

**Output**

- Customer ID
- Total Spend

---

## SQL Operations Covered

- SELECT
- WHERE
- GROUP BY
- HAVING
- ORDER BY
- INNER JOIN
- LEFT JOIN
- Aggregate Functions
- LIMIT

---

## PySpark Concepts Covered

- DataFrame API
- Filtering
- Aggregations
- GroupBy
- Sorting
- Joins
- Column Transformations
- Data Cleaning
- Temporary SQL Views
- Spark SQL

---

## Learning Outcomes

Through this project, I learned how to:

- Read datasets into Spark DataFrames
- Perform data cleaning before analysis
- Convert SQL queries into PySpark DataFrame operations
- Execute joins and aggregations efficiently
- Generate business insights using Apache Spark
- Compare SQL syntax with PySpark transformations

---

## Project Structure

```
SQL-to-PySpark-Phase2/
│
├── SQL_to_PySpark_Phase2.ipynb
├── customers.csv
├── orders.csv
└── README.md
```

---

## Skills Demonstrated

- SQL
- PySpark
- Apache Spark
- Data Cleaning
- Data Transformation
- Data Aggregation
- Business Analytics
- ETL Concepts
- Data Engineering Fundamentals
---

## Author

** Daddala Sai Rishika ** 
