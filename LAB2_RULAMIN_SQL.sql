create database StudentManagementSystem;
use StudentManagementSystem;
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);
desc Student;

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseTitle VARCHAR(100),
    Credits INT
);
desc Course;

CREATE TABLE Instructor (
    InstructorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);
desc Instructor;

CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    EnrollmentDate DATE,
    StudentID INT,
    CourseID INT,
    InstructorID INT,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID)
);
desc Enrollment;

CREATE TABLE Score (
    ScoreID INT PRIMARY KEY,
    CourseID INT,
    StudentID INT,
    DateOfExam DATE,
    CreditObtained INT,
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);
desc Score;

CREATE TABLE Feedback(
					FeedbackID INT PRIMARY KEY,
                    StudentID INT,
                    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
                    Date date,
                    InstructorName varchar(50),
                    Feedback varchar(100)
                    );
DESC Feedback;

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Phone VARCHAR(15),
    Email VARCHAR(100)
);
desc Employee;

CREATE TABLE EmergencyContact (
    ContactID INT PRIMARY KEY,
    EmployeeID INT,
    ContactName VARCHAR(100),
    Relationship VARCHAR(50),
    Phone VARCHAR(15),
    Email VARCHAR(100),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);
desc EmergencyContact;

CREATE TABLE AccessLog (
    LogID INT PRIMARY KEY,
    EmployeeID INT,
    AccessedBy VARCHAR(100),
    AccessDateTime DATETIME,
    Purpose VARCHAR(255)
);
desc AccessLog;

INSERT INTO Student VALUES(1, 'Aarav', 'Sharma', '2002-04-15', 'Male', 'aarav.sharma@gmail.com', '9876500001');
INSERT INTO Student VALUES(2, 'Ananya', 'Iyer', '2001-09-22', 'Female', 'ananya.iyer@gmail.com', '9876500002');
INSERT INTO Student VALUES(3, 'Rohan', 'Patel', '2003-01-10', 'Male', 'rohan.patel@gmail.com', '9876500003');
INSERT INTO Student VALUES(4, 'Kavya', 'Reddy', '2002-11-05', 'Female', 'kavya.reddy@gmail.com', '9876500004');
INSERT INTO Student VALUES(5, 'Vikram', 'Singh', '2001-03-18', 'Male', 'vikram.singh@gmail.com', '9876500005');
select * from Student;

INSERT INTO Course VALUES(101, 'Database Management Systems', 4);
INSERT INTO Course VALUES(102, 'Operating Systems', 3);
INSERT INTO Course VALUES(103, 'Computer Networks', 3);
INSERT INTO Course VALUES(104, 'Software Engineering', 4);
INSERT INTO Course VALUES(105, 'Data Structures', 4);
SELECT * FROM Course;

INSERT INTO INSTRUCTOR VALUES(201,'Suresh','Nair','suresh.nair@college.edu');
INSERT INTO INSTRUCTOR VALUES(202,'Menna','Kulkarni','menna.k@college.edu');
INSERT INTO INSTRUCTOR VALUES(203,'Rajesh','Varma','rajesh.varma@college.edu');
INSERT INTO INSTRUCTOR VALUES(204,'Pooja','Chatterjee','pooja.c@college.edu');
INSERT INTO INSTRUCTOR VALUES(205,'Amitabh','Mishra','amitabh.m@college.edu');
SELECT * FROM INSTRUCTOR;

INSERT INTO ENROLLMENT VALUES(301,'2024-01-10',1,101,201);
INSERT INTO ENROLLMENT VALUES(302,'2024-01-11',2,102,202);
INSERT INTO ENROLLMENT VALUES(303,'2024-03-12',3,103,203);
INSERT INTO ENROLLMENT VALUES(304,'2024-02-13',4,104,204);
INSERT INTO ENROLLMENT VALUES(305,'2024-01-14',5,105,205);
SELECT * FROM ENROLLMENT;

INSERT INTO SCORE VALUES(401,101,1,'2024-03-15',88);
INSERT INTO SCORE VALUES(402,102,2,'2024-03-16',82);
INSERT INTO SCORE VALUES(403,103,3,'2024-03-17',90);
INSERT INTO SCORE VALUES(404,104,4,'2024-03-18',94);
INSERT INTO SCORE VALUES(405,105,5,'2024-03-19',86);
SELECT * FROM SCORE;

INSERT INTO Feedback VALUES(501, 1, '2024-04-01', 'Suresh Nair', 'Clear explanation of database concepts');
INSERT INTO Feedback VALUES(502, 2, '2024-04-02', 'Meena Kulkarni', 'Interactive and engaging lectures');
INSERT INTO Feedback VALUES(503, 3, '2024-04-03', 'Rajesh Verma', 'More practical sessions needed');
INSERT INTO Feedback VALUES(504, 4, '2024-04-04', 'Pooja Chatterjee', 'Very supportive and helpful');
INSERT INTO Feedback VALUES(505, 5, '2024-04-05', 'Amitabh Mishra', 'Excellent teaching methodology');
SELECT * FROM Feedback;

INSERT INTO Employee VALUES(1, 'Sanjay', 'Malhotra', 'HR', '9000011111', 'sanjay.m@company.com');
INSERT INTO Employee VALUES(2, 'Neha', 'Agarwal', 'IT', '9000022222', 'neha.a@company.com');
INSERT INTO Employee VALUES(3, 'Manish', 'Gupta', 'Finance', '9000033333', 'manish.g@company.com');
INSERT INTO Employee VALUES(4, 'Ritu', 'Bansal', 'Admin', '9000044444', 'ritu.b@company.com');
INSERT INTO Employee VALUES(5, 'Alok', 'Srivastava', 'Operations', '9000055555', 'alok.s@company.com');
select * from Employee;

INSERT INTO EmergencyContact VALUES(1, 1, 'Sunita Malhotra', 'Wife', '9111111111', 'sunita.m@gmail.com');
INSERT INTO EmergencyContact VALUES(2, 2, 'Rajesh Agarwal', 'Father', '9222222222', 'rajesh.a@gmail.com');
INSERT INTO EmergencyContact VALUES(3, 3, 'Anita Gupta', 'Mother', '9333333333', 'anita.g@gmail.com');
INSERT INTO EmergencyContact VALUES(4, 4, 'Vikas Bansal', 'Brother', '9444444444', 'vikas.b@gmail.com');
INSERT INTO EmergencyContact VALUES(5, 5, 'Pooja Srivastava', 'Sister', '9555555555', 'pooja.s@gmail.com');
select * from EmergencyContact;

INSERT INTO AccessLog VALUES(1, 1, 'HR Admin', '2024-05-01 10:30:00', 'Emergency contact verification');
INSERT INTO AccessLog VALUES(2, 2, 'IT Admin', '2024-05-02 11:00:00', 'System security audit');
INSERT INTO AccessLog VALUES(3, 3, 'HR Manager', '2024-05-03 09:45:00', 'Policy compliance review');
INSERT INTO AccessLog VALUES(4, 4, 'Admin Officer', '2024-05-04 14:20:00', 'Emergency drill');
INSERT INTO AccessLog VALUES(5, 5, 'HR Admin', '2024-05-05 16:10:00', 'Employee emergency update');
select * from AccessLog;





















                    
                    




