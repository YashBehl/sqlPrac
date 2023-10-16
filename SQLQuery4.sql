select * from tbl_Employee;

--creating a view

create view vw_Employee
as select empID, empName, empDepartment
from tbl_Employee
where empDepartment = 'nodejs';


select * from vw_Employee;



--creating a trigger

create table tbl_EmployeeAuditLog
(
	logID int primary key identity(1,1),
	action nvarchar(50),
	empID int,
	logDate datetime
);


create trigger auditEmployeeChanges
on tbl_Employee
AFTER insert, update, delete
as
begin
	declare @action nvarchar(50);
	if exists (select * from inserted)
	begin
		if exists (select * from deleted)
			set @action = 'update';
		else 
			set @action = 'insert';
	end
	else
		set @action = 'delete';

	insert into tbl_EmployeeAuditLog (action, empID, logDate)
	select @action, empID, GETDATE()
	from inserted;
end;

select * from tbl_Employee;

insert into tbl_Employee values (25, 'Aman', '.net', 'Noida', 28);

select * from tbl_EmployeeAuditLog;

delete from tbl_Employee where empID = 10;

update tbl_Employee
set empAge = 35 where empID = 5;


--creating functions

create function dbo.getEmployeesAboveAnAge(@age int)
returns table
as 
return
(
	select * from tbl_Employee
	where empAge >= @age
);

select * from dbo.getEmployeesAboveAnAge(29);


--creating procedure

create procedure getEmployeesUnderAnAge
	@age int
as
begin
	select * from tbl_Employee
	where empAge <= @age;
end;

exec getEmployeesUnderAnAge @age = 27;