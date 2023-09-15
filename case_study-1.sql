-- How many unique customer orders were made?

SELECT customer_id, COUNT(customer_id) AS Orders
FROM customer_orders
GROUP BY customer_id;
