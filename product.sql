SELECT * FROM ecommerce.products;
select products.product_category,payments.payment_value from products join order_items on products.product_id=order_items.product_id join payments on payments.order_id=order_items.order_id;
select(products.product_category) category, sum(payments.payment_value) sales from products join order_items on products.product_id=order_items.product_id join payments on payments.order_id=order_items.order_id group by category order by sales desc;

SELECT category 
FROM (
    SELECT products.product_category AS category, 
           SUM(payments.payment_value) AS sales 
    FROM products 
    JOIN order_items ON products.product_id = order_items.product_id 
    JOIN payments ON order_items.order_id = payments.order_id 
    GROUP BY category 
    ORDER BY sales DESC 
    LIMIT 1
) AS a;

