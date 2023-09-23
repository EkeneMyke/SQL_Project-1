-- How many Vegetarian and Meatlovers were ordered by each customer?

SELECT *, COUNT(pizza_name) FROM customer_orders co
JOIN runner_orders ro ON co.order_id = ro.order_id
LEFT JOIN pizza_names pn ON co.pizza_id = pn.pizza_id
WHERE cancellation NOT LIKE '%Cancellation%'
GROUP BY customer_id
ORDER BY customer_id;
