select 
employees.employeeNumber, employees.firstName, employees.lastName, employees.reportsTo

from Employees

where reportsTo= 
(select
employees.employeeNumber

from
employees

where firstName='Mary' and lastName='patterson' and employeeNumber != 'NULL')






