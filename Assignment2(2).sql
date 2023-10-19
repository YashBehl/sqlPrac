select * from tbl_Students;
select * from tbl_Courses;
select * from tbl_Departments;
select * from tbl_Enrollments;


--Q1. full names of students enrolled in more than one course in computer science department
create view vw_StudentsCoursesDepartmentsEnrollments
as
select tbl_Students.studentID, tbl_Students.firstName, tbl_Students.lastName, tbl_Courses.courseID, tbl_Courses.courseName, tbl_Courses.departmentID, tbl_Departments.departmentName, tbl_Enrollments.enrollmentID, tbl_Enrollments.enrollmentDate
from tbl_Students
inner join tbl_Enrollments on tbl_Students.studentID = tbl_Enrollments.studentID
inner join tbl_Courses on tbl_Enrollments.courseID = tbl_Courses.courseID
inner join tbl_Departments on tbl_Courses.departmentID = tbl_Departments.departmentID;

select * from vw_StudentsCoursesDepartmentsEnrollments;

select (firstName + ' ' + lastName) as fullName
from vw_StudentsCoursesDepartmentsEnrollments
group by courseID
having departmentName = 'Computer Science';