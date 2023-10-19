select * from tbl_Students;
select * from tbl_Courses;
select * from tbl_Departments;
select * from tbl_Enrollments;


--Q3. Students enrolled in courses from more than one department
select (firstName + ' ' + lastName) as fullName
from vw_StudentsCoursesDepartmentsEnrollments
group by (firstName + ' ' + lastName)
having count(distinct departmentID) > 1;



--Q5. Students enrolled in each department for each course
select courseName, departmentName, count(distinct studentID) as totalStudents
from vw_StudentsCoursesDepartmentsEnrollments
group by courseName, departmentName;


--Q6. Students with same first name as department name.
select (firstName + ' ' + lastName) as fullName
from vw_StudentsCoursesDepartmentsEnrollments
where firstName = departmentName;



--Q8. Students not enrolled in any course in Advanced Sciences department
select (firstName + ' ' + lastName) as fullName 
from vw_StudentsCoursesDepartmentsEnrollments
where studentID not in (select studentID from vw_StudentsCoursesDepartmentsEnrollments where departmentName = 'Advanced Sciences');



--Q9. courses with most recent enrollment date for each department
select top 1 courseName, departmentName, max(enrollmentDate)
from vw_StudentsCoursesDepartmentsEnrollments
group by courseName, departmentName;
