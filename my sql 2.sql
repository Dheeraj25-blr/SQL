create DATABASE furniture;
USE furniture;
create table furniture_info (
 id int PRIMARY KEY,
 name VARCHAR(30),
 material VARCHAR(50),
 price INT,
 category VARCHAR(30),
 style VARCHAR(20),
 brand VARCHAR(30),
 origin_country VARCHAR(30),
 available_status VARCHAR(30)
);
INSERT INTO furniture_info (id,name,material,price,category,style,brand,origin_country,available_status)
VALUES
(101, "WOOD", "CHAIR", 1200, "MODERN", "ROCKINGCHAIR","FURNICO", "INDIA", "INSTOCK"),
(102, "METAL", "TABLE", 1000, "INDUSTRIAL", "NIKAMAL NOVELLA", "METALL", "USA", "INSTOCK"),
(103, "LEATHER", "SOFA", 1500, "CLASSIC", " ERUBA SIGNATURE", "COMFORTLUX", "ITALY", "OUTOFSTOCK"),
(104, "PLASTIC", "STOOL", 1700, "MINIMAL", "NIKAMAL", "QUICKHOME", "INDIA", "INSTOCK"),
(105, "LEATHER", "ARMCHAIR", 2000, "MODERN", "NOVELL","CAROLINA LEATHER", "USA", "INSTOCK"),
(106, "WOOD", "BED", 1200, "CLASSIC", "NIKAMAL","FUTON BEDS", "INDIA", "INSTOCK");
  select * from furniture_info;
  
  update furniture_info
  set price = 2000
  where price = 1700;
  SELECT * FROM furniture_info where price > 1200 AND name = "leather";
  select * from furniture_info where price < 2000 OR name = "wood";
  ALTER table furniture_info
  ADD COLUMN size int;
  
select count(name), material
FROM furniture_info
group by material
having max(price) > 1200;




  