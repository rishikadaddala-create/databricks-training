# PySpark Phase 4A – Bucketing & Segmentation

## Overview

This project demonstrates various customer segmentation techniques using **PySpark**. Customer spending data is analyzed and grouped into meaningful segments such as **Gold, Silver, and Bronze** using multiple bucketing approaches. The project also compares business-rule-based segmentation with Spark MLlib and SQL-based techniques to understand different strategies for customer classification.

---

## Objectives

- Calculate total customer spending
- Perform customer segmentation using different techniques
- Compare multiple bucketing methods
- Understand business-driven and data-driven segmentation
- Implement segmentation using both Spark SQL and PySpark

---

## Technologies Used

- Python
- PySpark
- Apache Spark
- Spark SQL
- Apache Spark MLlib
- Google Colab
- Git & GitHub

---

## Dataset

- `sales.csv`

---

# Workflow

## Step 1 – Data Ingestion

- Read the sales dataset
- Inspect the dataset schema

---

## Step 2 – Data Cleaning

- Handle missing values
- Validate data quality
- Remove invalid records (if any)

---

## Step 3 – Customer Spending Analysis

- Calculate the total spending for each customer
- Prepare data for segmentation

---

## Step 4 – Customer Segmentation

Apply multiple bucketing techniques to classify customers into meaningful groups.

---

# Bucketing Methods

## 1. Conditional Logic

Business-rule-based segmentation using predefined spending thresholds.

- Gold
- Silver
- Bronze

---

## 2. SQL CASE Statement

Perform customer segmentation using **Spark SQL CASE** expressions.

---

## 3. Bucketizer (Spark MLlib)

Use **Spark MLlib Bucketizer** to divide customers into spending buckets based on specified ranges.

---

## 4. Quantile-based Segmentation

Segment customers according to spending distribution using quantiles.

---

## 5. Window-based Ranking

Use the `percent_rank()` window function to rank customers based on total spending.

---

# Tasks Completed

- Customer spending calculation
- Gold, Silver, and Bronze segmentation
- Segment-wise customer count
- Quantile-based segmentation
- Bucketizer implementation
- Window-based customer ranking
- Spark SQL implementation
- Equivalent PySpark DataFrame implementation

---

# Key Concepts Covered

- Customer Segmentation
- Bucketing
- Conditional Logic
- Spark SQL CASE Statements
- Spark MLlib Bucketizer
- Quantiles
- Window Functions
- Ranking
- Business Analytics
- SQL to PySpark Conversion

---

# Learning Outcomes

After completing this project, I gained practical experience in:

- Customer segmentation using PySpark
- Business analytics with Apache Spark
- Comparing multiple segmentation techniques
- Ranking customers using window functions
- Using Spark MLlib Bucketizer
- Converting SQL logic into PySpark DataFrame operations

---

# Project Structure

```text
Phase-4A-Bucketing/
│
├── Phase4A_Bucketing.ipynb
├── datasets/
│   └── sales.csv
├── output/
└── README.md
```

---

# Future Enhancements

- Apply clustering algorithms such as K-Means for customer segmentation
- Visualize customer segments using Power BI or Tableau
- Automate segmentation for streaming data
- Integrate the pipeline with cloud storage services
- Extend segmentation using RFM (Recency, Frequency, Monetary) analysis

---

# Author

** Daddala Sai Rishika **
