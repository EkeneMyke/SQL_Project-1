-- How many of each type of pizza was delivered?

SELECT co.pizza_id, pizza_name, COUNT(pizza_name) AS 'Quantity'
FROM customer_orders co
JOIN runner_orders ro ON co.order_id = ro.order_id
LEFT JOIN pizza_names pn ON co.pizza_id = pn.pizza_id
WHERE cancellation NOT LIKE '%Cancellation%'
GROUP BY co.pizza_id;
