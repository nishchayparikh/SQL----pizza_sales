-- 2. Calculate the total revenue generated from pizza sales.

SELECT 
    ROUND(SUM(order_details.quantity * pizzas.price),
            2) AS Total_Revenue
FROM
    order_details
        JOIN
    pizzas ON pizzas.pizza_id = order_details.pizza_id;

-- As you can see here what we did is multiplied the quantity and price to get the the total revenue from pizza sales. Both the quantity and price were in different tables but we had one same key which was
-- pizza_id and that allowed us to calculate this query. Sum is used to get the sum of all the prices and round is used to get the round figure of the calculated result.
-- using Join is the main thing in this query as it allows us to join the two tables if they have any common key between them.  