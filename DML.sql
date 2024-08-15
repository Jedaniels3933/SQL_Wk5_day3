
USE ecom;

-- Data Manipulation Language
-- Add , modify and delete data in our database 

SELECT * FROM customer;
SELECT * FROM orders; 

-- INSERT into

INSERT INTO customer (customer_name, email, phone , address)
Values ('Travis', 'travis@gmail,com', '5555555555', '123 Real street');      -- strings are req to be entered with single quotes  

-- Add Multiple values wiht INSERT command 

INSERT INTO customer (customer_name, email, phone , address)                 -- Can add a bunch of stuff as long as seperated with () ,() ,() on seperate lines for now 
VALUES ('Dylan Katina', 'example@email.com', '5552223125', '123 cool street'),
('Darth Vader', 'dv@deathstar.com', '6666666666', 'death star 1'),
('Luke Skywalker', 'chosenone@email.com', '7778889999', 'tattooine');

-- Update Entities 

UPDATE customer 
SET customer_name = 'Anakin Skywalker' , email = 'as@jedi.com'
WHERE id = 4;

DELETE FROM customer   -- deleted Anakin 
WHERE id = 4;

-- MySQL has a safeguard 
-- SQL save update 1 and 0
-- 1 is default , allows us to delete the primary key identifier 
-- 0 offers more freedom to delete based from other attributes 

SET SQL_SAFE_UPDATES = 1;  -- run this first to delete based on the email alone

DELETE FROM customer
WHERE email = 'dv@deathstar.com';

-- Adding additional data for Querrying 
-- ADDING ADDITIONAL DATA FOR QUERYING

INSERT INTO customer (customer_name, email, phone)
VALUES ('Peter Cottontail', 'pc@email.com', '1234567891'),
('Jungle George', 'banana@email.com', '1234567892'),
('Billy Butcher', 'supesoup@email.com', '1234567893'),
('Obi-wan Kenoibi', 'ok@jedi.com', '1234567894'),
('Django Freeman', 'whereshildi@email.com', '1234567895'),
('John Dutton', 'ranch4life@email.com', '1234567896'),
('Jeff Probst', 'jp@survivor.com', '1234567897');


INSERT INTO orders (order_date, customer_id)
VALUES ('2023-01-18', 1),
('2023-02-24', 1),
('2023-02-28', 6),
('2023-03-04', 8),
('2023-03-12', 2),
('2023-04-16', 7),
('2023-05-19', 9),
('2023-06-02', 10),

('2023-12-23', 11),
('2024-01-18', 1);





