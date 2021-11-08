select * from 

(select 
products.productName,

sum(orderdetails.quantityOrdered)  AS totalorder


from
orderdetails 

inner join 
products
on orderdetails.productcode=products.productcode



group by
products.productName 

order by totalorder desc

limit 2) as final

order by totalorder

limit 1


