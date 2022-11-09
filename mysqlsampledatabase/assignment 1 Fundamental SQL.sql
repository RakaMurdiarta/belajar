select* from transaction;
-- Soal no 1
select transaction_id,purchase_date,sales from transaction;
select * from transaction where store_location in ('Richmond' ,'Brunswick' ,'Kew');
select* from customers;
select * from customers where customer_lifestage like '%families';
select store_location,sales from transaction order by sales;
SET SQL_SAFE_UPDATES = 0;
update customers set customer_lifestage='Young Fam'
where customer_lifestage='Young families';
select* from customers;