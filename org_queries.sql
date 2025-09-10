USE org;
SHOW TABLES;
DESC worker;
DESC series;
DESC bonus;
SHOW CREATE TABLE reviews;

SELECT * FROM worker;
-- Select first name and alias it as worker_name
SELECT first_name AS worker_name FROM worker;

-- Convert first_name values to uppercase
SELECT UPPER(first_name) FROM worker;

-- Fetch unique department names using DISTINCT
SELECT DISTINCT department FROM worker;

-- Fetch unique department names using GROUP BY (alternative to DISTINCT)
SELECT department FROM worker GROUP BY department;

-- Fetch the first 3 characters of first_name
SELECT SUBSTR(first_name, 1, 3) FROM worker;

-- Find the position of character 'b' in first_name where first_name is 'Amitabh'
SELECT INSTR(first_name, 'b') FROM worker WHERE first_name = 'Amitabh';

-- Fetch unique departments along with their name length
SELECT DISTINCT department, LENGTH(department) FROM worker;

-- Replace lowercase 'a' with uppercase 'A' in first_name
SELECT REPLACE(first_name, 'a', 'A') AS first_name FROM worker;

-- Concatenate first_name and last_name as full_name
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM worker;

-- Fetch first_name sorted in ascending order (default)
SELECT first_name FROM worker ORDER BY first_name;

-- Fetch first_name sorted in descending order
SELECT first_name FROM worker ORDER BY first_name DESC;

-- Fetch all worker details, sorted by first_name ASC and department DESC
SELECT * FROM worker ORDER BY first_name, department DESC;

-- Fetch workers whose first_name starts with 'Vipul' or 'Satish' using LIKE
SELECT * FROM worker WHERE first_name LIKE 'Vipul%' OR first_name LIKE 'Satish%';

-- Instead of multiple LIKE conditions, use IN for cleaner and more efficient queries
SELECT * FROM worker WHERE first_name IN ('Vipul', 'Satish');

-- Fetch workers whose department starts with 'Admin'
SELECT * FROM worker WHERE department LIKE 'Admin%';

-- Fetch workers whose first_name contains 'a'
SELECT * FROM worker WHERE first_name LIKE '%a%';

-- Fetch workers whose first_name ends with 'a'
SELECT * FROM worker WHERE first_name LIKE '%a';

-- Fetch workers whose first_name is 6 characters long and ends with 'h'
SELECT * FROM worker WHERE first_name LIKE '_____h';

-- Fetch workers whose salary is between 100000 and 500000
SELECT * FROM worker WHERE salary BETWEEN 100000 AND 500000;

-- Fetch workers who joined in February 2021
SELECT * FROM worker WHERE YEAR(joining_date) = 2021 AND MONTH(joining_date) = 02;
