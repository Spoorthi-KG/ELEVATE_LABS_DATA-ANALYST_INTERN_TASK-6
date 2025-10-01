-- Create table
CREATE TABLE online_sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);

-- Insert sample data
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1, '2024-01-15', 500, 101),
(2, '2024-01-20', 300, 102),
(3, '2024-02-05', 700, 101),
(4, '2024-02-18', 200, 103),
(5, '2024-03-02', 1000, 104),
(6, '2024-03-20', 400, 101),
(7, '2024-04-10', 250, 102),
(8, '2024-04-15', 850, 103),
(9, '2024-05-05', 600, 104),
(10, '2024-05-25', 300, 101);

-- Monthly revenue & order volume
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY year, month
ORDER BY year, month;

-- Top 3 months by revenue
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS monthly_revenue
FROM online_sales
GROUP BY year, month
ORDER BY monthly_revenue DESC
LIMIT 3;
