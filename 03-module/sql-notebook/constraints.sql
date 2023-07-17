create database ytdb;

use ytdb;

-- Primary Key Constraint
create table employees (
    emp_id INT primary key,
    emp_nm varchar(50),
    age int
);