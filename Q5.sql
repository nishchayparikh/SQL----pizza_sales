-- 5. List the top 5 most ordered pizza types along with their quantities.

SELECT 
    pizza_types.name,
    SUM(order_details.quantity) AS Total_Quantity
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.name
ORDER BY Total_Quantity DESC
LIMIT 5;

-- to solve this query we used 3 tables as we are not able to connect order_details table with pizza_types.
-- so we used pizzas as a common table as it had common keys with both the tables. As you can see we have taken 
-- sum of quantity to get the total quantity of pizza types.