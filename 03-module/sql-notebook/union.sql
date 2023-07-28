drop database ytdb;

create database ytdb;

use ytdb;

CREATE TABLE employees_1 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50)
);

CREATE TABLE employees_2 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50)
);

CREATE TABLE employees_3 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);


INSERT INTO employees_1 (name, department) VALUES
    ('John Doe', 'HR'),
    ('Jane Smith', 'Finance'),
    ('Michael Johnson', 'IT');

INSERT INTO employees_2 (name, department) VALUES
    ('Alice Brown', 'Sales'),
    ('Robert White', 'Marketing'),
    ('Laura Davis', 'HR');

INSERT INTO employees_3 (name, department, salary) VALUES
    ('John Doe', 'HR', 50000.00),
    ('Jane Smith', 'Finance', 60000.00),
    ('Michael Johnson', 'IT', 55000.00);

select * from employees_1;

select * from employees_2;

select name, department from employees_1
union
select name, department from employees_2;

insert into employees_2 (name, department) values ('John Doe', 'HR');

select name, department from employees_1
union
select name, department from employees_2;

select name, department from employees_1
union all
select name, department from employees_2;

select name, department from employees_1
union 
select name, department from employees_3;

select * from employees_3;

select * from employees_1
union 
select * from employees_3;

select * from employees_1
union 
select * from employees_2;