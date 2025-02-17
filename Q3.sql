-- 3. Identify the highest-priced pizza.

SELECT 
    pizza_types.name, pizzas.price
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
ORDER BY pizzas.price DESC
LIMIT 1;

-- To solve this question we arranged the price in descending order and took limit 1 so it just showed the top result and not other results.
-- We joined the tables to show the name and price of pizza using 2 different tables. Both the tables had pizza_type_id as common key which we ised to join the tables.