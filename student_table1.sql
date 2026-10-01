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


create table faculty(facultyId int primary key, facultyName varchar(100), class varchar(50), subject varchar(100));
insert into faculty values (1001, "Navnika", "MCA", "ADBMS"), (1002, "Divyank", "MCA", "IIOT"), (1003, "Akhilesh", "MCA", "Python"), (1004, "Rahul", "MCA", "DSA");
select * from faculty;

create table fee(studentId int primary key, studentName varchar(100), paid_amount int, due_amount int, total_fee int default 60000);
insert into fee(studentId, studentName, paid_amount, due_amount) values (101, "Sonu", 23000, 37000), (102, "sona", 4500, 1500), (103, "Archana", 5500, 500), (104, "Pooja",60000, 0), (105, "Muskan",30000, 30000), (106, "Neha",4000, 20000), (107, "Sonam", 47000, 13000), (108, "Priya", 30000, 30000); 
select * from fee;

create table library(studentId int primary key, book_id int, issued_date date, return_date date, status varchar(20));
insert into library values (101, 65, '2026-09-12', '2026-09-19', "Not returned"), (103, 45, '2026-09-04', '2026-09-14', "Returned"), (105, 88, '2026-09-14', '2026-09-21', "Not returned"), (108, 97, '2026-09-08', '2026-09-15', "Returned");
select * from library;

select
students.studentId, 
students.name, 
students.course, 
fee.due_amount, 
fee.total_fee
from students
inner join fee
where students.studentId=fee.studentId; 

select
students.studentId, 
students.name, 
students.course, 
library.book_id, 
library.status
from students
inner join library
ON students.studentId=library.studentId;

select
students.studentId, 
students.name, 
students.course, 
library.book_id, 
library.status
from students
right join library
ON students.studentId=library.studentId;

select
students.studentId, 
students.name, 
students.course, 
library.book_id, 
library.status
from students
left join library
ON students.studentId=library.studentId;