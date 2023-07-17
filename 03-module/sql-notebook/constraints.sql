create database ytdb;

use ytdb;

-- Primary Key Constraint
create table employees (
    emp_id INT primary key,
    emp_nm varchar(50),
    age int
);

-- Foreign Key Constraint

create table orders(
    ord_id int primary key,
    emp_id int,
    ord_dt date,
    foreign key (emp_id) references employees (emp_id)
);

