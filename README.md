# ElevateLabsTask3
Here's a sample README file for your project:

---

# SQL Data Extraction and Analysis

## Project Overview

This project demonstrates how to use SQL queries to extract and analyze data from a database. The focus is on performing data aggregation, filtering, and summarization to derive meaningful insights. This repository contains SQL queries for various operations such as extracting sales data, calculating averages, creating views, indexing for performance, and identifying top categories.

## SQL Queries

The project includes the following SQL queries to analyze the sales data:

1. **Get all data under the sales table**
   ```sql
   -- Get all data under sales table
   SELECT * FROM sales;
   ```

2. **Get all orders with an amount greater than 1000**
   ```sql
   -- Get all orders with amount greater than 1000
   SELECT * FROM sales
   WHERE amount > 1000
   ORDER BY amount DESC;
   ```

3. **Total sales amount by city**
   ```sql
   -- Total sales amount by city
   SELECT ship_city, SUM(amount) AS total_sales
   FROM sales
   GROUP BY ship_city
   ORDER BY total_sales DESC;
   ```

4. **Average age of customers per age group**
   ```sql
   -- Average age of customers per age_group
   SELECT age_group, AVG(age) AS avg_age
   FROM sales
   GROUP BY age_group;
   ```

5. **Get customers who made purchases above the average amount**
   ```sql
   -- Get customers who made purchases above the average amount
   SELECT * FROM sales
   WHERE amount > (
       SELECT AVG(amount) FROM sales
   );
   ```

6. **Create a view for monthly sales summary**
   ```sql
   -- Create a view for monthly sales summary
   CREATE VIEW monthly_sales_summary AS
   SELECT month, SUM(amount) AS total_sales, COUNT(order_id) AS total_orders
   FROM sales
   GROUP BY month;
   
   -- Retrieve monthly sales summary
   SELECT * FROM monthly_sales_summary;
   ```

7. **Create an index on order_date and ship_city for faster filtering**
   ```sql
   -- Create an index on order_date and ship_city for faster filtering
   CREATE INDEX idx_order_date ON sales(order_date);
   CREATE INDEX idx_ship_city ON sales(ship_city);
   ```

8. **Top 3 categories by total sales**
   ```sql
   -- Top 3 categories by total sales
   SELECT category, SUM(amount) AS total
   FROM sales
   GROUP BY category
   ORDER BY total DESC
   LIMIT 3;
   ```

## Screenshots

The following screenshots are included to illustrate the results of running the above queries:

1. **Screenshot 1** - Output for retrieving all data from the sales table.
2. **Screenshot 2** - Output for orders with amount greater than 1000.
3. **Screenshot 3** - Total sales by city.
4. **Screenshot 4** - Average age of customers by age group.
5. **Screenshot 5** - Customers who made purchases above the average amount.
6. **Screenshot 6** - Monthly sales summary view.
7. **Screenshot 7** - Top 3 categories by total sales.

These images are included to provide a visual representation of the data analysis and query results.
