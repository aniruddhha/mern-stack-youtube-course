use ytdb;

drop database ytdb;

create database ytdb;

use ytdb;

-- One to One Relationship : One Person can have One Passport

CREATE TABLE Person (
  person_id INT PRIMARY KEY,
  person_name VARCHAR(50),
  birth_date DATE
);

CREATE TABLE Passport (
  passport_id INT PRIMARY KEY,
  passport_number VARCHAR(20),
  person_id INT UNIQUE,
  FOREIGN KEY (person_id) REFERENCES Person(person_id)
);

-- Person Records
INSERT INTO Person (person_id, person_name, birth_date)
VALUES (1, 'John Doe', '1990-05-15');

INSERT INTO Person (person_id, person_name, birth_date)
VALUES (2, 'Jane Smith', '1985-11-02');

INSERT INTO Person (person_id, person_name, birth_date)
VALUES (3, 'Michael Johnson', '1988-09-25');

INSERT INTO Person (person_id, person_name, birth_date)
VALUES (4, 'Emily Davis', '1995-03-10');

INSERT INTO Person (person_id, person_name, birth_date)
VALUES (5, 'Robert Brown', '1980-12-18');

-- Passport Records

INSERT INTO Passport (passport_id, passport_number, person_id)
VALUES (101, 'AB1234567', 1);

INSERT INTO Passport (passport_id, passport_number, person_id)
VALUES (102, 'CD9876543', 3);

INSERT INTO Passport (passport_id, passport_number, person_id)
VALUES (103, 'EF5678912', 5);

INSERT INTO Passport (passport_id, passport_number, person_id)
VALUES (104, NULL, 2);

INSERT INTO Passport (passport_id, passport_number, person_id)
VALUES (105, NULL, 4);

select * from Person;

select * from Passport;

-- One to Many

CREATE TABLE Customer (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(50),
  email VARCHAR(100)
);

CREATE TABLE OrderDetail (
  order_id INT PRIMARY KEY,
  order_date DATE,
  customer_id INT,
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id) ON DELETE CASCADE -- adding cascade at the time of creation
);

drop table OrderDetail;

-- Customer Inserts

INSERT INTO Customer (customer_id, customer_name, email)
VALUES (1, 'John Doe', 'john.doe@example.com');

INSERT INTO Customer (customer_id, customer_name, email)
VALUES (2, 'Jane Smith', 'jane.smith@example.com');

INSERT INTO Customer (customer_id, customer_name, email)
VALUES (3, 'Michael Johnson', 'michael.johnson@example.com');

INSERT INTO Customer (customer_id, customer_name, email)
VALUES (4, 'Emily Davis', 'emily.davis@example.com');

INSERT INTO Customer (customer_id, customer_name, email)
VALUES (5, 'Robert Brown', 'robert.brown@example.com');

-- Order Inserts

INSERT INTO OrderDetail (order_id, order_date, customer_id)
VALUES (101, '2023-07-15', 1);

INSERT INTO OrderDetail (order_id, order_date, customer_id)
VALUES (102, '2023-07-18', 1);

INSERT INTO OrderDetail (order_id, order_date, customer_id)
VALUES (103, '2023-07-19', 2);

INSERT INTO OrderDetail (order_id, order_date, customer_id)
VALUES (104, '2023-07-20', 3);

INSERT INTO OrderDetail (order_id, order_date, customer_id)
VALUES (105, '2023-07-21', 4);


select * from Customer;

select * from OrderDetail;

-- Adding ON DELETE CASCADE to the foreign key constraint in OrderDetail table
ALTER TABLE OrderDetail
ADD CONSTRAINT fk_customer_id
FOREIGN KEY (customer_id)
REFERENCES Customer(customer_id)
ON DELETE CASCADE;

select * from Customer;

select * from OrderDetail;

delete from Customer where customer_id = 1;

select * from OrderDetail;

select * from Customer;

desc OrderDetail;

-- Many to Many Relationship

CREATE TABLE Student (
  student_id INT PRIMARY KEY,
  student_name VARCHAR(50),
  age INT
);

CREATE TABLE Course (
  course_id INT PRIMARY KEY,
  course_name VARCHAR(50)
);

CREATE TABLE Enrollment (
  student_id INT,
  course_id INT,
  PRIMARY KEY (student_id, course_id), -- What is this, write it in the comment box ?
  FOREIGN KEY (student_id) REFERENCES Student(student_id),
  FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

-- Insert statements for Student table:
INSERT INTO Student (student_id, student_name, age) VALUES
(1, 'John Doe', 20),
(2, 'Jane Smith', 22),
(3, 'Michael Johnson', 21),
(4, 'Emily Davis', 19),
(5, 'Robert Brown', 23);

-- Insert statements for Course table:
INSERT INTO Course (course_id, course_name) VALUES
(101, 'Mathematics'),
(102, 'History'),
(103, 'Science'),
(104, 'Literature'),
(105, 'Computer Science');

-- Insert statements for Enrollment table (many-to-many relationship):
INSERT INTO Enrollment (student_id, course_id) VALUES
(1, 101), -- John Doe enrolls in Mathematics
(1, 102), -- John Doe enrolls in History
(2, 102), -- Jane Smith enrolls in History
(3, 101), -- Michael Johnson enrolls in Mathematics
(3, 103), -- Michael Johnson enrolls in Science
(4, 104), -- Emily Davis enrolls in Literature
(4, 105), -- Emily Davis enrolls in Computer Science
(5, 101), -- Robert Brown enrolls in Mathematics
(5, 103); -- Robert Brown enrolls in Science

select * from Student;

select * from Course;

select * from Enrollment;