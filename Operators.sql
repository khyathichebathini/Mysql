drop database sum;
create database sum;
use sum;
create table numbers(
x int,
y int);

insert into numbers(x,y) values
(20,48),
(78,90),
(21,14),
(12,45),
(75,61),
(39,12),
(84,37),
(13,72);

select
x,
y,
x + y AS sum_result,
x- y AS difference_result,
x * y AS product_result,
x / y AS division_result,
x % y AS modulus_result,
power(x,y) AS exponential,
floor(x/y) AS floordivision_result
from
numbers;

#comparison operators
#creating 2nd database
drop database if exists Clothinglinedatabase;
create database Clothinglinedatabase ;

#view databases
show databases;

use Clothinglinedatabase;

create table Clothinglinedatabase(
Itemid INT PRIMARY KEY,
Clothingtype varchar(50),
Material varchar(50),
Size varchar(10),
Color varchar(20),
Quantityinstock INT,
Priceperunit INT
);

show tables;

Insert into Clothinglinedatabase(Itemid,Clothingtype,Material,Size,Color,Quantityinstock,Priceperunit)
values
(1,'T-Shirt','Cotton','M','Red','150','12'),
(2,'Jeans','Denim','L','Blue','120','40'),
(3,'Jacket','Leather','XL','Black','80','150'),
(4,'Dress','Silk','S','Green','60','70'),
(5,'Shorts','Polyester','M','Navy','90','20'),
(6,'Skirt','Cotton','S','Pink','110','25'),
(7,'Blouse','Chiffon','M','White','130','30'),
(8,'Sweater','Wool','L','Grey','70','60'),
(10,'Hoodie','Fleece','M','Black','140','35'),
(11,'Scarf','Wool','One Size','Red','200','15'),
(12,'Pajamas','Cotton','L','Blue','160','25'),
(13,'Socks','Wool','One Size','Grey','500','5'),
(14,'Hat','Cotton','One Size','Black','300','15'),
(15,'Gloves','Leather','M','Brown','75','20'),
(16,'Belt','Leather','One Size','Black','90','30'),
(17,'Vest','Cotton','M','White','110','20'),
(18,'Tie','Silk','One Size','Red','180','25'),
(19,'Tracksuit','Polyester','L','Grey','60','50'),
(20,'Boots','Leather',10,'Brown','40','120');

select * from Clothinglinedatabase;

#Equal to(=)
select * from Clothinglinedatabase  where size='One Size';

#not equal to (!=)
select * from Clothinglinedatabase where Material != 'Cotton';

#less than(<):
select * from Clothinglinedatabase where Priceperunit < 20;

#greater than (>):
select * from Clothinglinedatabase where Quantityinstock < 80;

#less than(<=):
select * from Clothinglinedatabase where Quantityinstock <= 60;

#greater than (>=):
select * from Clothinglinedatabase where Priceperunit >= 100;

#Logical operators
#AND operator:
select * from Clothinglinedatabase
WHERE Material= 'Wool' AND  Size = 'One Size';

#OR Operator
select * from Clothinglinedatabase
where Clothingtype= 'Denim' OR Color='Blue';

#NOT Operator
select * from Clothinglinedatabase
where NOT Clothingtype ='Jeans';

#Concatenation Operator
select Itemid,CONCAT(Material,' ',Clothingtype)AS Outfit
from Clothinglinedatabase;

#Like operator
select * from Clothinglinedatabase
where Clothingtype LIKE '%shirt' ;

select * from Clothinglinedatabase
where Clothingtype LIKE 'Track%' ;

select * from Clothinglinedatabase
where Size LIKE '%Size' ;

#IN Operator
select * from Clothinglinedatabase
where Color IN('Red','Black');

#Between operators
select * from Clothinglinedatabase where Quantityinstock between 40 AND 85;

#Between operators
select * from Clothinglinedatabase where Priceperunit between 15 AND 55;



