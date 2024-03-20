-- Age Distribution Analysis - 
-- The company is interested in a number of marketing campaigns and they would like to target different age groups. Write a query to display the order distribution across various age groups.

 SELECT COUNT(DISTINCT id) AS customer_count,
    CASE
        WHEN age <= 12 THEN 'Kids'
        WHEN age BETWEEN 13 AND 19 THEN 'Teenager'
        WHEN age BETWEEN 20 AND 55 THEN 'Adult'
        ELSE 'Senior'
    END AS age_group
FROM 
    users AS u
    INNER JOIN orders o ON u.id = o.user_id
WHERE
o.status NOT IN ('Cancelled', 'Returned')
GROUP BY age_group
ORDER BY age_group; 