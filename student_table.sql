create database student_table;
use student_table;

create table students(studentId int primary key, name varchar(100), course varchar(50), email varchar(100), semester int);
describe students;

insert into students(studentId, name, course, email, semester) values (101, "Sonu", "MCA", "sonu@gmail.com", 4), (102, "sona", "BCA", "sona@gmail.com", 3), (103, "Archana", "MCA", "arch@gmail.com", 4), (104, "Pooja", "MCA", "pooja@gmail.com", 4), (105, "Muskan", "MCA", "muskan@gmail.com", 4), (106, "Neha", "BCA", "neha@gmail.com", 1), (107, "Sonam", "MCA", "sonam@gmail.com", 4), (108, "Priya", "BCA", "priya@gmail.com", 3);
alter table students add college varchar(100) default "invertis";
select* from students;
alter table students modify email varchar(150);
alter table students rename to student_details;
select* from student_details;


create table students(studentId int primary key, name varchar(100), course varchar(50), email varchar(100), semester int, marks int);
insert into students(studentId, name, course, email, semester, marks) values (101, "Sonu", "MCA", "sonu@gmail.com", 4, 23), (102, "sona", "BCA", "sona@gmail.com", 3, 45), (103, "Archana", "MCA", "arch@gmail.com", 4, 56), (104, "Pooja", "MCA", "pooja@gmail.com", 4, 71), (105, "Muskan", "MCA", "muskan@gmail.com", 4, 89), (106, "Neha", "BCA", "neha@gmail.com", 1, 55), (107, "Sonam", "MCA", "sonam@gmail.com", 4, 91), (108, "Priya", "BCA", "priya@gmail.com", 3, 34);
 select name, marks, 
 case
      when marks>=90 then 'Excellent'
      when marks>=70 then 'Good'
      when marks>=50 then 'Average'
      else 'FAIL'
end as Grade
from students;

create table faculty(facultyId int primary key, facultyName varchar(100), class varchar(50), subject varchar(100));
insert into faculty values (1001, "Navnika", "MCA", "ADBMS"), (1002, "Divyank", "MCA", "IIOT"), (1003, "Akhilesh", "MCA", "Python"), (1004, "Rahul", "MCA", "DSA");
select * from faculty;

create table fee(studentId int primary key, studentName varchar(100), paid_amount int, due_amount int, total_fee int default 60000);
insert into fee(studentId, studentName, paid_amount, due_amount) values (101, "Sonu", 23000, 37000), (102, "sona", 4500, 1500), (103, "Archana", 5500, 500), (104, "Pooja",60000, 0), (105, "Muskan",30000, 30000), (106, "Neha",4000, 20000), (107, "Sonam", 47000, 13000), (108, "Priya", 30000, 30000); 
select * from fee;

create table library(studentId int primary key, book_id int, issued_date date, return_date date, status varchar(20));
insert into library values (101, 65, '2026-09-12', '2026-09-19', "Not returned"), (103, 45, '2026-09-04', '2026-09-14', "Returned"), (105, 88, '2026-09-14', '2026-09-21', "Not returned"), (108, 97, '2026-09-08', '2026-09-15', "Returned");
select * from library;



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


