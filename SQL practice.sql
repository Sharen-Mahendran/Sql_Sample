USE classicmodels;
 /* count number of orders numbers by product line in 2003 year*
Fields required - 
product name 
order number or order id 
year
/

/* 
order details table - ordernumber and product code - Note distinct order number
orders table - order number and order date
products table - porduct code and product line 
*/

select z

products.productline,
count(distinct(orderdetails.ordernumber)) as order_count

from
orderdetails 

inner join 
products 
on orderdetails.productcode=products.productcode

inner join
orders
on orderdetails.ordernumber=orders.ordernumber

where
year(orderdate)=2003
and products.productline!="Planes"

group by
products.productline
having
order_count>40


/* Find the second most selling product overall - Output should have only one row with the second best product name 
Fileds required
product name and quantity ordered
Tables required
products table - product name and product code
order details - quantity ordered and product code
*/

from products as p
inner join orderdetails as od
   on p.ProID = od.ProID
   group by p.ProID
   select sum(od.OrderQuantity) as total
   order by sum(od.OrderQuantity) desc
   limit 5

/* Give the top 10 product names by overall revenue. Hint: orderdetails and product table */

SELECT products.productName,
 sum(orderdetails.priceEach*orderdetails.quantityOrdered)  AS Revenue
FROM orderdetails

inner join 
products 
on orderdetails.productcode=products.productcode

group by productName

order by revenue asc

limit 10





inner join 
products 
on orderdetails.productcode=products.productcode



select 
customers.customerName;

sum(orderdetails.priceEach*orderdetails.quantityOrdered)  AS Revenue


from
orders 

inner join 
customers 
on orders.customerNumber=customers.customerNumber

inner join
ordersdetails
on orderdetails.ordernumber=orders.orderNumber


group by
customers.customerName ;
