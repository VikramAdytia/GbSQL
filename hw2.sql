DROP DATABASE IF EXISTS second_seminar;

CREATE DATABASE IF NOT EXISTS second_seminar;

USE second_seminar;

CREATE TABLE IF NOT EXISTS sales
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE NOT NULL,
    count_product INT NOT NULL
);

INSERT INTO sales(order_date, count_product)
VALUES
	(DATE '2022-01-01', 156),
	(DATE '2022-01-02', 180),
	(DATE '2022-01-03', 21),
	(DATE '2022-01-04', 124),
	(DATE '2022-01-05', 341);

CREATE TABLE IF NOT EXISTS orders
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id VARCHAR(20),
    amount FLOAT DEFAULT 0.0,
	order_status VARCHAR(20)
);

INSERT INTO orders (employee_id, amount, order_status)
VALUES
('s03', 15.00, "OPEN"),
('e01', 25.50, "OPEN"),
('e05', 100.70, "CLOSED"),
('e02', 22.18, "OPEN"),
('e04', 9.50, "CANCELLED");
