use studentmanagementsystem;
select * from student;
select * from enrollment;

-- Task 1
select student.studentId,student.Firstname,Student.lastname,enrollment.enrollmentid
from student right join enrollment on student.studentId = enrollment.studentid;

-- Task 2
select student.Studentid,student.Firstname,student.Lastname,student.Email,enrollment.Enrollmentid,enrollment.Courseid
from student left join enrollment on student.studentid =enrollment.studentid;


