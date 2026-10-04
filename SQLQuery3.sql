SELECT 
    SUM(TRY_CAST(i.price AS FLOAT)) AS total_revenue
FROM olist_order_items_dataset i
JOIN olist_orders_dataset o
    ON i.order_id = o.order_id
WHERE o.order_status = 'delivered';