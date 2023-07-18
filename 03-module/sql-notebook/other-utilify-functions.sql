select * from customers;

-- upper case
SELECT UPPER(name) FROM customers;

-- lower case
SELECT lower(name) FROM customers;

-- concat
SELECT CONCAT(name, '-> ', age) FROM customers;

-- sub string
SELECT SUBSTRING(name, 1, 5) FROM customers;

-- length

select length(name), name from customers;

SELECT COALESCE(NULL, 'n/a');

-- coalesce
SELECT COALESCE(email, 'N/A') FROM customers;

SELECT dob FROM customers;

SELECT format(dob,'YYYY-MM-DD') FROM customers;

select DATE_FORMAT(now(), '%Y-%m-%d')

select DATE_FORMAT(dob, '%Y-%m-%d') from customers;

select now();

select format(12.34567, 1);

select format(12.34567, 3);