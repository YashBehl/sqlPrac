Create Table tbl_Employee
(
	empID int primary key,
	empName varchar(50),
	empDepartment varchar(50),
	empAddress varchar(50),
	empAge int
)

Insert into tbl_Employee VALUES (51, 'Rahul', '.net', 'Delhi', 28)
Insert into tbl_Employee VALUES (25, 'Ram', '.net', 'Faridabad', 26)
Insert into tbl_Employee VALUES (11, 'Priya', 'java', 'Delhi', 29)
Insert into tbl_Employee VALUES (20, 'Ankush', 'nodejs', 'Noida', 32)

Select * from tbl_Employee;

select max(empAge) from tbl_Employee;

select upper(empName) from tbl_Employee;

Update tbl_Employee
set empAddress = 'Ghaziabad'
where empID = 20;

alter table tbl_Employee
drop column empAge;

alter table tbl_Employee add empAge int;

update tbl_Employee
set empAddress = 'Delhi', empAge = 25
where empID = 51;

update tbl_Employee
set empAddress = 'Faridabad', empAge = 26
where empID = 25;

update tbl_Employee
set empAddress = 'Delhi', empAge = 30
where empID = 11;

update tbl_Employee
set empAddress = 'Ghaziabad', empAge = 29
where empID = 20;

select * from tbl_Employee;

Insert into tbl_Employee VALUES (5, 'Deepak', 'java', 'Ghaziabad', 40)
Insert into tbl_Employee VALUES (10, 'Aryan', '.net', 'Delhi', 29)
Insert into tbl_Employee VALUES (45, 'Aadhya', 'nodejs', 'Delhi', 24)
Insert into tbl_Employee VALUES (20, 'Aakriti', 'nodejs', 'Noida', 30)

alter table tbl_Employee
alter column empAddress varchar(100)

delete from tbl_Employee 
where empID=25;

select distinct empAddress from tbl_Employee;

select empAge from tbl_Employee
limit 5;

select * from tbl_Employee
order by empAge desc;

select upper(