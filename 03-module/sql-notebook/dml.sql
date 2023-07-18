use ytdb;

-- see table details
desc employees;

-- inserting to employees table
insert into employees (emp_id, emp_nm, age) values (1, 'abc', 12);

insert into employees (emp_id, emp_nm, age) values (1, 'abc', 12);

insert into employees (emp_id, emp_nm, age) values (2, 'pqr', 13);

insert into employees values (3, 'pqr', 13);

insert into employees values (4, null, 13);

insert into product values (1, 'prd-111', 'sd344', 23);

insert into product values (2, 'prd-111', 'sd344', 23);

insert into product values (2, 'prd-111', 'sd345', 23);

insert into product values (3, 'prd-112', 'sd346', 2);

insert into product values (3, 'prd-112', 'sd346', 20);

-- update employee

update employees
set emp_nm = 'www'
where emp_id = 4;

update employees
set emp_nm = 'www';

-- delete employee

delete from employees where emp_id = 1;

delete from employees;