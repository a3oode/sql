create database store ;

-- 1
use store ;
create table users (
id int primary key not null ,
full_name VARCHAR (20),
email varchar (20)unique ,
gender char(1) check (gender = "M" or gender = "F"),
date_of_pirth varchar(15),
cerated_at datetime ,
country_code int ,

foreign key ( country_code) references store ( code)
);

-- 2
use store ;
create table orders (
id int primary key ,
user_id int ,
status varchar(6)  check (status = "status " or status = "finish "),

created_at datetime ,
foreign key (user_id) references store( id )
);
-- 3 
use store ;
create table order_products (
order_id int primary key  ,
product_id int ,
quantity int default 0 ,
foreign key (order_id) references store( id ),
foreign key (product_id) references store( id )


);
-- 4
use store ;
create table products (
id int ,
name varchar (10) not null ,
price int  default 0 ,
status varchar(10) check (status = "valid " or status = "expired ") ,
created_at datetime

);
 --5
use store ;
create table countrise (
code int ,
name varchar (20) ,
continet_name varchar (20) not null ,
 UNIQUE (name)

);

-- DML commands 


use store ;
insert into countries 
values ('101' ,'abdullh ','KSA' );

use store ;
insert into users
values (101 ,"abullh ", "bode@gmail.com" ,"M", "1998/3/30" ,"2020-2-30 3:50:00 AM",1);


use store ;
insert into orders 
values (12,1222,ksa,2022-4-14);

use store ;
insert into products 
values ( 10 ,200 ,"ksa", "2022-4-11 12:00 AM ");



use store ;
insert into order_products 
 values(111,112,"A" );
 
 use store ;
 drop table products ;
 



