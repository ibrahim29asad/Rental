CREATE DATABASE CARRENTAL; 
USE CARRENTAL;

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


CREATE TABLE BOOKING_DETAIL (
	Reservation_no			varchar(255) not null,
	Date_End				varchar(25) not null,
	Location_Dropoff		varchar(255),
    Location_Pickup			varchar(255) not null,
    Date_Start				varchar(25),
    License_no				int not null,
    Employee_ID				int not null,
    License_Plate           varchar(255) not null,
	primary key (Reservation_no),
    FOREIGN KEY(License_no) REFERENCES CUSTOMER(License_no),
    FOREIGN KEY(Employee_ID) REFERENCES EMPLOYEE(Employee_ID),
    FOREIGN KEY(License_Plate) REFERENCES CAR(License_Plate)
);

CREATE TABLE EMPLOYEE (
	Employee_ID	    int not null,
	Fname			varchar(25),
	Lname			varchar(12),
    Position		varchar(2),
    Store_Id        integer,
    License_no      int,
	primary key (Employee_ID),
    FOREIGN KEY(Store_Id) REFERENCES RENTAL_CENTER(Store_Id)
    
);


CREATE TABLE Payment (
	Card_No			    int not null,
	Form_Of_Payment		varchar(255) not null,
	CVV			        int not null,
    Name_On_Card		varchar(255) not null,
    Billing_Address     varchar(255) not null,
    Store_Id            int,
	primary key (Card_No),
    FOREIGN KEY(License_no) REFERENCES CUSTOMER(License_no),
    FOREIGN KEY(Store_Id) REFERENCES RENTAL_CENTER(Store_Id)
    
);

CREATE TABLE MAINTENANCE
(
License_Plate varchar(255),
Mileage int,
Service_done varchar(255),
Cost int,
PRIMARY KEY(License_Plate),
FOREIGN KEY(License_Plate) REFERENCES CAR(License_Plate)
);

CREATE TABLE CAR
(
License_Plate varchar(255),
Price int,
Damage varchar(255),
Brand varchar(255),
Model varchar(255),
Colour varchar(255),
No_Seats int,
Storage int,
Size varchar(255),
Store_id int,
PRIMARY KEY(License_Plate),
FOREIGN KEY(Store_Id) REFERENCES RENTAL_CENTER(Store_Id)
);

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

CREATE TABLE RENTAL_CENTER
(
Store_Id int, 
Postal_Code varchar(255),
Street_Number varchar(255),
City varchar(255),
PRIMARY KEY(Store_Id)
);

CREATE TABLE RENT
(
License_no int,
License_Plate varchar(255),
PRIMARY KEY(License_no, License_Plate),
FOREIGN KEY(License_no) REFERENCES CUSTOMER(License_no),
FOREIGN KEY(License_Plate) REFERENCES CAR(License_Plate)
);

CREATE TABLE LOGIN
(
Employee_ID int,
Passwords varchar(255),
PRIMARY KEY(Employee_ID),
FOREIGN KEY(Employee_ID) REFERENCES EMPLOYEE(Employee_ID)
);
