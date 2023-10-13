Create Table tbl_Salary (   
  empID int primary key,  
  empSalary int,      
  empBonus int,    
);  
  
select * from tbl_Employee;

delete from tbl_Employee
where empName = 'Aakriti';

alter table tbl_Employee
alter column empID int not null;

alter table tbl_Employee
add primary key(empID);

insert into tbl_Salary       
values (51,80000, 20000),       
(11, 150000, 22000),       
(5, 300000, 18000),    
(25,100000, 15000)   

select * from tbl_Salary;

select tbl_Employee.empID, tbl_Employee.empName, tbl_Employee.empDepartment, tbl_Salary.empSalary, tbl_Salary.empBonus
from tbl_Employee
inner join tbl_Salary
on tbl_Employee.empID = tbl_Salary.empID;

select tbl_Employee.empID, tbl_Employee.empName, tbl_Employee.empDepartment, tbl_Salary.empSalary, tbl_Salary.empBonus
from tbl_Employee
left join tbl_Salary
on tbl_Employee.empID = tbl_Salary.empID;

select tbl_Employee.empID, tbl_Employee.empName, tbl_Employee.empDepartment, tbl_Salary.empSalary, tbl_Salary.empBonus
from tbl_Employee
right join tbl_Salary
on tbl_Employee.empID = tbl_Salary.empID;

select tbl_Employee.empID, tbl_Employee.empName, tbl_Employee.empDepartment, tbl_Salary.empSalary, tbl_Salary.empBonus
from tbl_Employee
full join tbl_Salary
on tbl_Employee.empID = tbl_Salary.empID;

select tbl_Employee.empID, tbl_Employee.empName, tbl_Employee.empDepartment, tbl_Salary.empSalary, tbl_Salary.empBonus
from tbl_Employee
cross join tbl_Salary;

select e1.empID, e2.empName, e2.empDepartment
from tbl_Employee e1, tbl_Employee e2;