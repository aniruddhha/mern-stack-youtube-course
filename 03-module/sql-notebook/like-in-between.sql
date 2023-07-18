use ytdb;

select * from customers;

delete from customers;

select * from customers;

drop table customers;

CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    age INT,
    city VARCHAR(50),
    dob date
);

INSERT INTO customers (id, name, email, age, city, dob) VALUES (1, 'John Doe', 'john.doe@example.com', 30, 'New York', '1993-04-15');
INSERT INTO customers (id, name, email, age, city, dob) VALUES (2, 'Jane Smith', 'jane.smith@example.com', 25, 'Los Angeles', '1998-09-22');
INSERT INTO customers (id, name, email, age, city, dob) VALUES (3, 'Michael Johnson', 'michael.johnson@example.com', 40, 'Chicago', '1983-12-10');
INSERT INTO customers (id, name, email, age, city, dob) VALUES (4, 'Emily Brown', 'emily.brown@example.com', 28, 'Houston', '1995-07-08');
INSERT INTO customers (id, name, email, age, city, dob) VALUES (5, 'William Lee', 'william.lee@example.com', 35, 'San Francisco', '1986-02-28'); 
INSERT INTO customers (id, name, email, age, city, dob) VALUES (6, 'Olivia Wilson', 'olivia.wilson@example.com', 22, 'Seattle', '2001-11-19'); 
INSERT INTO customers (id, name, email, age, city, dob) VALUES (7, 'James Anderson', 'james.anderson@example.com', 33, 'Boston', '1988-08-02'); 
INSERT INTO customers (id, name, email, age, city, dob) VALUES (8, 'Sophia Martinez', 'sophia.martinez@example.com', 29, 'Miami', '1992-06-25');
INSERT INTO customers (id, name, email, age, city, dob) VALUES (9, 'Alexander Gonzalez', 'alexander.gonzalez@example.com', 31, 'Dallas', '1990-03-11'); 
INSERT INTO customers (id, name, email, age, city, dob) VALUES (10, 'Isabella Taylor', 'isabella.taylor@example.com', 27, 'Phoenix', '1996-01-07'); 
INSERT INTO customers (id, name, email, age, city, dob) VALUES (11, 'Aiden Moore', 'aiden.moore@example.com', 24, 'New York', '1999-05-18');
INSERT INTO customers (id, name, email, age, city, dob) VALUES (12, 'Charlotte White', 'charlotte.white@example.com', 38, 'Chicago', '1984-10-29');
INSERT INTO customers (id, name, email, age, city, dob) VALUES (13, 'Ethan Harris', 'ethan.harris@example.com', 32, 'Houston', '1989-07-14');
INSERT INTO customers (id, name, email, age, city, dob) VALUES (14, 'Amelia Martin', 'amelia.martin@example.com', 29, 'Miami', '1992-06-07');
INSERT INTO customers (id, name, email, age, city, dob) VALUES (15, 'Liam Thompson', 'liam.thompson@example.com', 36, 'New York', '1985-03-25');
INSERT INTO customers (id, name, email, age, city, dob) VALUES (16, 'Mia Hall', 'mia.hall@example.com', 26, 'Chicago', '1997-09-12');
INSERT INTO customers (id, name, email, age, city, dob) VALUES (17, 'Noah Adams', 'noah.adams@example.com', 30, 'Houston', '1993-02-01');
INSERT INTO customers (id, name, email, age, city, dob) VALUES (18, 'Chloe Turner', 'chloe.turner@example.com', 23, 'Miami', '2000-11-04');
INSERT INTO customers (id, name, email, age, city, dob) VALUES (19, 'Lucas Parker', 'lucas.parker@example.com', 34, 'New York', '1987-08-16');
INSERT INTO customers (id, name, email, age, city, dob) VALUES (20, 'Ava Collins', 'ava.collins@example.com', 27, 'Chicago', '1994-06-09');

-- like operator - starts with
select * from customers where name like 'J%';

-- like operator - ends with
select * from customers where name like '%son';

-- like operator - contains
SELECT * FROM customers WHERE name LIKE '%an%';

-- like operator - contains
select * from customers where name like '_______e';

-- IN operator
select * from customers where city in ('Boston', 'Dallas', 'Chicago');

-- Between Operator
select * from customers where age between 30 and 45;

select * from customers where dob between '1985-01-01' and '1990-01-01';