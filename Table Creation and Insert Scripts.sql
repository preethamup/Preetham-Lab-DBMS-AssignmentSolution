create table supplier
(
	supp_id int,
    supp_name varchar(20),
    supp_city varchar(20),
    supp_phone bigint
);

insert into supplier values
(1,'Rajesh Retails', 'Delhi',1234567890),
(2,'Appario Ltd.', 'Mumbai',2589631470),
(3,'Knome products', 'Banglore',9785462315),
(4,'Bansal Retails', 'Kochi',8975463285),
(5,'Mittal Ltd.', 'Lucknow',7898456532);

select * from supplier;

---------------------------------------

create table customer
(
	cus_id int,
    cus_name varchar(20),
    cus_phone bigint,
    cus_city varchar(20),
    cus_gender varchar(1)
);

insert into customer values
(1,'AAKASH',9999999999,'DELHI','M'),
(2,'AMAN',9785463215,'NOIDA','M'),
(3,'NEHA',9999999999,'MUMBAI','F'),
(4,'MEGHA',9994562399,'KOLKATA','F'),
(5,'PULKIT',7895999999,'LUCKNOW','M');

select * from customer;

---------------------------------------------------------------

create table Category
(
	cat_id int,
    cat_name varchar(20)
);

insert into category values
(1,'BOOKS'),
(2,'GAMES'),
(3,'GROCERIES'),
(4,'ELECTRONICS'),
(5,'CLOTHES');

select * from category;

--------------------------------------------------

create table product
(
	pro_id int,
    pro_name varchar(20),
    pro_desc varchar(20),
    cat_id int
);

insert into product values
(1,'GTA V','DFJDJFDJFDJFDJFJF',2),
(2,'TSHIRT','DFDFJDFJDKFD',5),
(3,'ROG LAPTOP','DFNTTNTNTERND',4),
(4,'OATS','REURENTBTOTH',3),
(5,'HARRY POTTER','NBEMCTHTJTH',1);

select * from product;

---------------------------------

create table product_details
(
	prod_id int,
    pro_id int,
    supp_id int,
    prod_price int
);

insert into product_details values
(1,1,2,1500),
(2,3,5,30000),
(3,5,1,3000),
(4,2,3,2500),
(5,4,1,1000);

select * from product_details;

----------------------------------------------------

create table ordr
(
	ord_id int,
    ord_amount int,
    ord_date date,
    cus_id int,
    prod_id int
);

insert into ordr values
(20,1500,'2021-10-12',3,5),
(25,30500,'2021-09-16',5,2),
(26,2000,'2021-10-05',1,1),
(30,3500,'2021-08-16',4,3),
(50,2000,'2021-10-06',2,1);

select * from Ordr;

---------------------------------------------------------------

create table rating
(
	rat_id int,
    cus_id int,
    supp_id int,
    rat_ratstars int
);

insert into rating values
(1,2,2,4),
(2,3,4,3),
(3,5,1,5),
(4,1,3,2),
(5,4,5,4);

select * from rating;

------------------------------------------------------