-- 9. Group the orders by date and calculate the average number of pizzas ordered per day.
SELECT 
    ROUND(AVG(tq), 2) as Average_nop
FROM
    (SELECT 
        orders.date, SUM(order_details.quantity) AS tq
    FROM
        orders
    JOIN order_details ON orders.order_id = order_details.order_id
    GROUP BY orders.date
    ORDER BY tq) AS total_nop;

-- To solve this query we did sum of quantity and then the average.
-- we will use two select statements. first select is for the sum of quantity
-- and then will use another select for average including the select for sum.