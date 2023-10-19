create table tbl_Students
(
	studentID int not null primary key,
	firstName varchar(50),
	lastName varchar(50)
);

create table tbl_Courses
(
	courseID int not null primary key,
	courseName varchar(50),
	departmentID int foreign key references tbl_Departments(departmentID)
);

create table tbl_Departments 
(
	departmentID int not null primary key,
	departmentName varchar(50)
);

create table tbl_Enrollments
(
	enrollmentID int not null primary key,
	studentID int foreign key references tbl_Students(studentID),
	courseID int foreign key references tbl_Courses(courseID),
	enrollmentDate date
);


select * from tbl_Students;
select * from tbl_Courses;
select * from tbl_Departments;
select * from tbl_Enrollments;



--Q1
select (firstName + ' ' + lastName) as fullName
from tbl_Students



--Q3
select firstName from tbl_Students


--Q4
create view vw_departmentIdOfEngineering
as
select departmentID from tbl_Departments
where departmentName = 'Engineering';

select * from vw_departmentIdOfEngineering;

create view vw_courseIdOfEngineering
as
select courseID from tbl_Courses
where departmentID = (select )

select (tbl_Students.firstName + ' ' + tbl_Students.lastName) as fullName
from tbl_Students
full join tbl_Enrollments
on tbl_Students.studentID = tbl_Enrollments.studentID
where tbl_Enrollments.courseID = ;