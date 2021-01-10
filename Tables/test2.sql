USE CUSTOMERS;
GO
CREATE TABLE Customer.test2
(
id INT null,
name VARCHAR(20) null
);
GO
INSERT INTO Customer.test2(id, name) VALUES (1, 'A');
INSERT INTO Customer.test2(id, name) VALUES (2, 'B');
