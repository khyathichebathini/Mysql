#create database
drop database if exists Mobilephones;

create database Mobilephones;
#view databases
show databases;

#use database
use Mobilephones;

#create table
create table Mobilephones(
id int primary key,
Mobilebrand varchar(40),
Series varchar(10),
Type varchar(10)
);
 
 show tables;
 select * from Mobilephones;
 
 #insert records into Mobilephones tables
 INSERT INTO Mobilephones (id,Mobilebrand,Series,type)
 values
('1','Null','15plus','Null'),
('2','iphone','Null','iOS'),
('3','Null','Samsung S8','Android'),
('4','Samsung','Null','Null'),
('5','iphone','Null','iOS'),
('6','Null','realme 12x','Null'),
('7','Vivo','Null','Android'),
('8','Null','nord','Null');

#vIEW THE RECORDS IN THE MOBILEPHONES TABLE AFTER INSERTING RECORDS
select * from Mobilephones;

#getting null values in Mobilephones tables
select * from Mobilephones where Mobilebrand is null;
select * from Mobilephones where Series is null;
select * from Mobilephones where type is null;

#update records in the Mobilephones table to fill null values
UPDATE Mobilephones SET Mobilebrand ='iphone' WHERE id=1;
UPDATE Mobilephones SET Mobilebrand ='Samsung' WHERE id=3;
UPDATE Mobilephones SET Mobilebrand ='Realme' WHERE id=6;
UPDATE Mobilephones SET Mobilebrand ='Oneplus' WHERE id=8;

UPDATE Mobilephones SET Series ='SE' WHERE id=2;
UPDATE Mobilephones SET Series ='S24' WHERE id=4;
UPDATE Mobilephones SET Series ='15 pro max' WHERE id=5;
UPDATE Mobilephones SET Series ='Vivo t3' WHERE id=7;

UPDATE Mobilephones SET type ='iOS' WHERE id=1;
UPDATE Mobilephones SET type ='Android' WHERE id=4;
UPDATE Mobilephones SET type ='Android' WHERE id=6;
UPDATE Mobilephones SET type ='Android' WHERE id=8;

#View the updated records in Mobilephones table
select * from Mobilephones;

alter table Mobilephones add column ram INT;
select * from Mobilephones;

describe Mobilephones;