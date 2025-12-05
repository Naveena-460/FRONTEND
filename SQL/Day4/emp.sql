use office_db;
CREATE TABLE employees(emp_id INT PRIMARY KEY AUTO_INCREMENT,emp_name VARCHAR(30) NOT NULL,email VARCHAR(50) UNIQUE,emp_dep VARCHAR(30) NOT NULL,salary INT NOT NULL);

INSERT INTO employees(emp_name,email,emp_dep,salary)VALUES
('Navi','navi@gmail.com','IT',20000),
('Jshree','js@gmail.com','HR',30000),
('Hezlu','hez@gmail.com','MARKETING',50000),
('Jam','jam@gmail.com','IT',30000),
('Riya','riya@gmail.com','HR',60000)
;

UPDATE employees SET emp_name=UPPER(emp_name) where emp_id; 

SELECT emp_dep,SUM(salary) as Total_salary from employees group by emp_dep;

ALTER table employees add column join_date DATE;

SELECT*from employees where join_date >= CURDATE()-INTERVAL 30 DAY;

SELECT emp_name,ROUND(salary,2) as SALARY from employees;
SELECT emp_name from employees where length(emp_name)>5;
SELECT emp_dep,AVG(salary) from employees group by emp_dep having AVG(salary)>50000;
UPDATE employees SET salary = salary * 1.10 where emp_id>0;
ALTER TABLE employees ADD COLUMN bonus INT;
SELECT emp_name,YEAR(join_date) as YEAR from employees order by join_date;


select * from employees;


delete from employees where emp_id>0;

update employees set emp_dep='IT' where emp_id=10;

update employees set salary=salary* 1.05;
set sql_safe_updates=0;