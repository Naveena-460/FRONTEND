

CREATE DATABASE office_db;
USE office_db;

CREATE TABLE staffs (
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(30),
    dept VARCHAR(30),
    income INT,
    place VARCHAR(30)
);

INSERT INTO staffs (full_name, dept, income, place) VALUES
 ("Aakash","Tech",45000,"Chennai"),
 ("Keerthana","Admin",30000,"Madurai"),
 ("Vimal","Tech",60000,"Coimbatore"),
 ("Harini","HR",35000,"Tirunelveli"),
 ("Saran","Tech",50000,"Chennai"),
 ("Meena","Support",25000,"Salem"),
 ("Gokul","Tech",70000,"Erode"),
 ("Divya","HR",40000,"Madurai"),
 ("Prakash","Support",30000,"Chennai"),
 ("Rithika","Tech",55000,"Chennai");

SELECT * FROM staffs;


SELECT COUNT(*) AS total_count, dept AS dept_name
FROM staffs 
GROUP BY dept;


SELECT dept, AVG(income) AS avg_income_by_dept
FROM staffs 
GROUP BY dept;


SELECT COUNT(*) AS city_total, place AS city_name
FROM staffs 
GROUP BY place;


SELECT dept, COUNT(*) AS staff_total, SUM(income) AS total_income
FROM staffs 
GROUP BY dept;


SELECT dept, COUNT(*) AS dept_strength
FROM staffs 
GROUP BY dept
HAVING COUNT(*) > 2;


SELECT dept AS department_title, AVG(income) AS average_income
FROM staffs
GROUP BY dept
HAVING AVG(income) > 25000;


SELECT place, COUNT(*) AS people_count
FROM staffs
GROUP BY place
HAVING COUNT(*) > 1;


SELECT dept, MAX(income) AS highest_pay
FROM staffs
GROUP BY dept
HAVING MAX(income) > 10000;


SELECT dept, SUM(income) AS total_spent
FROM staffs
GROUP BY dept
HAVING SUM(income) > 100000;


SELECT dept, AVG(income) AS dept_avg
FROM staffs
GROUP BY dept
HAVING AVG(income) > (SELECT AVG(income) FROM staffs);


SELECT place, AVG(income) AS avg_place_income
FROM staffs
GROUP BY place
HAVING AVG(income) > 30000;


SELECT dept, COUNT(*) AS above_30k
FROM staffs
WHERE income > 30000
GROUP BY dept;


SELECT dept, COUNT(*) AS staff_count
FROM staffs
GROUP BY dept
HAVING MIN(income) > 30000;
