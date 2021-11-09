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