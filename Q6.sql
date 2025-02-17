-- 6. Join the necessary tables to find the total quantity of each pizza category ordered.

SELECT 
    pizza_types.category,
    SUM(order_details.quantity) AS total_quantity
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.category
ORDER BY total_quantity DESC;

-- we did the same thing as question 5, instead of pizza type we calculated category vise.
-- if you know the concepts of JOINS then you all will be easy with understanding this kind
-- of questions but I'm trying to provide you all proper training for the JOINS. 