use studentmanagementsystem;
select * from Employee;
desc Employee;
Alter table Employee drop column Department;
-- Task 1 
ALTER TABLE Employee ADD Salary DECIMAL(10,2),ADD Department VARCHAR(50);
desc Employee;
UPDATE Employee SET Salary = 60000, Department = 'IT' WHERE EmployeeId = 1;
UPDATE Employee SET Salary = 45000, Department = 'HR' WHERE EmployeeId = 2;
UPDATE Employee SET Salary = 75000, Department = 'IT' WHERE EmployeeId = 3;
UPDATE Employee SET Salary = 52000, Department = 'Sales' WHERE EmployeeId = 4;

select * from Employee where Salary > 50000 and Department="IT";

select * from products;
alter table products add column Price varchar(20);
insert into products values(300,"Chair","Electronics",78000);
insert into products values(303,"Tab","Electronics",88000);
insert into products values(304,"Pc","Electronics",8000);
insert into products values(305,"Laptop","Electronics",58000);
insert into products values(306,"Table","Furniture",90000);
insert into products values(307,"Cable","Electronics",95000);
update products set price=78550 where product_id=301;
update products set price=38550 where product_id=302;


-- Task 2
desc products;
select * from products where category="Electronics" or Price <70000;

-- Task 3
select Department,Avg(salary) as Average_salary from Employee group by department;











