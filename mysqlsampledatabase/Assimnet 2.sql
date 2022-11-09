-- Assigntment 2 SQL
-- Soal no 1 a
-- select productName, count(productName) from products group by productName;
-- select productLine, count(productLine) from products group by productLine;
-- select productVendor, count(productVendor) from products group by productVendor;

-- Soal no 1 b

-- select productCode , sum(quantityOrdered) as Total_Order from orderdetails 
-- group by productCode;

-- Soal no 1 c
-- select month(orderDate), count(*) as Totalorderbymonth from orders group by month(orderDate);

-- Soal no 1 d 
select c.customerNumber , 
