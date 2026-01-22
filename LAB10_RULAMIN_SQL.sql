use studentmanagementsystem;
select * from student;
-- Task 1
SELECT Student.StudentID,Student.FirstName,student.Lastname,Student.Email,Enrollment.EnrollmentID,Enrollment.CourseID
FROM Student FULL JOIN Enrollment ON Student.studentid = Enrollment.studentid;

-- Task 2
SELECT StudentID,FirstName,Lastname,Email,EnrollmentID,CourseID FROM Student NATURAL JOIN Enrollment;
