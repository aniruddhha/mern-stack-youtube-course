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

create procedure InsertCustomer(in c_id int, in c_nm varchar(50))
begin
    insert into customers(customer_id, customer_name) values (c_id, c_nm);
end;

call InsertCustomer(1, 'abc');

CREATE PROCEDURE InsertOrder(IN order_id_param INT, IN customer_id_param INT, IN order_date_param DATE)
BEGIN
    INSERT INTO orders (order_id, customer_id, order_date)
    VALUES (order_id_param, customer_id_param, order_date_param);
END;

CALL InsertOrder(3, 1, '2023-08-11');


create procedure GetCustomerName(in c_id int, out c_nm varchar(50))
BEGIN
    select customer_name into c_nm from customers where customer_id = c_id;
END;

CREATE PROCEDURE GetAndShowCustomerName()
BEGIN
    DECLARE c_nm VARCHAR(50); -- here you defined the varible for accumilating the results
    CALL GetCustomerName(1, c_nm);
    SELECT c_nm;
END;


call GetAndShowCustomerName();

DECLARE c_nm VARCHAR(50);
CALL GetCustomerName(1, c_nm);
SELECT c_nm;