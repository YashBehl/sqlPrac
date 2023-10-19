create database Assignment1;
use Assignment1;

--creating tables
create table tbl_Employees
(
	employeeID int not null primary key,
	firstName varchar(50),
	lastName varchar(50),
	departmentID int
);

create table tbl_Departments
(
	departmentID int not null primary key,
	departentName varchar(50),
);

create table tbl_Orders
(
	orderID int not null primary key,
	customerID int,
	orderDate date
);

create table tbl_OrderDetails
(
	orderDetailID int not null primary key,
	orderID int,
	productID int,
	quantity int
);

create table tbl_Products
(
	productID int not null primary key,
	productName varchar(50),
	unitPrice int
);

alter table tbl_Employees
add foreign key(departmentID) references tbl_Departments(departmentID);

alter table tbl_OrderDetails
add foreign key(orderID) references tbl_Orders(orderID);

alter table tbl_OrderDetails
add foreign key(productID) references tbl_Products(productID);

--inserting values

insert into tbl_Employees 
values (5, 'Arjun', 'Singh', 106),
(9, 'Aman', 'Sharma', 106),
(10, 'Ritika', 'Jain', 110),
(6, 'Shaurya', 'Garg', 101),
(8, 'Sneha', 'Gupta', 110),
(15, 'Arvind', 'Malhotra', 107),
(12, 'Aman', 'Pareek', 106)


insert into tbl_Departments 
values (101, '.net'),
(105, 'java'),
(106, 'nodejs'),
(107, 'android'),
(109, 'ios'),
(110, 'django')


insert into tbl_Orders 
values (1001, 10015, '2023-10-04'),
(1005, 10021, '2023-05-18'),
(1009, 10015, '2023-07-15'),
(1006, 10020, '2023-07-10')


insert into tbl_OrderDetails
values (1208, 1006, 1508, 200),
(1215, 1008, 1525, 250),
(1207, 1001, 1510, 200),
(1210, 1005, 1510, 150),
(1212, 1009, 1505, 300)


insert into tbl_Products
values (1508, 'Laptop', 40000),
(1525, 'SmartPhone', 30000),
(1510, 'Tablet', 25000),
(1530, 'Television', 65000)

insert into tbl_Orders 
values (1008, 10020, '2023-03-14');

insert into tbl_Products
values (1505, 'Charger', 5000);

--Q1
select firstName, lastName from tbl_Employees;

--Q2
select departmentID, count(employeeID) as number
from tbl_Employees
group by departmentID;

--Q3
select departentName from tbl_Departments
where departmentID not in (select departmentID from tbl_Employees);

--Q4
select * from tbl_Employees
where employeeID = (select max(employeeID) from tbl_Employees);


--Q5
select avg(quantity) as averageQuantity
from tbl_OrderDetails;

--Q6


--Q7
select year(orderDate), count(orderID) as orders
from tbl_Orders
group by year(orderDate);

--Q8
select productName from tbl_Products
where productID not in (select productID from tbl_OrderDetails);


--Q9
select firstName from tbl_Employees
where firstName in (select departentName from tbl_Departments);


--Q10
select tbl_OrderDetails.quantity, tbl_Products.unitPrice, (tbl_OrderDetails.quantity*tbl_Products.unitPrice) as totalPrice
from tbl_OrderDetails
full join tbl_Products
on tbl_OrderDetails.productID = tbl_Products.productID;


--Q11
select customerID from tbl_Orders
where orderID = (select tbl_OrderDetails.orderID from tbl_OrderDetails 
				 full join tbl_Products on tbl_OrderDetails.productID = tbl_Products.productID
				 where tbl_OrderDetails.quantity*tbl_Products.unitPrice = max(tbl_OrderDetails.quantity*tbl_Products.unitPrice));


--Q12
select customerID from tbl_Orders
where orderID = (;



--Q13
select departentName from tbl_Departments;



--Q14



--Q15
select tbl_OrderDetails.orderID
from tbl_OrderDetails
full join tbl_Products
on tbl_OrderDetails.productID = tbl_Products.productID;