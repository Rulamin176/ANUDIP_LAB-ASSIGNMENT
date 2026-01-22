use studentmanagementsystem;
select * from Student;

-- Task 1
select * from student order by lastname asc;

-- Task 2
SELECT gender, COUNT(*) AS total_students
FROM Student
GROUP BY gender;
