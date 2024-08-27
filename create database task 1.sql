DROP DATABASE if exists StudentInformation;

#create 1st database
#create database StudentInformation
create database StudentInformation;
#view databases
show databases;

#use database
use StudentInformation;

#create StudentInformation tables
CREATE TABLE StudentInformation(
Studentid INT PRIMARY KEY,
Name varchar(50),
DOB date,
Subject varchar(10),
Marks varchar(100)
);
 
SHOW TABLES;

#INSERT RECORDS INTO StudentInformation TABLE
INSERT INTO StudentInformation (Studentid,Name,DOB,Subject,Marks)
values
(1,'Khyathi','2003-09-14','Science','90'),
(2,'Keerthi','2002-09-10','Science','90'),
(3,'Ajitha','2003-08-04','Science','80'),
(4,'Bhavana','2004-05-24','Science','70');

#View the records into StudentInformation Table after inserting records
select * from StudentInformation;

DROP DATABASE if exists StudentInformation;

#create 2nd database
DROP DATABASE if exists Internship;
#create database Internship
create database Internship;

#view databases
show databases;

#use database
use Internship;

#create Internship tables
CREATE TABLE Internship(
Studentid INT PRIMARY KEY,
Name varchar(50),
Course varchar(50),
Duration varchar(10),
Adress varchar(100)
);
 
SHOW TABLES;

#INSERT RECORDS INTO Internship TABLE
INSERT INTO Internship (Studentid,Name,Course,Duration,Adress)
values
(1,'Khyathi','BA','6MONTHS','Hyderabad'),
(2,'Keerthi','DS','6MONTHS','Bangalore'),
(3,'Ajitha','DA','6MONTHS','Bangalore'),
(4,'Bhavana','BA','6MONTHS','Hyderabad');

#View the records into Internship Table after inserting records
select * from Internship;

#create 3rd database
DROP DATABASE if exists Insurance;
#create database Insurance
create database Insurance;
#view databases
show databases;

#use database
Use Insurance;

#create Insurance table
CREATE TABLE Insurance(
Name varchar(50),
Age INT PRIMARY KEY,
Gender varchar(10),
TypeofInsurance varchar(50)
);

SHOW TABLES;

#INSERT RECORDS INTO Insurance TABLE
INSERT INTO INSURANCE (Name,Age,Gender,TypeofInsurance)
values
('Khyathi','20','Female','Term Insurance'),
('Keerthi','22','Female','Whole life Insurance'),
('Ajitha','21','Female','Money back plans'),
('Bhavana','19','Female','Endowment policy');

#Voew the records into Insurance table after inserting records
select * from Insurance;