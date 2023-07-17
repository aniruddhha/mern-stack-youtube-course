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

-- Unique, Not null, Check

create table product(
    prd_id int primary key,
    prd_name varchar(50) not null,
    barcode varchar(50) unique,
    price int check (price >= 10)
)