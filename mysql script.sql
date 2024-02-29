create database ecom;
use  ecom;

-- 1) You are required to create tables for supplier,customer,category,product,supplier_pricing,order,rating to store the data for the
-- E-commerce with the schema definition given below.
-- 2) You are required to develop SQL based programs (Queries) to facilitate the Admin team of the E-Commerce company to retrieve the data in
-- summarized format - The Data Retrieval needs are described below.

create table supplier (SUPP_ID INT Primary key, SUPP_NAME varchar(50) NOT NULL, SUPP_CITY varchar(50) NOT NULL, SUPP_PHONE varchar(50) NOT NULL);
create table customer (CUS_ID INT Primary key,CUS_NAME VARCHAR(20) NOT NULL, CUS_PHONE VARCHAR(10) NOT NULL, CUS_CITY VARCHAR(30) NOT NULL, CUS_GENDER CHAR);
create table category (CAT_ID INT Primary key , CAT_NAME VARCHAR(20) NOT NULL);
create table product (PRO_ID INT Primary key, PRO_NAME VARCHAR(20) NOT NULL DEFAULT "Dummy", PRO_DESC VARCHAR(60), CAT_ID INT ,foreign key(CAT_ID) REFERENCES category(CAT_ID));
create table supplier_pricing (PRICING_ID INT Primary key, PRO_ID INT , SUPP_ID INT, SUPP_PRICE INT DEFAULT 0, foreign key(PRO_ID) references product(PRO_ID), foreign key(SUPP_ID) references supplier(SUPP_ID));
create table orders (ORD_ID INT Primary key, ORD_AMOUNT INT NOT NULL, ORD_DATE DATE NOT NULL, CUS_ID INT ,PRICING_ID INT, foreign key(CUS_ID) references customer(CUS_ID),foreign key(PRICING_ID) references supplier_pricing(PRICING_ID));
create table rating (RAT_ID INT Primary key, ORD_ID INT, RAT_RATSTARS INT NOT NULL, foreign key(ORD_ID) references orders(ORD_ID));

-- Insert the following data in the table created above
insert into supplier values (1, 'Rajesh Retails', 'Delhi', 1234567890);
insert into supplier values (2, 'Appario Ltd.' ,'Mumbai', 2589631470);
insert into supplier values (3, 'Knome products', 'Banglore', 9785462315);
insert into supplier values (4, 'Bansal Retails', 'Kochi', 8975463285);
insert into supplier values (5, 'Mittal Ltd.', 'Lucknow', 7898456532);

insert into Customer values (1, 'AAKASH' ,9999999999, 'DELHI', 'M');
insert into Customer values (2, 'AMAN' ,9785463215, 'NOIDA', 'M');
insert into Customer values (3, 'NEHA' ,9999999999 ,'MUMBAI', 'F');
insert into Customer values (4, 'MEGHA' ,9994562399, 'KOLKATA', 'F');
insert into Customer values (5, 'PULKIT' ,7895999999 ,'LUCKNOW', 'M');

insert into Category values (1, 'BOOKS');
insert into Category values (2, 'GAMES');
insert into Category values (3, 'GROCERIES');
insert into Category values (4, 'ELECTRONICS');
insert into Category values (5, 'CLOTHES');

insert into Product values (1 , 'GTA V', 'Windows 7 and above with i5 processor and 8GB RAM', 2);
insert into Product values (2 , 'TSHIRT', 'SIZE-L with Black, Blue and White variations', 5);
insert into Product values (3 , 'ROG LAPTOP', 'Windows 10 with 15inch screen, i7 processor, 1TB SSD', 4);
insert into Product values (4 , 'OATS', 'Highly Nutritious from Nestle', 3);
insert into Product values (5 , 'HARRY POTTER', 'Best Collection of all time by J.K Rowling', 1);
insert into Product values (6 , 'MILK', '1L Toned MIlk', 3);
insert into Product values (7 , 'Boat Earphones', '1.5Meter long Dolby Atmos', 4);
insert into Product values (8 , 'Jeans', 'Stretchable Denim Jeans with various sizes and color', 5);
insert into Product values (9 , 'Project IGI', 'compatible with windows 7 and above', 2);
insert into Product values (10, 'Hoodie', 'Black GUCCI for 13 yrs and above', 5);
insert into Product values (11, 'Rich Dad Poor Dad', 'Written by RObert Kiyosaki', 1);
insert into Product values (12, 'Train Your Brain', 'By Shireen Stephen', 1);

insert into Supplier_pricing values (1, 1 ,2, 1500);
insert into Supplier_pricing values (2, 3, 5, 30000);
insert into Supplier_pricing values (3, 5, 1, 3000);
insert into Supplier_pricing values (4, 2, 3 ,2500);
insert into Supplier_pricing values (5, 4, 1 ,1000);
insert into Supplier_pricing values (6, 12, 2, 780);
insert into Supplier_pricing values (7, 12, 4, 789);
insert into Supplier_pricing values (8, 3, 1, 31000);
insert into Supplier_pricing values (9, 1, 5, 1450);
insert into Supplier_pricing values (10, 4, 2, 999);
insert into Supplier_pricing values (11, 7, 3, 549);
insert into Supplier_pricing values (12, 7, 4, 529);
insert into Supplier_pricing values (13, 6, 2, 105);
insert into Supplier_pricing values (14, 6, 1, 99);
insert into Supplier_pricing values (15, 2, 5, 2999);
insert into Supplier_pricing values (16, 5, 2, 2999);


insert into Orders values (101, 1500, '2021-10-06', 2, 1);
insert into Orders values (102, 1000, '2021-10-12', 3, 5);
insert into Orders values (103, 30000, '2021-09-16', 5, 2);
insert into Orders values (104, 1500, '2021-10-05', 1, 1);
insert into Orders values (105, 3000, '2021-08-16', 4, 3);
insert into Orders values (106, 1450, '2021-08-18', 1, 9);
insert into Orders values (107, 789, '2021-09-01', 3, 7);
insert into Orders values (108, 780, '2021-09-07', 5, 6);
insert into Orders values (109, 3000, '2021-09-10', 5, 3);
insert into Orders values (110, 2500, '2021-09-10', 2, 4);
insert into Orders values (111, 1000, '2021-09-15', 4, 5);
insert into Orders values (112, 789, '2021-09-16', 4, 7);
insert into Orders values (113, 31000, '2021-09-16', 1, 8);
insert into Orders values (114, 1000, '2021-09-16', 3, 5);
insert into Orders values (115, 3000, '2021-09-16', 5, 3);
insert into Orders values (116, 99, '2021-09-17', 2, 14);

insert into Rating values (1, 101, 4);
insert into Rating values (2, 102, 3);
insert into Rating values (3, 103, 1);
insert into Rating values (4, 104, 2);
insert into Rating values (5, 105, 4);
insert into Rating values (6, 106, 3);
insert into Rating values (7, 107, 4);
insert into Rating values (8, 108, 4);
insert into Rating values (9, 109, 3);
insert into Rating values (10, 110, 5);
insert into Rating values (11, 111, 3);
insert into Rating values (12, 112, 4);
insert into Rating values (13, 113, 2);
insert into Rating values (14, 114, 1);
insert into Rating values (15, 115, 1);
insert into Rating values (16,116, 0);

-- 4) Display the total number of customers based on gender who have placed individual orders of worth at least Rs.3000.
select c.CUS_GENDER, count(c.CUS_ID) from (select sum(ORD_AMOUNT) as TotalAmount , cus_id from orders group by cus_id) a 
join customer c on a.cus_id=c.cus_id
where TotalAmount>3000
group by c.cus_gender;

-- 5) Display all the orders along with product name ordered by a customer having Customer_Id=2
select ord_date, ord_id, ord_amount,cus_id,p.pro_name from
  (select ord_date, ord_id, ord_amount,sp.pro_id, cus_id from 
    (select * from orders where cus_id=2) ordr 
	 join supplier_pricing sp on sp.pricing_id=ordr.pricing_id) pid
   join product p on p.pro_id=pid.pro_id;
   
-- 6)Display the Supplier details who can supply more than one product
select s.* , sp.number_Of_Products from 
(select count(pro_id) as number_Of_Products , supp_id from supplier_pricing group by supp_id) sp
join supplier s on s.supp_id=sp.supp_id where sp.number_Of_Products>1;

-- 7) Find the least expensive product from each category and print the table with category id, name, product name and price of the product

select cat_name, pro.* 
from (select pro_name, supp_price, cat_id
      from (select * from supplier_pricing  order by supp_price asc limit 1) sp
      join product p on p.pro_id=sp.pro_id) pro
join category c on  pro.cat_id=c.cat_id;

-- 8)Display the Id and Name of the Product ordered after 2021-10-05.
select pro_name as product_name , spp.pro_id as product_ID
from (select sp.* 
from (select * from orders where ord_date>"2021-10-05") o
join supplier_pricing sp on sp.pricing_id=o.pricing_id) spp
join product p on p.pro_id=spp.pro_id ;

-- 9)Display customer name and gender whose names start or end with character 'A'.
select * from customer where cus_name like '%A' OR cus_name like 'A%';

-- 10)Create a stored procedure to display supplier id, name, Rating(Average rating of all the products sold by every customer) and
-- Type_of_Service. For Type_of_Service, If rating =5, print “Excellent Service”,If rating >4 print “Good Service”, If rating >2 print “Average
-- Service” else print “Poor Service”. Note that there should be one rating per supplier

DELIMITER //
create procedure getTypeOfService ()
BEGIN
select abc.* , Case when abc.rating=5 then  'Excellent Service'
when abc.rating >= 4 AND abc.rating<5 then 'Good Service'
when abc.rating > 2 AND abc.rating<4 then 'Average Service'
else 'poor Service' END Type_of_Service
from 
(select supp_p.* ,supp_name from
(select sum(rat_ratstars)/count(rat_ratstars) as Rating , supp_id from 
(select o.*, r.rat_ratstars from 
(select * from rating) r
join orders o on r.ord_id=o.ord_id) ord
join supplier_pricing sp on sp.pricing_id=ord.pricing_id
group by supp_id order by supp_id ) supp_p
join supplier s on s.supp_id=supp_p.supp_id ) abc;
END //
 
call getTypeOfService;

