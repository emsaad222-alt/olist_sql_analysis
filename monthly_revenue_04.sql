SELECT 
    YEAR(o.order_purchase_timestamp) AS yr,
    MONTH(o.order_purchase_timestamp) AS mth,
    ROUND(SUM(TRY_CAST(i.price AS FLOAT)), 0) AS revenue
FROM olist_order_items_dataset i
JOIN olist_orders_dataset o
    ON i.order_id = o.order_id
WHERE o.order_status = 'delivered'
GROUP BY YEAR(o.order_purchase_timestamp), MONTH(o.order_purchase_timestamp)
ORDER BY yr, mth;