-- 4. Identify the most common pizza size ordered.

SELECT 
    pizzas.size,
    COUNT(order_details.order_details_id) AS order_count
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizzas.size
ORDER BY order_count DESC;

-- we counted the number of order_details_id which is how many times the particular size of pizza is ordered. Then we arranged it to show pizza size and order_count in desc
-- order to make easily understandable table.
-- Two tables were joined using the common key again as two differetn values are showcased from different tables which makes complete sense for easy understanding.