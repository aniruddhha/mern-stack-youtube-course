drop database ytdb;

create database ytdb;

use ytdb;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

CREATE TABLE customer_audit_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    old_name VARCHAR(50),
    new_name VARCHAR(50),
    change_date DATETIME
);

create trigger audit_name_change
after update on customers
for each row
begin
    if new.customer_name <> old.customer_name then
        insert into customer_audit_log (customer_id, old_name, new_name, change_date)
        values (new.customer_id, old.customer_name, new.customer_name, now());
    end if;
end;

INSERT INTO customers (customer_id, customer_name) VALUES
(1, 'John Doe'),
(2, 'Jane Smith');

select * from customers;

select * from customer_audit_log;

UPDATE customers SET customer_name = 'John Smith' WHERE customer_id = 1;

drop trigger audit_name_change;

drop table customers;

drop table customer_audit_log;