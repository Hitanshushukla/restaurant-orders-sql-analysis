# 🍽️ Restaurant Orders SQL Analysis

---

## 📌 Project Overview
This project analyzes restaurant order data using SQL to uncover insights related to item popularity, pricing, and customer ordering patterns.

The objective is to simulate a real-world data analysis workflow and derive meaningful business insights.

---
---

## 📚 Project Source

This project is based on a guided analytics project from **Maven Analytics**.

The dataset and business questions were provided as part of a structured learning project, which was then independently solved using SQL.

---

---

## 📊 Dataset Description

The dataset consists of two tables:

### 1. `menu_items`
- Item name  
- Category  
- Price  

### 2. `order_details`
- Order date  
- Order time  
- Item ID  

👉 Both tables are joined using `item_id`.

---

## 🎯 Key Business Questions

- How many items are on the menu?  
- What are the least and most expensive items?  
- How many items are there in each category?  
- What is the average price within each category?  
- What is the date range of the dataset?  
- Which orders contain the highest number of items?  
- What are the least and most ordered items and their categories?  

---

## 🔍 Key Insights

- Most ordered item: **Hamburger (622 orders)**  
- Least ordered item: **Chicken Tacos (123 orders)**  
- American category had higher overall order volume  
- Pricing varies significantly across categories  

---

## 🛠️ SQL Skills Used

- Joins (INNER JOIN, LEFT JOIN)  
- Aggregations (COUNT, AVG, MIN, MAX)  
- GROUP BY  
- Subqueries  
- Filtering aggregated results  

---

## 💻 Sample Query

```sql
SELECT 
    mi.item_name,
    mi.category,
    COUNT(*) AS total_orders
FROM order_details od
JOIN menu_items mi 
ON od.item_id = mi.menu_item_id
GROUP BY mi.item_name, mi.category
ORDER BY total_orders DESC;

---

🚀 Project Outcome
Performed structured data analysis using SQL
Extracted business insights from raw transactional data
Demonstrated ability to work with relational datasets
