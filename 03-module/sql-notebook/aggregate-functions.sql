select * from customers;

select count(*) from customers;

select count(*) as `Total Records` from customers;

-- count of non null i.e. count name column with non null values
SELECT COUNT(name) FROM customers;

-- sum of age
select sum(age) from customers;

-- max of age
select max(age) from customers;

-- min of age
select min(age) from customers;

-- avg of age
select avg(age) from customers;

-- aggregate functions with distinct 
select avg(distinct age) from customers;