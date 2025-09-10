USE org;
SHOW TABLES;
DESC worker;
DESC series;
DESC bonus;
SHOW CREATE TABLE reviews;

SELECT * FROM worker;
SELECT first_name as worker_name FROM worker;
SELECT UPPER(first_name) FROM worker;
SELECT DISTINCT department FROM worker;
SELECT department FROM worker GROUP BY department; -- fetch distinct values using GROUP BY
SELECT SUBSTR(first_name,1,3)FROM worker;
SELECT instr(first_name,'b') FROM worker WHERE first_name = 'Amitabh';
SELECT DISTINCT department,LENGTH(department) FROM worker;
SELECT  REPLACE(first_name, 'a','A') AS first_name FROM worker;
SELECT CONCAT(first_name,' ',last_name) AS full_name FROM worker;
SELECT first_name FROM worker ORDER BY first_name; -- by default, it prints in ASC form.
SELECT first_name FROM worker ORDER BY first_name DESC ;
SELECT * FROM worker ORDER BY first_name, department DESC ;
SELECT * FROM worker WHERE first_name LIKE 'Vipul%' OR first_name LIKE 'Satish%';
SELECT * FROM worker WHERE first_name IN ('Vipul','Satish'); -- instead of LIKE we can use IN