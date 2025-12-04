create database shop_db;
use shop_db;

CREATE TABLE customers (
    cus_id INT PRIMARY KEY AUTO_INCREMENT,
    cus_name VARCHAR(30),
    cus_phone VARCHAR(20)
);

INSERT INTO customers (cus_name, cus_phone) VALUES
('Aruna', '9876543210'),
('Navee', '9000001111'),
('Priya', '9955332211'),
('Karthika', '9877000000'),
('Divya', '9888223344');

CREATE TABLE products (
    pro_id INT PRIMARY KEY AUTO_INCREMENT,
    pro_name VARCHAR(30),
    pro_price INT
);

INSERT INTO products (pro_name, pro_price) VALUES
('Laptop', 55000),
('Mobile', 20000),
('Headphones', 1500),
('Keyboard', 800),
('Smartwatch', 3500);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    cus_id INT,
    pro_id INT,
    order_date DATE,
    FOREIGN KEY (cus_id) REFERENCES customers(cus_id),
    FOREIGN KEY (pro_id) REFERENCES products(pro_id)
);

INSERT INTO orders (cus_id, pro_id, order_date) VALUES
(1, 1, '2025-01-10'),
(2, 2, '2025-01-15'),
(3, 3, '2025-01-20'),
(1, 5, '2025-01-22'),
(4, 1, '2025-01-25');


 
 
 CREATE TABLE std (
    std_id INT PRIMARY KEY,
    std_name VARCHAR(30)
);


CREATE TABLE courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(30),
    teacher VARCHAR(30)
);


CREATE TABLE std_courses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    std_id INT,
    course_id INT,
    FOREIGN KEY (std_id) REFERENCES std (std_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

SELECT c.cus_name, p.pro_name, o.order_date FROM orders o
INNER JOIN customers c ON o.cus_id = c.cus_id INNER JOIN products p ON o.pro_id = p.pro_id;


SELECT p.pro_name, p.pro_price, COUNT(o.order_id) AS total_orders FROM products p
INNER JOIN orders o ON p.pro_id = o.pro_id GROUP BY p.pro_id;


SELECT p.pro_name, o.order_id FROM products p
LEFT JOIN orders o ON p.pro_id = o.pro_id;

SELECT o.order_id, c.cus_name, o.order_date FROM customers c
RIGHT JOIN orders o ON c.cus_id = o.cus_id;

SELECT o.order_id, p.pro_name, o.order_date FROM products p
RIGHT JOIN orders o ON p.pro_id = o.pro_id;

