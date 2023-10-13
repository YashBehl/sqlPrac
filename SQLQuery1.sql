select * from tbl_Employee;

select upper(empName) from tbl_Employee;

select lower(empName) from tbl_Employee;

select len(empName) from tbl_Employee
where empID=51;

select substring(empName, 2, 5) as sub
from tbl_Employee
where empID=51;

select getdate();

select format(123456, '##-#-###');

select concat('abc','xyz','pqr');

select replace('abcd','b','e');

select trim('#1 ' from '#abcd  xyz1');

select count(empName) from tbl_Employee;

select sum(3+1);

select avg(empAge) from tbl_Employee;
select max(empAge) from tbl_Employee;
select min(empAge) from tbl_Employee;

select round(121.7869, 2);

select empAddress, avg(empAge) as age
from  tbl_Employee
group by empAddress;

select empAddress, avg(empAge) as age
from  tbl_Employee
group by empAddress
having count(empAddress)>=3;


