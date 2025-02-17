-- 10. Determine the top 3 most ordered pizza types based on revenue.

SELECT 
    pizza_types.name,
    SUM(order_details.quantity * pizzas.price) AS revenue
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.name
ORDER BY revenue DESC
LIMIT 3;

-- To solve this query we will need 3 tables, pizzatypes, orderdetails and pizzas.
-- to calculate revenue we need to multiply the quanity and price coloumn which 
-- we did using join and then join the pizzatypes table too
-- group by name and order by revenue for easy understanding of table.
-- we also used the sum function as we want the total reveune and not revenue by name.
-- we used DESC as desending order and limit 3 as we want top 3. 