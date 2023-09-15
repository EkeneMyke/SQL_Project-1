-- How many successful orders were delivered by each runner?

SELECT runner_id, COUNT(runner_id) AS Delivery
FROM runner_orders
WHERE cancellation NOT LIKE '%Cancellation%'
GROUP BY runner_id;
