use studentmanagementsystem;
select * from student;

-- Task 1
select * from student where Dateofbirth > '2009-06-16';

-- Task 2
select * from student where firstname like "A%" or "J%";

-- Task 3
select * from student where firstname <> "Alice" and email like "%@example.com%";

 -- Assignment 2
 
 -- Task 1
 CREATE TABLE Person (
    PersonID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    age INT
);

-- Task 2
CREATE TABLE Employee3 (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    age INT
);

-- Task 3
INSERT INTO Person (PersonID, FirstName, LastName, age)
VALUES
(1, 'Alice', 'Smith', 25),
(2, 'Bob', 'Johnson', 30),
(3, 'Charlie', 'Brown', 28);

-- Task 4
INSERT INTO Employee3 VALUES
(101, 'David', 'Miller', 35),
(102, 'Emma', 'Wilson', 29),
(103, 'Frank', 'Taylor', 40);

select * from Person;
select * from Employee3;

-- Task 5
SELECT FirstName, LastName, age FROM Person
UNION
SELECT first_name, last_name, age FROM Employee3;






