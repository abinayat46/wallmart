SELECT * FROM ecommerce.orders;
select order_delivered_customer_date from orders;
select order_delivered_customer_date,day(order_delivered_customer_date) from orders;
select order_delivered_customer_date,day(order_delivered_customer_date),month(order_delivered_customer_date) from orders;
select order_delivered_customer_date,day(order_delivered_customer_date),month(order_delivered_customer_date),monthname(order_delivered_customer_date) from orders;
select order_delivered_customer_date,day(order_delivered_customer_date),month(order_delivered_customer_date),monthname(order_delivered_customer_date)
,year(order_delivered_customer_date) from orders;
select order_delivered_customer_date,day(order_delivered_customer_date),month(order_delivered_customer_date),monthname(order_delivered_customer_date)
,year(order_delivered_customer_date),dayname(order_delivered_customer_date) from orders;
select datediff(order_delivered_customer_date, order_estimated_delivery_date) from orders;
select datediff(order_estimated_delivery_date,order_delivered_customer_date) from orders;
select * from orders where order_delivered_customer_date is null;
select order_status,count(order_status)from orders group by order_status;
select order_status, count(order_status) order_count from orders group by order_status order by order_count desc;
select customers.customer_id,orders.order_status from customers join orders on customers.customer_id =orders.customer_id; 
select customers.customer_id,orders.order_status from customers join orders on customers.customer_id =orders.customer_id where order_status = "cancelled";
select year(orders.order_purchase_timestamp) as years,sum(payments.payment_value)from orders join payments on orders.order_id=payments.order_id group by years;
select year(orders.order_purchase_timestamp) as years,round(sum(payments.payment_value),2)from orders join payments on orders.order_id=payments.order_id group by years;
select * from orders;