create database microsoft;

use microsoft;

create table employee
(
E_id int primary key,
E_Fname varchar(20),
E_Lname varchar(20),
Age int,
Designation varchar(20),
Software varchar(30)
);

create table users
(
U_id int primary key,
U_Fname varchar(20),
U_Lname varchar(20),
Age int,
Issue varchar(20),
Issue_id int,
Foreign Key(Issue_id) references employee(E_id)
);

INSERT INTO employee (E_id, E_Fname, E_Lname, Age, Designation, Software) VALUES
(101, 'Rahul', 'Mehta', 28, 'Developer', 'Java'),
(102, 'Sneha', 'Patel', 32, 'Tester', 'Selenium'),
(103, 'Amit', 'Sharma', 35, 'Manager', 'JIRA'),
(104, 'Neha', 'Singh', 26, 'Designer', 'Figma'),
(105, 'Karan', 'Verma', 30, 'DevOps', 'Docker');

INSERT INTO users (U_id, U_Fname, U_Lname, Age, Issue, Issue_id) VALUES
(201, 'Priya', 'Rao', 24, 'Login Error', 101),
(202, 'Ankit', 'Joshi', 29, 'App Crash', 102),
(203, 'Isha', 'Kapoor', 27, 'Bug Report', 103),
(204, 'Rohit', 'Desai', 31, 'Design Feedback', 104),
(205, 'Megha', 'Nair', 22, 'Deployment Fail', 105);

insert into users values(206, 'Aastha ', 'Kapoor', 21, '365 not working ', 1569);

select * from employee join users on employee.E_id = users.Issue_id;

select * from employee right join users on employee.E_id = users.Issue_id;

select * from employee left join users on employee.E_id = users.Issue_id;

select * from employee cross join users;

update employee set designation = "Senior Developer" where E_id = 101;

delete from users where U_id = 204;

select * from employee where Software = "Java";

select * from users;

select * from employee;
