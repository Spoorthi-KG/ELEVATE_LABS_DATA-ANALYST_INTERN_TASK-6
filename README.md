# ELEVATE_LABS_DATA-ANALYST_INTERN_TASK-6
# Sales Trend Analysis (Task 6 - Data Analyst Internship)

## 📌 Objective
Analyze monthly revenue and order volume from `online_sales` dataset using SQL.

## 📂 Files
- `online_sales.csv` → Sample dataset with `order_date`, `amount`, `product_id`
- `sales_analysis.sql` → SQL queries for trend analysis
- `results.txt` → Query results (monthly revenue, volume, top 3 months)
- `README.md` → Explanation of task

## 🛠 SQL Highlights
- Used `EXTRACT(MONTH FROM order_date)` and `EXTRACT(YEAR FROM order_date)` for grouping.
- `SUM(amount)` → Monthly revenue
- `COUNT(DISTINCT order_id)` → Order volume
- `ORDER BY` → Sorted results
- `LIMIT` → Top 3 months by revenue

## 🚀 Outcome
Learned how to:
- Perform time-based aggregations
- Compare monthly sales trends
- Identify best-performing months
