

#  SQL Commands 
- insert, delete update -DML
--Select DQL - data querry language 

- Create, Drop and alter 
-DDL consists of commmands to create, modify and remove database objecy 

- Create then table 
- *called collums*
~~ user_id is PK on example 
- specify PK at bottom 
- PRIMARY KEY (user_id) 

= Create table users(
    user_id INT AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
    created_at TIMESTAMP DEFAULTCURRENT_TIMESTAMP


    ##  ; SEMI COLON IS end of command 

    | CREATE DATABASE users(    <--- I want to create then name
        user_id AUTO_INCREMENT,    <------ WILL add on own 
        username VARCHAR(50) NOT NULL,       || (NOT NULL) ||
        email VARCHAR(100) NOT NULL,  (means has to have value)
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        PRIMARY KEY (user_id)  <----- 
        );  <-----------( Semi Colon to end commmand )

### Alter Command
1. ALTER TABLE users ADD last_login TIMESTAMP; 
   ( I want to alter Table named user add a collum )

2. MODIFY : 

3. Drop a Colum -USE ALTER TO DROP 
SAY DROP , NAME TABLE - EASY
DROP DATABASE   mydatabase 

## Other types of commands ( INSERT, UPDATE, DELETE )
### DML - add update and delete data entry 
   DML= Data Manipulation language ex

   #### INSERT : 
          INSERT INTO users (username, email) VALUES ('john doe', 'jdoe@email.com);  <----- {Dont forget the semi Colon} 
          (If we eastablish that username and email needs inserted then has to give a value ) [because was listed as NON NULL - means has to be info , cant be empty] 

   #### UPDATE : 
    Update and entry like changing an email 
    UPDATE users SET email = 'new_email@example.com' WHERE user_id = 1; { Command, name the table , SET new data" be  ^    specific what needs updated then WHERE you want it  
    user_id = 1 because 1 means true or yes }    

#### DELETE :

- Delete a specific row 
- DELETE FROM users WHERE user_id = 1;

## DQL - Data Querry Language 

1. SELECT, FROM 
###### Select
Allows us to select all (*) 

- adding a WHERE clause 
- Allows us to filter records based on speciific condition
- SELECT * FROM users WHERE user_id = 1; Gets all 
FROM= SELECT username, email FROM users; 

### AND, OR , NOT

1. SELECT * FROM users WHERE username = 'john doe' AND email = "email"
2. SELECT * FROM users WHERE username = 'john doe' OR email = "email"
3. SELECT * FROM users WHERE NOT username = 'john doe'  
   ^ all users that are not 'john doe' 
4. ORDER BY command = Allows you to order the query result set.
 -- SELECT * FROM users ORDER BY created_at DESC= DESC means last value - I wanna order all this info based on what i need 
5. LIKE = SELECT * FROM users WHERE email LIKE '%&example.com'; 