--UC1 Create AddresBook Service Database

CREATE DATABASE ADDRESSBOOKSERVICE;
USE ADDRESSBOOKSERVICE;

--UC2 Create AddresBook table
CREATE TABLE AddressBook
(
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    address VARCHAR(50) NOT NULL,
    city VARCHAR(20),
    state VARCHAR(20),
    zip INT,
    phone_number VARCHAR(10) NOT NULL
);

--UC3 Insert values into the table

INSERT INTO AddressBook
VALUES
( 
    'James','Blue','1000 Harbor Ave.','Seattle','WA',98116,'8332443923'
)

--UC4 Edit contact using name

UPDATE AddressBook
SET address = '450 Stout Street'
WHERE first_name = 'Meg' AND last_name = 'Stephenson';

--UC5 Delete contact using name

DELETE FROM AddressBook
WHERE first_name = 'James' AND last_name = 'Blue';

--UC6 Retrieve contact information according to city or state

SELECT * FROM AddressBook 
WHERE city = 'Chicago';

SELECT * FROM AddressBook 
WHERE state = 'NY';

--UC7 Count contacts by city

SELECT city,COUNT(city) as Total_Count
FROM AddressBook 
GROUP BY city;

--UC8 Sort Contacts By Name in a City

SELECT * FROM AddressBook 
WHERE city = 'New York'
ORDER BY first_name;

--UC9 Add Type and Name information

ALTER TABLE AddressBook
ADD Book_Name VARCHAR(20),
    Contact_Type VARCHAR(20);

UPDATE AddressBook
SET Contact_Type = 'Friends'
WHERE first_name in ('Sue','Mike');

UPDATE AddressBook
SET Contact_Type = 'Professional'
WHERE first_name in ('John','Liz');

UPDATE AddressBook
SET Contact_Type = 'Family'
WHERE first_name in ('Meg');

UPDATE AddressBook
SET Book_Name = 'MyBook';

