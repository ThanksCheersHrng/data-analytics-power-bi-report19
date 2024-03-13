SELECT category
FROM (
    SELECT pt.category, SUM(pt.sale_price * ot.product_quantity) AS total
    FROM dim_product pt
    INNER JOIN orders ot ON pt.product_code = ot.product_code
    INNER JOIN dim_store st ON ot.store_code = st.store_code
    WHERE st.country_region LIKE '%iltshire%'
    GROUP BY pt.category
    ORDER BY total DESC
) AS subquery
LIMIT 1;