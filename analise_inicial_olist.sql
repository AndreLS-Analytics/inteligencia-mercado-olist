SELECT 
    t3.customer_state AS estado,
    COUNT(DISTINCT t1.order_id) AS total_pedidos,
    ROUND(SUM(t2.price)::NUMERIC, 2) AS faturamento_total,
    ROUND((SUM(t2.price) / COUNT(DISTINCT t1.order_id))::NUMERIC, 2) AS ticket_medio
FROM olist_orders_dataset AS t1
JOIN olist_order_items_dataset AS t2 
    ON t1.order_id = t2.order_id
JOIN olist_customers_dataset AS t3 
    ON t1.customer_id = t3.customer_id
GROUP BY t3.customer_state
ORDER BY faturamento_total DESC
LIMIT 5;


SELECT 
    t3.customer_state AS estado,
    COUNT(DISTINCT t1.order_id) AS total_pedidos,
    ROUND(AVG(t2.price)::NUMERIC, 2) AS preco_medio_produto,
    ROUND(AVG(t2.freight_value)::NUMERIC, 2) AS frete_medio_por_item,
    ROUND(SUM(t2.freight_value)::NUMERIC, 2) AS custo_total_frete
FROM olist_orders_dataset AS t1
JOIN olist_order_items_dataset AS t2 
    ON t1.order_id = t2.order_id
JOIN olist_customers_dataset AS t3 
    ON t1.customer_id = t3.customer_id
GROUP BY t3.customer_state
ORDER BY frete_medio_por_item DESC;
