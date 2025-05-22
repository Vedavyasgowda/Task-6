
#  Task 6: Sales Trend Analysis Using SQL Aggregations

##  Objective
The objective of this task is to analyze **monthly sales revenue** and **order volume** using SQL. The goal is to derive time-based insights from transaction data using aggregate functions like `SUM()`, `COUNT()`, and grouping logic (`GROUP BY YEAR/MONTH`).

---

##  Tools Used
- MySQL Workbench
- SQL (MySQL syntax)

---

## Dataset Overview

- **Table Name:** `online_sales`
- **Columns:**
  - `order_id`: Unique order identifier
  - `order_date`: Date of the order
  - `amount`: Revenue from the order
  - `product_id`: Identifier for the product sold

---

##  SQL Steps Executed

### 1. **Database and Table Creation**
sql
CREATE DATABASE sales_db;
USE sales_db;

CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);


### 2. **Sample Data Insertion**
- Inserted 15 rows of sales data across 8 months in 2023.

### 3. **Basic Table View**
sql
SELECT * FROM online_sales;


### 4. **Monthly Revenue and Order Volume**
sql
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
GROUP BY 
    YEAR(order_date), MONTH(order_date)
ORDER BY 
    year, month;


### 5. **Top 3 Months by Revenue**
sql
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue
FROM 
    online_sales
GROUP BY 
    YEAR(order_date), MONTH(order_date)
ORDER BY 
    total_revenue DESC
LIMIT 3;


---

##  Insights

- Revenue was recorded for each month from January to August 2023.
- Sales peaked in April and May.
- The `GROUP BY` and aggregation functions allowed identifying trends over time.
- The `ORDER BY` and `LIMIT` clauses helped rank top-performing months.

---

##  Files Included

- `VG TASK(6).sql` – SQL file with database creation, data, and analysis queries
- `README.md` – This file

---

##  Author

**[GUDIPALLI VEDAVYAS ]**  
Data Analyst Intern  
