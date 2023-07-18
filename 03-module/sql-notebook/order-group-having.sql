drop table customers;

CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    age INT,
    city VARCHAR(50),
    dob date
);

INSERT INTO customers (id, name, email, age, city, dob) VALUES
(1, 'John Smith', 'john@example.com', 30, 'New York', '1993-08-15'),
(2, 'Jane Doe', 'jane@example.com', 25, 'Los Angeles', '1998-04-22'),
(3, 'Michael Johnson', 'michael@example.com', 22, 'Chicago', '2001-11-09'),
(4, 'Emma Lee', 'emma@example.com', 28, 'San Francisco', '1995-12-30'),
(5, 'William Brown', 'william@example.com', 35, 'Boston', '1988-07-03'),
(6, 'Olivia Wilson', 'olivia@example.com', 27, 'Seattle', '1996-03-19'),
(7, 'James Anderson', 'james@example.com', 33, 'Houston', '1989-09-27'),
(8, 'Sophia Martin', 'sophia@example.com', 24, 'Dallas', '1999-05-12'),
(9, 'Benjamin Taylor', 'benjamin@example.com', 29, 'Miami', '1992-11-02'),
(10, 'Ava Garcia', 'ava@example.com', 31, 'Phoenix', '1990-12-18'),
(11, 'Ethan Martinez', 'ethan@example.com', 26, 'Atlanta', '1997-02-25'),
(12, 'Isabella Hernandez', 'isabella@example.com', 23, 'Denver', '1999-09-08'),
(13, 'Mason Rivera', 'mason@example.com', 34, 'Philadelphia', '1987-04-11'),
(14, 'Mia Lopez', 'mia@example.com', 27, 'San Diego', '1996-08-29'),
(15, 'Alexander Hill', 'alexander@example.com', 32, 'Chicago', '1989-01-05'),
(16, 'Charlotte Green', 'charlotte@example.com', 29, 'Los Angeles', '1992-06-17'),
(17, 'Daniel Adams', 'daniel@example.com', 26, 'San Francisco', '1997-03-22'),
(18, 'Scarlett Hughes', 'scarlett@example.com', 28, 'New York', '1995-07-14'),
(19, 'Matthew Bailey', 'matthew@example.com', 30, 'Dallas', '1991-10-28'),
(20, 'Grace Cooper', 'grace@example.com', 25, 'Seattle', '1998-11-30'),
(21, 'Aiden Richardson', 'aiden@example.com', 24, 'Phoenix', '1999-09-18'),
(22, 'Sofia Torres', 'sofia@example.com', 31, 'Miami', '1990-02-09'),
(23, 'Michaela Morris', 'michaela@example.com', 26, 'Boston', '1997-05-07'),
(24, 'Liam King', 'liam@example.com', 27, 'Houston', '1996-06-25'),
(25, 'Evelyn Wright', 'evelyn@example.com', 33, 'Denver', '1988-12-19'),
(26, 'Harper Stewart', 'harper@example.com', 29, 'San Diego', '1992-03-11'),
(27, 'Logan Mitchell', 'logan@example.com', 28, 'Los Angeles', '1995-08-22'),
(28, 'Aria Ramirez', 'aria@example.com', 30, 'Chicago', '1993-10-14'),
(29, 'Carter Butler', 'carter@example.com', 25, 'San Francisco', '1998-09-02'),
(30, 'Luna Barnes', 'luna@example.com', 22, 'New York', '2001-01-31');


select * from customers;

-- order by single column

select * from customers order by name asc;

select * from customers order by age desc;

select * from customers order by age desc, name asc;

-- group by
SELECT city, COUNT(*) FROM customers GROUP BY city;

SELECT city, COUNT(*) FROM customers order by city desc GROUP BY city;

SELECT city, COUNT(*) FROM customers GROUP BY city order by city desc;

-- having 
SELECT city, COUNT(*) FROM customers GROUP BY city order by city desc having count(*) > 3 ;

SELECT city, COUNT(*) 
FROM customers 
GROUP BY city 
having count(*) >= 3  
order by city desc;