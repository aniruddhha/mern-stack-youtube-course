drop database ytdb;

create database ytdb;

use ytdb;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE
);

INSERT INTO customers (customer_id, customer_name) VALUES
(1, 'John Doe'),
(2, 'Jane Smith');


INSERT INTO orders (order_id, customer_id, order_date) VALUES
(1, 1, '2023-08-09'),
(2, 2, '2023-08-10');

create view orders_view as 
select *
from orders;

select * from orders_view;

create view combined_view as
select o.order_id, c.customer_name, o.order_date
from orders o
join customers c on o.customer_id = c.customer_id;


select * from combined_view;

alter view orders_view as
select order_date
from orders;

select * from orders_view;

drop view orders_view;