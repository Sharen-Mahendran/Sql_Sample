select 
customers.customerName,

sum(orderdetails.priceEach*orderdetails.quantityOrdered)  AS Revenue


from
orders 

inner join 
customers 
on orders.customerNumber=customers.customerNumber

inner join
orderdetails
on orders.orderNumber=orderdetails.ordernumber


group by
customers.customerName 

order by revenue desc

limit 2
 