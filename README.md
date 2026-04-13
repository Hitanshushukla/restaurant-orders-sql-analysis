# restaurant-orders-sql-analysis
SQL analysis of restaurant order data to uncover item popularity, pricing trends, and ordering patterns.
🍽️ Restaurant Orders Data Analysis (SQL Project)
📌 Project Overview

This project analyzes restaurant order data using SQL to uncover insights related to item popularity, pricing, and customer ordering patterns. The goal is to simulate a real-world data analysis scenario and extract meaningful business insights.

📊 Dataset Description

The dataset consists of two tables:

menu_items
Contains details of menu items including item name, category, and price.
order_details
Contains transaction-level data including order date, time, and item IDs.

These tables are joined using item_id to perform analysis.

🎯 Key Business Questions
How many items are on the menu?
What are the least and most expensive items?
How many items are there in each category?
What is the average price within each category?
What is the date range of the dataset?
Which orders contain the highest number of items?
What are the least and most ordered items, and their categories?
🔍 Key Insights
The most ordered item was Hamburger with 622 orders.
The least ordered item was Chicken Tacos with 123 orders.
Certain categories (e.g., American) showed higher order volume compared to others.
Price distribution varies significantly across categories.
🛠️ SQL Skills Used
Joins (INNER JOIN / LEFT JOIN)
Aggregations (COUNT, AVG, MIN, MAX)
GROUP BY
Subqueries
Filtering aggregated results
🚀 Project Outcome

This project demonstrates the ability to:

Work with relational datasets
Perform data exploration and transformation using SQL
Derive actionable insights from raw data
