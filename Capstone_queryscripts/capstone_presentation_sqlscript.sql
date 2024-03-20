USE capstonedb;
-- Include a line graph displaying the revenue generated over the last 9 months of the data set
 SELECT
		DATE_FORMAT(o.created_at, '%Y-%m-01') AS month,
		SUM(num_of_item) AS total_quantity_sold,
        SUM(oi.sale_price*o.num_of_item) AS revenue,
		COUNT(DISTINCT o.order_id)  AS total_orders,
        COUNT(DISTINCT u.id)  AS total_customers,
        u.country
        
	FROM 
		order_items oi
	JOIN 
		orders o ON oi.order_id = o.order_id
	JOIN
		users u ON o.user_id = u.id
	WHERE 
		o.status NOT IN ('Cancelled', 'Returned')
	GROUP BY
		month
	ORDER BY
		month DESC
        LIMIT 9;
        
        
-- Include only the top 10 countries with the most sales contribution
USE capstonedb;
SELECT u.country, SUM(o.num_of_item) AS total_sales
FROM orders o
JOIN users u ON o.user_id = u.id
WHERE status NOT IN ('Cancelled', 'Returned')
GROUP BY u.country
ORDER BY total_sales DESC
LIMIT 10; 

-- display the gender distribution for all orders made
SELECT
    u.gender,
    COUNT(o.order_id) AS total_orders
FROM
    users u
JOIN
    orders o ON u.id = o.user_id
WHERE
    o.status NOT IN ('Cancelled', 'Returned')
GROUP BY
    u.gender;
    
    -- showing the customer distribution by age group
    SELECT
    CASE
        WHEN age <= 12 THEN 'Kids'
        WHEN age BETWEEN 13 AND 19 THEN 'Teenager'
        WHEN age BETWEEN 20 AND 55 THEN 'Adult'
        WHEN age >= 56 THEN 'Senior'
        ELSE '65+'
    END AS age_group,
    COUNT(u.id) AS total_customers
FROM
    users u
WHERE
    id IN (SELECT DISTINCT user_id FROM orders WHERE status NOT IN ('Cancelled', 'Returned'))
GROUP BY
    age_group
ORDER BY
    age_group;
    
    -- displaying the top-selling brands
SELECT
    p.brand,
    SUM(o.num_of_item) AS total_quantity_sold
FROM
    order_items oi
JOIN
    products p ON oi.id = p.id
JOIN
    orders o ON oi.order_id = o.order_id
WHERE
    o.status NOT IN ('Cancelled', 'Returned')
GROUP BY
    p.brand
ORDER BY
    total_quantity_sold DESC
LIMIT 10;

        

        
        
        