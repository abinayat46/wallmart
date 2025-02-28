SELECT * FROM ecommerce.payments;

select * from payments where payment_type = 'credit_card' and payment_value >=1000 and payment_installments = 1;

select * from payments where payment_value between 150 and 200;

Select * from payments order by payment_value desc;

Select * from payments order by payment_value, payment_type desc;

select * from payments where payment_installments = 1 order by payment_value desc;

select * from payments limit 2,3;

select sum(payment_value) from payments;

use ecommerce;
select round(sum(payment_value)) as total_renuve from payments;

select max(payment_value) from payments;
select min(payment_value) from payments;
select round(avg(payment_value),2) from payments;
select count(payment_value) from payments;

select * from payments limit 4;

select sum(payment_value) as total_revenue from payments;
select round(sum(payment_value),2) as total_revenue from payments;
select max(payment_value) from payments;
select min(payment_value) from payments;
select avg(payment_value) from payments;
select round(avg(payment_value),2) from payments;

select payment_value, ceil(payment_value)from payments;
select payment_value, ceil(payment_value),floor(payment_value)from payments;
select payment_type,avg(payment_value)from payments group by payment_type;
select payment_type,round(avg(payment_value),2)from payments group by payment_type;
select payment_type,round(avg(payment_value),2)from payments where payment_installments = 1 group by payment_type;
select payment_type,round(avg(payment_value),2)from payments where payment_installments <=5 group by payment_type;
select payment_type,round(avg(payment_value),2)from payments where payment_installments =1 group by payment_type;
select payment_type,round(avg(payment_value),2)from payments group by payment_type having avg(payment_value) >=100;
select t1.order_id,t2.order_id from payments as t1, payments as t2 where t1.payment_type=t2.payment_type;









