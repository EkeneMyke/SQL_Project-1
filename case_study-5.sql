-- What was the maximum number of pizzas delivered in a single order?

SELECT order_id, COUNT(order_id) AS Quantity
FROM customer_orders
GROUP BY order_id
ORDER BY Quantity DESC
LIMIT 1;
