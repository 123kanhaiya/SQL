create table customer
(id int primary key,
customer_name varchar(50),
contact_number varchar(20),
email varchar(100),
address varchar(255),
pincode varchar (10),
)

create table city
(id int primary key,
city_name varchar(255),
)
alter table customer
add city_id int foreign key references city (id)

select * from customer
select * from city

create table resturant
(id int primary key,
city_id int foreign key references city (id),
address varchar(255),)

create table orderdetails
(id int primary key,
orderdate datetime,)

alter table resturant
add order_id int foreign key references orderdetails (id)

alter table resturant
add resturantname varchar(255)alter table customer
add customerid varchar(255)  unique 



create table menulist
(id int primary key,
menuname varchar(255),
price varchar(255),)


alter table orderdetails
add menuid int foreign key references menulist (id)