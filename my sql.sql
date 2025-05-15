CREATE DATABASE elec;
USE elec;
CREATE TABLE electronic_gadgets (
 id int primary key,
 name VARCHAR(50),
 weight int,
 size int,
 price int,
 brand VARCHAR (20),
 origin_country VARCHAR(30),
 status VARCHAR(30)
);
INSERT INTO  electronic_gadgets (id,name,weight,size,price,brand,origin_country,status) 
VALUES
(101, "MOBILE", 15, 30, 25000, "vivo","CHINA", "instock"),
(102, "LAPTOP", 20, 32, 45000, "asus","INDIA", "instock"),
(103, "SMARTWATCH", 10, 20, 15000, "noise","CHINA", "instock");
SELECT * FROM electronic_gadgets;
ALTER table electronic_gadgets
ADD column brand_name VARCHAR(30) not null;

UPDATE weight
SET Size = 15
WHERE size = 10;

SET SQL_SAFE_UPDATES = 0;
