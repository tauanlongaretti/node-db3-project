-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

select productname, categoryname
from product
join category
on product.categoryid = category.id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

select id, companyname
from [order]
join shipper
on [order].shipvia = shipper.id
where [order].orderdate < "2012-08-09"

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

select productname, quantity 
from orderdetail
join product
on product.id = orderdetail.productid
where orderdetail.orderid = "10251"
order by [product].productname

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

select [Order].id as "OrderId", CompanyName, Employee.LastName as "EmployeeLastName"
from [Order] 
join Customer
on [Order].CustomerId = Customer.Id
join Employee
on [Order].EmployeeId = Employee.id