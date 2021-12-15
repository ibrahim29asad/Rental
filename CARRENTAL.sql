DROP DATABASE IF EXISTS CARRENTAL;
CREATE DATABASE CARRENTAL; 
USE CARRENTAL;

DROP TABLE IF EXISTS CUSTOMER;
CREATE TABLE CUSTOMER (
	License_no		int not null,
	Address	   	    varchar(255)  not null,
	Email	    	varchar(255) not null,
    Phone			varchar(255) not null,
    Fname       	varchar(255) not null,
    Lname	    	varchar(255) not null,
    DOB	       		varchar(255) not null,
	primary key (License_no)
);


INSERT INTO CUSTOMER (License_no, Address, Email, Phone, Fname, Lname, DOB)
VALUES
('001',	'213 Jane Street',	'jd@email.com','587-213-1593', 'Doe', 'John', 'January 2, 1995'),
('002',	'2500 University Drive', 'sg@email.com','780-313-4731', 'Gulag', 'Sam', 'March 14, 2000'),
('003',	'2nd Street','aa@email.com','403-132-1256', 'Asnow', 'Alexa', 'April 1, 1990');


CREATE TABLE RENTAL_CENTER
(
Store_Id int, 
Postal_Code varchar(255),
Street_Number varchar(255),
City varchar(255),
PRIMARY KEY(Store_Id)
);

INSERT INTO RENTAL_CENTER (Store_Id, Postal_Code, Street_Number, City)
VALUES
(10,'T9K 0J2','123','Calgary'),
(11,'T2P 5K6','456','Calgary'),
(12,'F4M 1L5','789','Calgary');


CREATE TABLE INSURANCE
(
Policy_no int,
Provider_Name varchar(255),
Coverage varchar(255),
Price int,
Store_Id int,
PRIMARY KEY(Policy_no),
FOREIGN KEY(Store_Id) REFERENCES RENTAL_CENTER(Store_Id)
);


INSERT INTO INSURANCE (Policy_no, Provider_Name, Coverage, Price, Store_Id)
VALUES
(101,'Colainc','Everything',30, 10),
(202,'Apalo','Everything',23, 11),
(303,'GreatValue','Everything', 50, 12);

CREATE TABLE EMPLOYEE (
	Employee_ID	    int not null,
	Fname			varchar(255),
	Lname			varchar(255),
    Positions		varchar(255),
    Store_Id        integer,
    License_no      int,
	primary key (Employee_ID),
    FOREIGN KEY(Store_Id) REFERENCES RENTAL_CENTER(Store_Id)
);

INSERT INTO EMPLOYEE (Employee_ID, Fname, Lname, Positions, Store_Id, License_no)
VALUES
(00102,'Cassie','Ellis','Receptionist', 10,11111),
(00203,'Janet','Thompson','Receptionist', 10,22222),
(00304,'Bob','Liger', 'Manager', 10,33333),
(00405,'Casio','Spider','Receptionist', 11,44444),
(00506,'Josh','Abso','Receptionist', 11,55555),
(00607,'Ellie','Holland', 'Manager', 11,66666),
(00708,'Alex','Ellis','Receptionist', 12,77777),
(00809,'Tom','Sims','Receptionist', 12,88888),
(00910,'Naruto','Uzumakie', 'Manager', 12,99999);


CREATE TABLE PAYMENT (
	Card_No			    int not null,
	Form_Of_Payment		varchar(255) not null,
	CVV			        int not null,
    Name_On_Card		varchar(255) not null,
    Billing_Address     varchar(255) not null,
    Store_Id            int,
    License_no      int,
	primary key (Card_No),
    FOREIGN KEY(License_no) REFERENCES CUSTOMER(License_no),
    FOREIGN KEY(Store_Id) REFERENCES RENTAL_CENTER(Store_Id)
    
);
INSERT INTO PAYMENT (Card_No, Form_Of_Payment, CVV, Name_On_Card, Billing_Address,Store_Id, License_no)
VALUES
(1001, 'Credit Card', 304, 'John Doe', '213 Jane Street', 10, 001),
(1012, 'Credit Card', 670, 'Sam Gulag', '2500 University Drive', 11, 002),
(1123, 'Credit Card', 135, 'Alexa Asnow', '2nd Street', 12, 003);


CREATE TABLE CAR
(
License_Plate varchar(255),
Price int,
Damage varchar(255),
Brand varchar(255),
Model varchar(255),
Colour varchar(255),
No_Seats int,
Size varchar(255),
Store_id int,
Avalibility varchar(225),
PRIMARY KEY(License_Plate),
FOREIGN KEY(Store_Id) REFERENCES RENTAL_CENTER(Store_Id)
);
INSERT INTO CAR (License_Plate, Price, Damage, Brand, Model,Colour, No_Seats, Size, Store_id, Avalibility)
VALUES
('4321', 12, 'none', 'Toyota', 'Red', 4, 'SUV', 10, 'yes'),
('5432', 20 , 'none', 'Lexus', 'Black', 6, 'SUV',11, 'yes' ),
('6543', 32 ,'none', 'Mazda', 'White', 4, 'SUV', 'no');



CREATE TABLE RENT(
License_no int,
License_Plate varchar(255),
PRIMARY KEY(License_no, License_Plate),
FOREIGN KEY(License_no) REFERENCES CUSTOMER(License_no),
FOREIGN KEY(License_Plate) REFERENCES CAR(License_Plate)
);
INSERT INTO RENT (License_Plate,License_no)
VALUES
(001,'4321'),
(002,'5432'),
(003,'6543');

CREATE TABLE LOGIN(
Employee_ID int,
Passwords varchar(255),
PRIMARY KEY(Employee_ID),
FOREIGN KEY(Employee_ID) REFERENCES EMPLOYEE(Employee_ID)
);
INSERT INTO LOGIN (License_Plate,License_no)
VALUES
(00102, 'asd'),
(00203, 'asd'),
(00304, 'asd'),
(00405, 'asd'),
(00506, 'asd'),
(00607, 'asd'),
(00809,'asd'),
(00910,'asd');


CREATE TABLE BOOKING_DETAIL (
	Reservation_no			varchar(255) not null,
	Date_End				varchar(255) not null,
	Location_Dropoff		varchar(255),
    Location_Pickup			varchar(255) not null,
    Date_Start				varchar(255),
    License_no				int not null,
    Employee_ID				int not null,
    License_Plate           varchar(255) not null,
	primary key (Reservation_no),
    FOREIGN KEY(License_no) REFERENCES CUSTOMER(License_no),
    FOREIGN KEY(Employee_ID) REFERENCES EMPLOYEE(Employee_ID),
    FOREIGN KEY(License_Plate) REFERENCES CAR(License_Plate)
);

INSERT INTO BOOKING_DETAIL (Reservation_no, Date_End, Location_Dropoff, Location_Pickup, Date_Start,License_no, Employee_ID, License_Plate)
VALUES
('6780', 'Jan 10, 2021', '1st Street', '2nd Street', 'Jan 1, 2021', 001, 00910, 4321);


CREATE TABLE MAINTENANCE
(
License_Plate varchar(255),
Mileage int,
Service_done varchar(255),
Cost int,
PRIMARY KEY(License_Plate),
FOREIGN KEY(License_Plate) REFERENCES CAR(License_Plate)
);
INSERT INTO MAINTENANCE (License_Plate, Mileage, Service_done, Cost)
VALUES
('4321', 123410, 'Wash Exterior', 15);




