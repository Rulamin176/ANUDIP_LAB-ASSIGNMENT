use studentmanagementsystem;
select * from student;
select * from enrollment;

-- Task 
select student.StudentID,student.FirstName,student.LastName,enrollment.EnrollmentID,enrollment.CourseID
from Student inner join enrollment on
student.StudentID=enrollment.StudentID;
