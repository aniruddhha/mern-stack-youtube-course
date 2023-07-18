use ytdb;

select * from employees;

insert into employees values(1, 'abc', 30);
insert into employees values(2, 'pqr', 32);
insert into employees values(3, 'xyz', 31);
insert into employees values(4, 'sqt', 33);
insert into employees values(5, 'hyt', 30);

select emp_id, age from employees;

select emp_id from employees;

-- where clause

select * from employees where age = 30;

select * from employees where emp_nm = 'aaa';

select * from employees where emp_nm = 'abc';

insert into employees values(6, 'abc', 30);

select emp_nm, age from employees where age = 30;

select * from employees;

select distinct emp_nm, age from employees where age = 30;