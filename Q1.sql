-- Retrieve the total number of orders placed.
-- to get the total number of orders, we will count the total unique order_id in the list

SELECT 
    COUNT(order_id) AS total_orders
FROM
    orders; 

-- after running this query we got the total number of order_id named as total_orders.