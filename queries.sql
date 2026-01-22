-- Total revenue
SELECT SUM(amount) AS total_revenue FROM Orders;

-- Revenue per customer
SELECT c.name, SUM(o.amount) AS revenue
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name;

-- Customers with more than one order
SELECT customer_id
FROM Orders
GROUP BY customer_id
HAVING COUNT(*) > 1;
