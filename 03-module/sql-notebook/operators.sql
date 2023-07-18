use ytdb;

CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    age INT,
    city VARCHAR(50)
);

-- data generated from ChatGPT

INSERT INTO customers (id, name, email, age, city) VALUES (1, 'John Doe', 'john.doe@example.com', 30, 'New York');
INSERT INTO customers (id, name, email, age, city) VALUES (2, 'Jane Smith', 'jane.smith@example.com', 25, 'Los Angeles');
INSERT INTO customers (id, name, email, age, city) VALUES (3, 'Michael Johnson', 'michael.johnson@example.com', 40, 'Chicago');
INSERT INTO customers (id, name, email, age, city) VALUES (4, 'Emily Brown', 'emily.brown@example.com', 28, 'Houston');
INSERT INTO customers (id, name, email, age, city) VALUES (5, 'William Lee', 'william.lee@example.com', 35, 'San Francisco');
INSERT INTO customers (id, name, email, age, city) VALUES (6, 'Olivia Wilson', 'olivia.wilson@example.com', 22, 'Seattle');
INSERT INTO customers (id, name, email, age, city) VALUES (7, 'James Anderson', 'james.anderson@example.com', 33, 'Boston');
INSERT INTO customers (id, name, email, age, city) VALUES (8, 'Sophia Martinez', 'sophia.martinez@example.com', 29, 'Miami');
INSERT INTO customers (id, name, email, age, city) VALUES (9, 'Alexander Gonzalez', 'alexander.gonzalez@example.com', 31, 'Dallas');
INSERT INTO customers (id, name, email, age, city) VALUES (10, 'Isabella Taylor', 'isabella.taylor@example.com', 27, 'Phoenix');

-- Arithmatic operators
select age + 5 from customers;

-- want to change column name at the time of showing the results
select age + 5 as `Updated Age` from customers;

select age - 5 as `Updated Age` from customers;

-- Comparision Operator
-- greater than
select * from customers where age > 34;

-- not equal to
select * from customers where age <> 22;

-- Logical Operators
select * from customers where age < 34 and city = 'New York';

select * from customers where age < 34 or city = 'New York';

-- not
select * from customers where not age < 34;

-- Not Null Chek
select * from customers where email is not null;

select * from customers where email is null;