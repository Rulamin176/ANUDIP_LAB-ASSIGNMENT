use dpba;
create table BankAccount(Acoount_id int primary key,Account_holder_name varchar(50),Account_balance double);
desc BankAccount;

-- Task 1
INSERT INTO BankAccount VALUES (101, 'John Smith', 45000);
INSERT INTO BankAccount VALUES (102, 'John Karthy', 85000);
INSERT INTO BankAccount VALUES (103, 'Rex Roy', 55000);
INSERT INTO BankAccount VALUES (104, 'Kaile jane', 85000);
INSERT INTO BankAccount VALUES (105, 'Alex ga', 65000);
INSERT INTO BankAccount VALUES (106, 'Roha huo', 55000);
INSERT INTO BankAccount VALUES (107, 'Alen kille', 35000);
INSERT INTO BankAccount VALUES (108, 'Rocky ray', 25000);
select * from BankAccount;

-- Task 2
select Account_holder_name,Account_balance from BankAccount;

-- Task 3
select Account_holder_name,Account_balance from BankAccount where account_balance >30000;

-- Task 4
update Bankaccount set account_balance= 100000 where Acoount_id=101;
select * from Bankaccount;

-- Next Assignment
CREATE TABLE employees ( emp_id INT PRIMARY KEY, first_name VARCHAR(100), 
last_name VARCHAR(100), department VARCHAR(50), salary DECIMAL(10,2), bonus DECIMAL(10,2) );

CREATE TABLE orders ( order_id INT PRIMARY KEY, order_date DATE, status VARCHAR(50) );

CREATE TABLE products ( product_id INT PRIMARY KEY, product_name VARCHAR(100), category VARCHAR(50) );

INSERT INTO employees VALUES 
(1, 'Emma', 'Watson', 'Sales', 55000, 2000), 
(2, 'Liam', 'Johnson', 'HR', 48000, 1500),
(3, 'Olivia', 'Brown', 'Sales', 62000, 2500),
(4, 'Noah', 'Davis', 'IT', 70000, 3000);

INSERT INTO orders VALUES (201, '2021-12-15', 'Pending'), (202, '2022-02-10', 'Completed'), (203, '2021-11-05', 'Pending');

INSERT INTO products  VALUES (301, 'Laptop', 'Electronics'), (302, 'Office Chair', 'Furniture'), (303, 'Old Printer', 'Discontinued');
-- senario 1
SELECT * FROM employees WHERE department = 'Sales' AND salary > 50000;
-- senario 2
DELETE FROM employees WHERE emp_id = 4;
select * from employee;
-- senario 3
DELETE FROM orders WHERE order_date < '2022-01-01' AND status = 'Pending';
select * from orders;
-- senario 4
DELETE FROM products WHERE category = 'Discontinued';
select * from products;
-- senario 5
UPDATE employees SET bonus = bonus + 1000 WHERE department = 'Sales';
select * from employees;





