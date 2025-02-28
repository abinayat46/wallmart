SELECT * FROM ecommerce.customers;

select * from customers where customer_state = 'MG' or customer_state = 'SP';

select * from customers where not (customer_state = 'MG' or customer_state = 'SP');

select * from customers where customer_state not in ("SC","PR","SP","MG");

select customer_city from customers where customer_city like "r%";

select * from customers where customer_city like "%r";

select * from customers where customer_city like "%de%";

select count(customer_id) from customers;
select count(customer_city) from customers;
select count(distinct customer_city) from customers;








