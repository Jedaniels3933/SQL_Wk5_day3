

use ecom;

-- DQL - data querry language 
-- SELECt and FROM 

SELECT * FROM customer;

SELECT customer_name , email FROM customer;

-- WHERE let's filter based off a condtion
SELECT * FROM customer 
WHERE customer_name = 'Travis';
SELECT * FROM customer 
WHERE id = 8 OR id = 11;

SELECT * FROM customer 
WHERE customer_name = 'Dylan Katina' OR email = 'dk@email.com' ;

SELECT * FROM customer 
WHERE customer_name LIKE 'D%';

SELECT * FROM customer 
WHERE id >8;

SELECT * FROM customer    -- 'NOT' Example 
WHERE NOT id = 1;

-- ORDER by

-- Ascending

SELECT * FROM customer 
ORDER BY customer_name DESC;
SELECT * FROM customer 
ORDER BY customer_name ASC;

-- LIKE 

SELECT * FROM customer 
WHERE email LIKE '%@jedi.com';

-- BETWEEN
SELECT * FROM orders;

Select * FROM orders
WHERE order_date BETWEEN '2023-01-01' AND '2023-04-30'; 



