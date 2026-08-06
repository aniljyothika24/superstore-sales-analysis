create database superstore_db;
use superstore_db;

SELECT * FROM cleaned_superstore limit 10;

SELECT category, SUM(profit) AS total_profit FROM cleaned_superstore
GROUP BY category 
ORDER BY total_profit DESC;

SELECT customer_name, ROUND(SUM(sales),2) as total_sales FROM cleaned_superstore
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 5;

SELECT state, ROUND(SUM(sales),2) AS total_sales FROM cleaned_superstore
GROUP BY state
ORDER BY total_sales DESC
LIMIT 5;

SELECT state, SUM(profit) AS total_profit FROM cleaned_superstore
GROUP BY state
ORDER BY total_profit DESC
LIMIT 1;

SELECT state, COUNT(order_id) AS count_orders FROM cleaned_superstore
GROUP BY state
ORDER BY count_orders DESC
LIMIT 1;

SELECT state, ROUND(AVG(discount),2) AS average_discount from cleaned_superstore
GROUP BY state
ORDER BY average_discount DESC
LIMIT 1;

SELECT city, ROUND(SUM(sales),2) AS total_sale FROM cleaned_superstore
GROUP BY city
ORDER BY total_sale DESC
LIMIT 1;

SELECT region, ROUND(SUM(profit),2) AS total_profit FROM cleaned_superstore
GROUP BY region
ORDER BY total_profit DESC
LIMIT 1;

SELECT segment, ROUND(SUM(sales),2) AS total_sales FROM cleaned_superstore
GROUP BY segment
ORDER BY total_sales DESC
LIMIT 1;

SELECT sub_category, ROUND(SUM(profit),2) AS total_profit FROM cleaned_superstore
GROUP BY sub_category
ORDER BY total_profit DESC
LIMIT 1;

SELECT customer_name, COUNT(order_id) AS order_count FROM cleaned_superstore
GROUP BY customer_name
ORDER BY order_count DESC
LIMIT 1;

SELECT product_name, SUM(sales) as total_sales FROM cleaned_superstore
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 5;

SELECT month(order_date) AS month_no, monthname(order_date) AS month_name, ROUND(SUM(sales),2) AS total_sales 
FROM cleaned_superstore
GROUP BY month_no, month_name
ORDER BY total_sales DESC
LIMIT 5;

SELECT year(order_date) AS year_, ROUND(SUM(sales),2) AS total_sales 
FROM cleaned_superstore
GROUP BY year_
ORDER BY total_sales DESC
LIMIT 1;

SELECT ship_mode, ROUND(SUM(profit),2) AS total_profit FROM cleaned_superstore
GROUP BY ship_mode
ORDER BY total_profit DESC
LIMIT 1;

SELECT order_id,segment, SUM(profit) AS order_profit
FROM cleaned_superstore
GROUP BY order_id, segment;

SELECT segment, ROUND(AVG(order_profit),2) AS avg_profit_per_order
FROM(
SELECT order_id,segment, SUM(profit) AS order_profit
FROM cleaned_superstore
GROUP BY order_id, segment
) AS order_profit
GROUP BY segment
ORDER BY avg_profit_per_order DESC
LIMIT 1;

SELECT state, ROUND(AVG(total_sales),2) AS avg_sales_per_order 
FROM(
SELECT order_id,state, SUM(sales) AS total_sales From cleaned_superstore
GROUP BY order_id, state) AS total_sales_table
GROUP BY state
ORDER BY avg_sales_per_order DESC
LIMIT 3;

SELECT category, AVG(discount) AS avg_discount FROM cleaned_superstore
GROUP BY category
ORDER BY avg_discount DESC
LIMIT 1;

SELECT state, avg(total_sales) AS avg_sales_per_order FROM
(SELECT state, order_id, SUM(sales) AS total_sales FROM cleaned_superstore
GROUP BY state, order_id) AS total_sale
GROUP BY state
ORDER BY avg_sales_per_order DESC
LIMIT 5;