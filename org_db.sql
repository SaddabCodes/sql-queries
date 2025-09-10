CREATE DATABASE sql_interview;
-- CREATE DATABASE IF NOT EXISTS sql_interview;
USE sql_interview;
SHOW TABLES;

-- CREATE department TABLE
CREATE TABLE DEPARTMENT
(
    ID       INT          NOT NULL,
    NAME     VARCHAR(250) NOT NULL,
    LOCATION VARCHAR(250)
);
-- CREATE employee TABLE
CREATE TABLE Employee
(
    ID         INT,
    EMPNO      CHAR(10),
    NAME       VARCHAR(255),
    DEPT_ID    INT,
    MANAGER_ID INT,
    PHONENO    CHAR(10),
    HIREDATE   DATE,
    SALARY     DECIMAL(10, 2),
    BONUS      DECIMAL(10, 2),
    COMM       DECIMAL(10, 2)
);

-- Insert into Department Table
INSERT INTO Department (ID, Name, Location)
VALUES (1, 'Development', 'Gurgaon'),
       (2, 'Finance', 'Gurgaon'),
       (3, 'Sales', 'Delhi'),
       (4, 'Purchase', 'Mumbai'),
       (5, 'Marketing', 'Bangalore'),
       (6, 'Human Resource', 'Noida'),
       (7, 'Operations', 'Hyderabad'),
       (8, 'Quality', 'Chennai');


-- Insert into Employee Table
INSERT INTO Employee (ID, EMPNO, NAME, DEPT_ID, MANAGER_ID, PHONENO, HIREDATE, SALARY, BONUS, COMM)
VALUES (1, 100001, 'Nitin', 1, 3, '9876543210', '2022-02-17', 25000.00, 1000.00, 500.00),
       (2, 100002, 'Pranshul', 4, 8, '9876543211', '2018-02-17', 26000.00, 1000.00, 50.00),
       (3, 100003, 'Utkarsh', 8, 8, '9876543212', '2019-03-13', 27000.00, 1000.00, 5.00),
       (4, 100004, 'Arjun', 5, 8, '9876543213', '2019-07-17', 28000.00, NULL, 50.00),
       (5, 100005, 'Divya', 4, 8, '9876543214', '2019-02-14', 35000.00, NULL, 430.00),
       (6, 100006, 'Rohit', 1, 8, '9876543215', '2020-02-27', 15000.00, 1000.00, 600.00),
       (7, 100007, 'Shreya', 4, 16, '9876543216', '2020-08-27', 65000.00, 600.00, NULL),
       (8, 100008, 'Satish', 2, 16, '9876543216', '2020-02-03', 51000.00, 2000.00, NULL),
       (9, 100009, 'Shivam', 5, 1, '9876543217', '2021-02-05', 35000.00, NULL, NULL),
       (10, 100010, 'Sonali', 6, 1, '9876543218', '2022-02-15', 20000.00, 1000.00, NULL),
       (11, 200011, 'Swati', 3, 1, '9876543218', '2022-02-23', 30000.00, 8000.00, 1000.00),
       (12, 200012, 'Sweety', 2, 2, '9876543219', '2022-09-24', 45000.00, 2000.00, 800.00),
       (13, 200013, 'Mohit', 6, 3, '9876543210', '2022-04-11', 70000.00, 4000.00, 400.00),
       (14, 200014, 'Manav', 3, 3, '9876543211', '2022-11-11', 11000.00, 1000.00, 600.00),
       (15, 200015, 'Divya', 7, 3, '9876543220', '2022-10-21', 22000.00, 1000.00, 10.00),
       (16, 200016, 'Kushal', 7, 3, '9876543220', '2022-08-03', 25000.00, 3000.00, 20.00),
       (17, 200017, 'Kiran', 1, 6, '9876543222', '2022-07-09', 25000.00, 100.00, NULL),
       (18, 200018, 'Srishti', 2, 12, '9876543221', '2022-05-01', 26000.00, 100.00, 80.00),
       (19, 200019, 'Raghav', 8, 7, '9876543223', '2019-04-17', 31000.00, 200.00, 505.00),
       (20, 200020, 'Saurabh', 3, 13, '9876543224', '2021-03-17', 33000.00, 900.00, 950.00);



