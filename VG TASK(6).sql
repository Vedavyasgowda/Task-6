CREATE DATABASE sales_db;
USE sales_db;

CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);

INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1, '2023-01-10', 120.50, 101),
(2, '2023-01-15', 75.00, 102),
(3, '2023-02-05', 200.00, 103),
(4, '2023-02-20', 300.75, 104),
(5, '2023-03-02', 90.00, 105),
(6, '2023-03-18', 150.00, 101),
(7, '2023-04-10', 500.00, 106),
(8, '2023-04-25', 250.25, 107),
(9, '2023-05-01', 400.00, 108),
(10, '2023-05-15', 120.00, 109),
(11, '2023-06-10', 85.00, 110),
(12, '2023-06-20', 300.00, 111),
(13, '2023-07-01', 170.50, 112),
(14, '2023-07-15', 200.00, 113),
(15, '2023-08-01', 220.00, 114);


select * from online_sales;

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

