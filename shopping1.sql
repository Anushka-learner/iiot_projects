create database shopping;
use shopping;

create table customer(CId int primary key, username varchar(200), age int, phoneNum varchar(13), email varchar(50));
insert into customer values (101, "Sachin", 39, "+918968678889", "sachin@gmail.com"), (102, "Sneha", 22, "+918967987889", "sneha@gmail.com"), (103, "Bindu", 31, "+918498284819", "bindu@gmail.com"), (104, "Aniket", 23, "+91898898392", "aniket@gmail.com"), (105, "Arush", 30, "+918982838391", "arush@gmail.com"), (106, "Sunaina", 35, "+918968987859", "sunaina@gmail.com");
select * from customer;

create table product(PId int primary key, Pname varchar(200), category varchar(13), price int);
insert into product values (901, "Laptop", "Electronics", 45000), (902, "SmartPhone", "Electronics", 20000), (903, "Headphones", "Accessories", 1500), (904, "Keyboard", "Accessories", 800), (905, "Mouse", "Accessories", 500), (906, "USB Cable", "Electronics", 250);
select * from product;

select Pname, category,  price from product where category="Electronics" and price>40000;

select pname, category,  price,
case
	when category='Electronics' and price>40000 then 'yes'
end as isMoreCostly
from product;


create table orders(orderId int primary key, custAdd varchar(200), phone varchar(13));
insert into orders values (1001, "Bareilly", "+91674587874"), (1002, "Kannauj", "+91674887645"), (1003, "Bareilly", "+91678574874"), (1004, "Agra", "+97547887940");
select * from orders;

create table Preturn(CId int primary key, PId int, Pdispachment date, custAdd varchar(200));
insert into Preturn values (102, 901, '2026-09-19', "Bareilly"), (105, 904, '2026-09-21', "Kannauj"), (101, 903, '2026-09-12', "Kannauj"), (106, 903, '2026-09-22', "Bareilly");
select * from Preturn;

create table shipment(orderId int, custAdd varchar(200), paymentType varchar(20));
insert into shipment values(1001, "Bareilly", "cash on delivery"), (1002, "Kannauj", "prepaid"), (1003, "Bareilly", "cash on delivery"), (1004, "Bareilly", "cash on delivery");
select * from shipment;