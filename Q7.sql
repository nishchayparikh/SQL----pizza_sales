-- 7. Determine the distribution of orders by hour of the day.

SELECT 
    HOUR(time) AS Hourly, COUNT(order_id) AS order_count
FROM
    orders
GROUP BY Hourly;


-- To solve this query we just need the orders table and for that reason we won't use the JOIN. 
-- As you can see that the time and order_id both have functions and that's why group by is necessary.