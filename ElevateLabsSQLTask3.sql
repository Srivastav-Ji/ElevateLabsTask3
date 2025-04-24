-- Get all data under sales table
select * from sales;

-- Get all orders with amount greater than 1000
SELECT * FROM sales
WHERE amount > 1000
ORDER BY amount DESC;

-- Total sales amount by city
SELECT ship_city, SUM(amount) AS total_sales
FROM sales
GROUP BY ship_city
ORDER BY total_sales DESC;

-- Average age of customers per age_group
SELECT age_group, AVG(age) AS avg_age
FROM sales
GROUP BY age_group;

-- Get customers who made purchases above the average amount
SELECT * FROM sales
WHERE amount > (
    SELECT AVG(amount) FROM sales
);

-- Create a view for monthly sales summary
CREATE VIEW monthly_sales_summary AS
SELECT month, SUM(amount) AS total_sales, COUNT(order_id) AS total_orders
FROM sales
GROUP BY month;
SELECT * FROM monthly_sales_summary;

-- Create an index on order_date and ship_city for faster filtering
CREATE INDEX idx_order_date ON sales(order_date);
CREATE INDEX idx_ship_city ON sales(ship_city);

-- Top 3 categories by total sales
SELECT category, SUM(amount) AS total
FROM sales
GROUP BY category
ORDER BY total DESC
LIMIT 3;




