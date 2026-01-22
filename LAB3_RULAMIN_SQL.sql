use studentmanagementsystem;
select * from student;
 -- Task 1
update student set Email= "jane_Smith@example.com" where Firstname="Aarav" and lastname="Sharma";
-- Task 1
update student set Email= "Rogerwhite@example.com" where Firstname="Rohan" and lastname="Patel";
select * from student;
-- Task 2
delete from student where Lastname="Singh";
-- Task 3
select * from student where Firstname like "A%"; 

create table Employee2(emp_id int primary key,First_name varchar(20),Last_name varchar(20),Age int,Email varchar(50));
desc Employee2;

-- Task 1
insert into Employee2 values(1,"Jhon","Doe",28,"jhondeo@gmail.com");
insert into Employee2 values(2,"Rex","Ray",25,"rexdeo@gmail.com");
insert into Employee2 values(3,"Smith","Roy",27,"smithdfdeo@gmail.com");
insert into Employee2 values(4,"Alex","Smith",28,"Alexxxeo@gmail.com");
insert into Employee2 values(5,"Rocky","Smith",35,"Rocky5xeo@gmail.com");

select * from Employee2;

-- Task 2
select First_name,last_name from Employee2;

-- Task 3
select First_name,last_name,Age from Employee2 where Age>30;

-- Task 4
update Employee2 set age=age+1  where age>25;
select * from Employee2;

-- Task chatgpt
alter table Employee2 add job_title varchar(50),add salary varchar(20);






