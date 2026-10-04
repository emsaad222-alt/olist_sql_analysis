SELECT 
    YEAR(order_purchase_timestamp) AS yr,
    MONTH(order_purchase_timestamp) AS mth,
    COUNT(*) AS total_orders
FROM olist_orders_dataset
GROUP BY YEAR(order_purchase_timestamp), MONTH(order_purchase_timestamp)
ORDER BY yr, mth;