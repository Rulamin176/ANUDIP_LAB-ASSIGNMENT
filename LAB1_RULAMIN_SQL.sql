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

INSERT INTO Student VALUES(1, 'John', 'Doe', '2002-05-12', 'Male', 'john.doe@gmail.com', '9876543210');
INSERT INTO Student VALUES(2, 'Jane', 'Smith', '2001-08-23', 'Female', 'jane.smith@gmail.com', '9876543211');
INSERT INTO Student VALUES(3, 'Alex', 'Brown', '2003-01-15', 'Male', 'alex.brown@gmail.com', '9876543212');
INSERT INTO Student VALUES(4, 'Emily', 'Davis', '2002-11-30', 'Female', 'emily.davis@gmail.com', '9876543213');
INSERT INTO Student VALUES(5, 'Michael', 'Wilson', '2001-03-10', 'Male', 'michael.w@gmail.com', '9876543214');







                    
                    




