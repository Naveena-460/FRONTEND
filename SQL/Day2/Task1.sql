 create DATABASE Movie;
 use Movie;
 create TABLE cast_team(id INT PRIMARY KEY AUTO_INCREMENT,actor_name VARCHAR(30),role_name VARCHAR(30),gender ENUM ('Male','Female'),salary INT,join_date DATE,status ENUM('Active','Left'));
INSERT INTO cast_team(actor_name,role_name,gender,salary,join_date,status)VALUES
('Dulquer Salman','Yaazhan','Male',4000000,'2022-06-01','Active'),
('Aditi Rao Hydri','Mouna','Female',4000000,'2022-06-01','Active'),
('Kajal Aggarwal','Dr.Malarvizhi','Female',4000000,'2022-06-01','Active'),
('Abishek Kumar','Shiva','Male',300000,'2022-06-01','Active'),
('Yogi Babu','Paalmali baba','Male',2000000,'2022-06-01','Active'),
('Chandu Kanuri','kabir','Male',40000,'2022-06-01','Active'),
('Nakshathra Nagesh','RJ Divya','Female',50000,'2022-06-01','Active'),
('Soundariya Nanjundan','Parvathy','Female',60000,'2022-06-01','Active'),
('Shakthi Rithvik','Aadhav','Male',400000,'2022-06-01','Active'),
('Akshaya','divya','Female',600000,'2022-06-01','Active')
;
Delete from cast_team where id=1;
update cast_team set role_name='Yaazhan' where id=1;
select * from cast_team;
delete from cast_team where id between 2 and 11;
CREATE TABLE salary_maintenance (
    salary_id INT PRIMARY KEY AUTO_INCREMENT,id INT NOT NULL,salary_month VARCHAR(20) NOT NULL,basic_salary INT NOT NULL,bonus INT,payment_date datetime,status ENUM('Paid','Pending') DEFAULT 'Pending',FOREIGN KEY (id) REFERENCES cast_team(id)
);
ALTER TABLE salary_maintenance MODIFY COLUMN payment_date date;
INSERT INTO salary_maintenance (id, salary_month, basic_salary, bonus, payment_date, status) VALUES
(12, 'June 2022', 4000000, 500000, '2022-06-30', 'Paid'),
(13, 'July 2022', 4000000, 0, '2022-07-31', 'Paid'),
(14, 'August 2022', 4000000, 250000, '2022-08-31', 'Paid'),
(15, 'September 2022', 4000000, 0, '2022-09-30', 'Paid'),
(16, 'October 2022', 4000000, 100000, '2022-10-31', 'Paid'),
(17, 'November 2022', 4000000, 0, '2022-11-30', 'Paid'),
(18, 'December 2022', 4000000, 150000, '2022-12-31', 'Paid'),
(19, 'January 2023', 4000000, 0, '2023-01-31', 'Paid'),
(20, 'February 2023', 4000000, 200000, '2023-02-28', 'Paid'),
(21, 'March 2023', 4000000, 0, '2023-03-31', 'Paid');

select * from salary_maintenance;

CREATE TABLE staff_attendance (
    id INT AUTO_INCREMENT PRIMARY KEY,staff_id VARCHAR(20) NOT NULL,date DATE NOT NULL, in_time TIME,out_time TIME ,status ENUM('Present','Absent','Leave') NOT NULL);
    
    INSERT INTO staff_attendance (staff_id, date, in_time, out_time, status) VALUES
('STF001', '2025-12-01', '09:10', '10:30', 'Present'),
('STF002', '2025-12-01', NULL, NULL, 'Absent'),
('STF003', '2025-12-01', '09:25', '10:45', 'Present'),
('STF004', '2025-12-01', '10:00', '10:00', 'Leave'),
('STF005', '2025-12-01', '09:00', '10:00', 'Present'),
('STF006', '2025-12-01', NULL, NULL, 'Absent'),
('STF007', '2025-12-01', '09:45', '10:20', 'Present'),
('STF008', '2025-12-01', '10:15', '10:00', 'Leave'),
('STF009', '2025-12-01', '09:30', '10:50', 'Present'),
('STF010', '2025-12-01', NULL, NULL, 'Absent');
select * from staff_attendance;

CREATE TABLE technicians (tech_id INT PRIMARY KEY AUTO_INCREMENT,tech_name VARCHAR(100) NOT NULL,role VARCHAR(100) NOT NULL,experience_years INT,salary DECIMAL(10,2),status ENUM('Active','Left'));

INSERT INTO technicians (tech_name, role, experience_years, salary, status) VALUES
('Brinda', 'Director', 20, 150000.00, 'Active'),
('Preetha Jayaraman', 'Cinematographer', 15, 120000.00, 'Active'),
('Radha Sridhar', 'Editor', 18, 100000.00, 'Active'),
('Govind Vasantha', 'Music Director', 12, 180000.00, 'Active'),
('Manu Jagadh', 'Art Director', 10, 90000.00, 'Active'),
('Amritha Ram', 'Costume Designer', 14, 80000.00, 'Active'),
('Pattanam Rasheed', 'Makeup Artist', 25, 75000.00, 'Active'),
('Kalyan', 'Choreographer', 20, 95000.00, 'Active'),
('Arun Kumar', 'Assistant Director', 5, 45000.00, 'Active'),
('Suresh Kumar', 'Production Manager', 12, 60000.00, 'Active');

select * from technicians;
create DATABASE Construction;
use Construction;
CREATE TABLE materials (id INT PRIMARY KEY AUTO_INCREMENT,material_id VARCHAR(20) UNIQUE,name VARCHAR(100),price DECIMAL(10,2),supplier VARCHAR(100),purchase_date DATE,status ENUM('Available','Used','Damaged'));

INSERT INTO materials (material_id, name, price, supplier, purchase_date, status) VALUES
('M1', 'Cement', 420, 'Ramco Suppliers', '2025-01-05', 'Available'),
('M2', 'Sand', 2500, 'SK Sand Lorry', '2025-01-06', 'Available'),
('M3', 'Bricks', 100, 'Jai Brick Works', '2025-01-07', 'Used'),
('M4', 'Steel Rods', 58000, 'TMT Steels Pvt Ltd', '2025-01-09', 'Available'),
('M5', 'Blue Metal', 1200, 'VPR Stone Crushers', '2025-01-10', 'Available'),
('M6', 'Wood Planks', 950, 'SS Timber Depot', '2025-01-11', 'Used'),
('M7', 'Tiles', 380, 'Elegant Tiles Shop', '2025-01-12', 'Available'),
('M8', 'Paint', 850, 'Asian Paints Dealer', '2025-01-13', 'Available'),
('M9', 'PVC Pipes', 320, 'AquaFlow Pipes', '2025-01-14', 'Damaged'),
('M10', 'Glass Sheets', 2400, 'Royal Glass House', '2025-01-15', 'Available');

select * from materials;

CREATE TABLE staff (id INT PRIMARY KEY AUTO_INCREMENT,staff_id VARCHAR(30) UNIQUE,name VARCHAR(30),role VARCHAR(50),mobile VARCHAR(15),join_date DATE);
alter table staff modify column staff_id varchar(30);
INSERT INTO staff (staff_id, name, role, mobile, join_date) VALUES
('W1', 'Navi', 'Mason', '9876543210', '2024-12-01'),
('W2', 'Rahimz', 'Carpenter', '9876501234', '2025-01-02'),
('W3', 'Jshree', 'Helper', '9898765432', '2025-01-05'),
('W4', 'Marzoo', 'Electrician', '9876123456', '2025-01-06'),
('W5', 'Jamz', 'Plumber', '9988776655', '2025-01-08'),
('W6', 'riya', 'Welder', '9786543210', '2025-01-10'),
('W7', 'kaisim', 'Painter', '9870001112', '2025-01-11'),
('W8', 'kubea', 'Supervisor', '9001234567', '2025-01-15'),
('W9', 'hezlu', 'Driver', '9090909090', '2025-01-16'),
('W10', 'hazaan', 'Site Engineer', '9123456789', '2025-01-20');
select * from staff where id=1; 

CREATE TABLE staff_attendance (id INT PRIMARY KEY AUTO_INCREMENT,staff_id VARCHAR(20),date DATE,in_time TIME,out_time TIME,status ENUM('Present','Absent'),FOREIGN KEY (staff_id) REFERENCES staff(staff_id));

INSERT INTO staff_attendance (staff_id, date, in_time, out_time, status) VALUES
('W1', '2025-02-01', '08:45', '10:30', 'Present'),
('W2', '2025-02-01', '09:00', '10:00', 'Present'),
('W3', '2025-02-01', NULL, NULL, 'Absent'),
('W4', '2025-02-01', '09:10', '10:20', 'Present'),
('W5', '2025-02-01', '08:55', '17:40', 'Present'),
('W6', '2025-02-01', NULL, NULL, 'Absent'),
('W7', '2025-02-01', '09:05', '17:10', 'Present'),
('W8', '2025-02-01', '08:50', '17:30', 'Present'),
('W9', '2025-02-01', '09:15', '17:05', 'Present'),
('W10', '2025-02-01', NULL, NULL, 'Absent');
select * from staff_attendance;

CREATE TABLE salary_maintenance (id INT PRIMARY KEY AUTO_INCREMENT,staff_id VARCHAR(20),salary_month VARCHAR(20) ,basic_salary INT,overtime_amount INT,payment_date DATE,status ENUM('Paid','Pending'),FOREIGN KEY (staff_id) REFERENCES staff(staff_id));
INSERT INTO salary_maintenance (staff_id, salary_month, basic_salary, overtime_amount, payment_date, status) VALUES
('W1', 'Jan-2025', 25000, 1500, '2025-02-01', 'Paid'),
('W2', 'Jan-2025', 24000, 1200, '2025-02-01', 'Paid'),
('W3', 'Jan-2025', 18000, 800, '2025-02-02', 'Paid'),
('W4', 'Jan-2025', 26000, 1600, '2025-02-02', 'Paid'),
('W5', 'Jan-2025', 23000, 900, '2025-02-03', 'Paid'),
('W6', 'Jan-2025', 22000, 1000, '2025-02-03', 'Paid'),
('W7', 'Jan-2025', 20000, 1100, '2025-02-04', 'Paid'),
('W8', 'Jan-2025', 32000, 2000, '2025-02-04', 'Paid'),
('W9', 'Jan-2025', 19000, 700, '2025-02-05', 'Paid'),
('W10', 'Jan-2025', 35000, 2500, '2025-02-05', 'Paid');

select * from salary_maintenance;

CREATE TABLE stock_history (
    stock_id INT PRIMARY KEY AUTO_INCREMENT,
    material_id VARCHAR(20),
    quantity_added INT,
    quantity_used INT,
    update_date DATE,
    updated_by VARCHAR(50),
    FOREIGN KEY (material_id) REFERENCES materials(material_id)
);

INSERT INTO stock_history 
(material_id, quantity_added, quantity_used, update_date, updated_by)
VALUES
('M1', 500, 0, '2025-01-05', 'Supervisor Arjun'),
('M2', 300, 150, '2025-01-06', 'Supervisor Meena'),
('M3', 1000, 200, '2025-01-07', 'Supervisor Karthik'),
('M4', 50, 10, '2025-01-08', 'Supervisor Raji'),
('M5', 200, 50, '2025-01-09', 'Supervisor Manoj'),
('M6', 100, 20, '2025-01-10', 'Supervisor Arjun'),
('M7', 400, 100, '2025-01-11', 'Supervisor Meena'),
('M8', 250, 0, '2025-01-12', 'Supervisor Karthik'),
('M9', 600, 300, '2025-01-13', 'Supervisor Manoj'),
('M10', 150, 40, '2025-01-14', 'Supervisor Raji');

select * from stock_history;


