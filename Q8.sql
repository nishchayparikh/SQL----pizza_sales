-- 8. Join relevant tables to find the category-wise distribution of pizzas.

SELECT 
    category, COUNT(name) AS All_names
FROM
    pizza_types
GROUP BY category;

-- This question should be in Basic but we have it here, its quite simple to solve
-- we took category and name coloumn from pizza_types and used count function to
-- to get the number of names per category. 