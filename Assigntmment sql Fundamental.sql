use classicmodels;
-- 1 Lakukan EDA dalam database Classicmodels
-- a. Ada Berapa macam productName, productLine, productVendor?
select distinct productName, productLine, productVendor from products;

-- b. Tampilkan jumlah order berdasarkan ProductCode
select count(productCode),productCode from orderdetails group by productCode;

-- c. Tampilkan Jumlah order berdasarkan bulan pemesannya ?
select month(orderDate), count(*) as jumlah_order from orders group by month(orderDate);

-- d. Tampilkan total pejualan berdasarkan state nya ?
select c.state ,count(*) as total_penjualan
from customers as c inner join orders as o
on c.customerNumber=o.customerNumber group by state order by total_penjualan desc;

-- e. Berapakah Total Belanja masing masing customer dari 2003 - 2005
select c.customerNumber, c.customerName, Year(o.orderDate) as 'Year', count(c.customerNumber) as 'total_order_per_customer' 
from customers as c right join orders as o
on c.customerNumber=o.customerNumber where Year(o.orderDate) between 2003 and 2005 group by c.customerNumber 
order by total_order_per_customer desc ;

-- f. Product Line apa yang paling laku
select p.productLine, count(p.productLine) as total_penjualan
from products p right join orderdetails od
on p.productCode=od.productCode group by p.productLine order by total_penjualan desc;

-- 2. Mapping Pelanggan Berdasarkan Benua dari kolom Country
select *,case
when country = "USA" or country="Canada" or country="UK" then "America"
    when country = "Japan" or country="Singapore" or country="Hong Kong" or country="Philippines" or country="Israel" then "Asia"
    when country = "South Africa" then "Africa"
    when country = "Australia" or country= "New Zealand" then "Oseania"
    else "Eropa"
end as Region
from customers;

-- 3. Tampilkan semua cutomer yang tidak memiliki addressline 2 dan ganti nilai dengan NO_SECOND_ADDR
update customers
set addressLine2='NO_SECOND_ADDR'
where addressLine2 is null;

select * from customers;
