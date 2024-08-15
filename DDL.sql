-- comments
-- DDL commands 
-- used to build and modify our DB
-- Create

CREATE DATABASE ecom;  -- hit control enter 

USE ecom; -- make sure schema tab is open and showing ecom on the left

CREATE table customer (
id INT AUTO_INCREMENT PRIMARY KEY,
customer_name VARCHAR(75) NOT NULL,
email VARCHAR(150) NULL   -- Can be left empty
);

DROP TABLE customer; 

CREATE TABLE orders (
id INT AUTO_INCREMENT PRIMARY KEY,
order_date DATE NOT NULL,
customer_id INT,
FOREIGN KEY (customer_id)  REFERENCES customer  (id)
);

-- ALTER
ALTER TABLE customer ADD (phone VARCHAR(16), address VARCHAR(150));  -- adding phone and address to customer table );

Alter Table customer ADD phone VARCHAR(16); -- adds just a phone number 

ALTER TABLE cusotmer 
add address VARCHAR(150);   -- Another way to add collums to database 

-- DROP Collum using ALTER Prefaced
ALTER TABLE customer 
DROP COLUMN phone;  Drops the phone column from customner table only

DROP TABLE customer;   --Drops entire table 





