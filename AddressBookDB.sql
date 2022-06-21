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

