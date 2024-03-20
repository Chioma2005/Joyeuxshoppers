-- Sales Analysis
-- Total revenue generated on a monthly basis, your result should include the date (displayed as the first day of the month), total sales, total orders as well as customer count.

SELECT 
    DATE_FORMAT(oi.created_at, '%Y-%m-01') AS month_date,
    sum(o.num_of_item) AS total_sales,
    SUM(oi.sale_price *o.num_of_item) AS total_revenue,
    COUNT(DISTINCT oi.order_id) AS total_orders,
    COUNT(DISTINCT oi.user_id) AS customer_count
FROM 
    order_items AS oi
INNER JOIN orders AS o
ON oi.order_id = o.order_id
WHERE 
    oi.status NOT IN ('Cancelled', 'Returned')
GROUP BY 
    month_date;
    