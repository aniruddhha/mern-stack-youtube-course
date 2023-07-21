use ytdb;

show tables;

drop table customers;

drop table employees;

drop table orders;

drop table product;

show tables;

CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(100),
  email VARCHAR(100)
);

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  order_date DATE,
  customer_id INT,
  order_total DECIMAL(10, 2),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE employees (
  employee_id INT PRIMARY KEY,
  employee_name VARCHAR(100),
  department VARCHAR(50),
  salary DECIMAL(10, 2)
);

CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100),
  product_price DECIMAL(10, 2),
  category VARCHAR(50)
);

INSERT INTO customers (customer_id, customer_name, email) VALUES (1, 'John Doe', 'john.doe@example.com');
INSERT INTO customers (customer_id, customer_name, email) VALUES (2, 'Jane Smith', 'jane.smith@example.com');
INSERT INTO customers (customer_id, customer_name, email) VALUES (3, 'Michael Johnson', 'michael.johnson@example.com');
INSERT INTO customers (customer_id, customer_name, email) VALUES (4, 'Emily Lee', 'emily.lee@example.com');
INSERT INTO customers (customer_id, customer_name, email) VALUES (5, 'David Wang', 'david.wang@example.com');

INSERT INTO orders (order_id, order_date, customer_id, order_total) VALUES (101, '2023-07-13', 1, 150.50);
INSERT INTO orders (order_id, order_date, customer_id, order_total) VALUES (102, '2023-07-14', 2, 75.00);
INSERT INTO orders (order_id, order_date, customer_id, order_total) VALUES (103, '2023-07-14', 3, 200.25);
INSERT INTO orders (order_id, order_date, customer_id, order_total) VALUES (104, '2023-07-15', 1, 300.00);
INSERT INTO orders (order_id, order_date, customer_id, order_total) VALUES (105, '2023-07-16', 4, 50.75);

INSERT INTO employees (employee_id, employee_name, department, salary) VALUES (201, 'Robert Johnson', 'IT', 50000.00);
INSERT INTO employees (employee_id, employee_name, department, salary) VALUES (202, 'Lisa Chen', 'Finance', 60000.00);
INSERT INTO employees (employee_id, employee_name, department, salary) VALUES (203, 'James Anderson', 'HR', 55000.00);
INSERT INTO employees (employee_id, employee_name, department, salary) VALUES (204, 'Sarah Kim', 'Marketing', 52000.00);
INSERT INTO employees (employee_id, employee_name, department, salary) VALUES (205, 'Andrew Lee', 'IT', 48000.00);


INSERT INTO products (product_id, product_name, product_price, category) VALUES (301, 'Laptop', 1200.00, 'Electronics');
INSERT INTO products (product_id, product_name, product_price, category) VALUES (302, 'Smartphone', 800.00, 'Electronics');
INSERT INTO products (product_id, product_name, product_price, category) VALUES (303, 'Headphones', 50.00, 'Electronics');
INSERT INTO products (product_id, product_name, product_price, category) VALUES (304, 'T-shirt', 25.00, 'Clothing');
INSERT INTO products (product_id, product_name, product_price, category) VALUES (305, 'Jeans', 45.00, 'Clothing');

select * from customers;

select * from orders;

-- retrieving all customers who have made a purchase
SELECT customer_name
FROM customers
WHERE customer_id IN (SELECT customer_id FROM orders);

-- finding the average order value for each customer:

SELECT customer_id, AVG(order_total) AS average_order
FROM orders
GROUP BY customer_id
HAVING AVG(order_total) > (
	SELECT AVG(order_total) 
	FROM orders
);

-- retrieving all employees who have a higher salary than the average salary of their department
SELECT employee_name, salary
FROM employees
WHERE salary > (
	SELECT AVG(salary) 
	FROM employees 
	WHERE department = 'IT'
);

-- correlated
SELECT product_name
FROM products p -- p is alias
WHERE product_price > (
	SELECT AVG(product_price) 
	FROM products 
	WHERE category = p.category -- result of outer query is used in inner query
);

-- non correlated
SELECT product_name
FROM products
WHERE product_price > (
	SELECT AVG(product_price) 
	FROM products
);