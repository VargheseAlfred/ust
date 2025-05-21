update students
set name = "alfred"
where student_id=3;

delete from students where student_id = 1;

create database db;
use db;
create table students1 (student_id int primary key,name varchar(100),age int,email varchar(100) unique,enrollment_date date);
insert into students1(student_id,name,age,email,enrollment_date) values (5,"ttt",26,"ttt","10-09-23");
select * from students1;
drop table students;
select students.name from
students
left join 
students1
on
students.student_id = students1.student_id;
select * from students1;
select * from students1;
create table details (id int primary key,name varchar(100),place varchar(100));
insert into details(id,name,place) values (5,"eee","gujarat");
select * from details;
select place,count(place) as count from details
group by place
having count>1;

create table faculty (id int primary key,faculty_name varchar(100),subjects varchar(100));
insert into faculty(id,faculty_name,subjects) values (6,"fff","business");
create table enrolled (id int primary key,subjects varchar(100),students_enrolled int(100));
insert into enrolled(id,subjects,students_enrolled) values (4,"bio",10);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT CHECK (Age >= 18),
    Gender VARCHAR(10),
    Position VARCHAR(50),
    Salary DECIMAL(10,2),
    JoinDate DATE,
    Department VARCHAR(50),
    Email VARCHAR(100) UNIQUE
);


INSERT INTO Employees (EmployeeID, Name, Age, Gender, Position, Salary, JoinDate, Department, Email) VALUES
(101, 'Alice Smith', 28, 'Female', 'HR Manager', 70000, '2021-06-15', 'HR', 'alice.smith@example.com'),
(102, 'Bob Johnson', 35, 'Male', 'Finance Analyst', 65000, '2020-03-10', 'Finance', 'bob.johnson@example.com'),
(103, 'Charlie Brown', 30, 'Male', 'Software Engineer', 80000, '2019-08-25', 'Engineering', 'charlie.brown@example.com'),
(104, 'David Lee', 25, 'Male', 'Intern', 35000, '2023-01-05', 'Engineering', 'david.lee@example.com'),
(105, 'Emma Davis', 40, 'Female', 'Project Manager', 90000, '2018-12-10', 'Operations', 'emma.davis@example.com'),
(106, 'Frank Harris', 45, 'Male', 'Senior Consultant', 95000, '2017-05-22', 'Consulting', 'frank.harris@example.com'),
(107, 'Grace Miller', 38, 'Female', 'Marketing Lead', 72000, '2016-09-18', 'Marketing', 'grace.miller@example.com');


select * from Employees;
