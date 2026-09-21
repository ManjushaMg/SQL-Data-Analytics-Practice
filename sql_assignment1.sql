create schema employee;
use employee;
create table departments(
 department_id int primary key auto_increment,
 department_name varchar(100)
 );
  insert into departments(department_id,department_name) values
 (10, 'Accounting'),
(20, 'Human Resources'),
(30, 'Sales'),
(40, 'Marketing'),
(50, 'Information Technology'),
(60, 'Finance'),
(70, 'Operations'),
(80, 'Research and Development'),
(90, 'Customer Service'),
(100, 'Administration');
select * from departments;
create table location(
 location_id int primary key auto_increment,
 location varchar(30)
 );
 insert into location(location_id,location) values
 (101, 'New York'),
(102, 'London'),
(103, 'Tokyo'),
(104, 'Dubai'),
(105, 'Mumbai'),
(106, 'Singapore'),
(107, 'Toronto'),
(108, 'Sydney'),
(109, 'Berlin'),
(110, 'Paris');
select * from location;
alter table departments
rename  TO departments_info;
alter table location
rename to Locations;
create table employees(
employee_id int primary key auto_increment,
employee_name varchar(50),
gender enum('M','F'),
age int,
hire_date DATE default '2025-04-03',
designation varchar(100),
salary decimal(10.2),
department_id int,
foreign key (department_id) references departments_info(department_id),
location_id int,
foreign key(location_id) references Locations(location_id));
select* from employees;
alter table employees
add column email varchar(30);
alter table employees
modify column designation text;
alter table employees
drop column age;
alter table employees
rename column hire_date to date_of_join;
truncate table employees;
drop table employees;
drop schema employee;

--- constraints;
-- database recreation;


create schema employee;

use  employee;

-- departments table;

create table departments(
 department_id int primary key auto_increment unique,
 department_name varchar(100) not null
 );
  insert into departments(department_id,department_name) values
 (10, 'Accounting'),
(20, 'Human Resources'),
(30, 'Sales'),
(40, 'Marketing'),
(50, 'Information Technology'),
(60, 'Finance'),
(70, 'Operations'),
(80, 'Research and Development'),
(90, 'Customer Service'),
(100, 'Administration');
select * from departments;

-- location table;
create table location(
 location_id int primary key auto_increment unique,
 location varchar(30) not null
 );
 insert into location(location_id,location) values
 (101, 'New York'),
(102, 'London'),
(103, 'Tokyo'),
(104, 'Dubai'),
(105, 'Mumbai'),
(106, 'Singapore'),
(107, 'Toronto'),
(108, 'Sydney'),
(109, 'Berlin'),
(110, 'Paris');
select * from location;
---- employees table;

create table employees(
employee_id int primary key auto_increment unique,
employee_name varchar(50) not null,
gender enum('M','F'),
age int check(age>=18),
hire_date DATE default (current_date),
designation varchar(100),
salary decimal(10.2),
department_id int,
foreign key (department_id) references departments(department_id),
location_id int,
foreign key(location_id) references Location(location_id));
select* from employees;
insert into employees(employee_name, gender, age, designation, salary, department_id, location_id)VALUES
('Arun Kumar', 'M', 28, 'Software Engineer', 55000.00, 10, 101),
('Anjali Nair', 'F', 26, 'Data Analyst', 48000.00, 20, 102),
('Rahul Menon', 'M', 32, 'Project Manager', 75000.00, 30, 103),
('Priya Sharma', 'F', 29, 'HR Executive', 42000.00, 40, 104),
('Vivek Raj', 'M', 35, 'Team Lead', 68000.00, 50, 105),
('Sneha Thomas', 'F', 27, 'Financial Analyst', 52000.00, 60, 106),
('Adithya Das', 'M', 31, 'Business Analyst', 60000.00, 70, 107),
('Meera Joseph', 'F', 30, 'Marketing Executive', 45000.00, 80, 108),
('Nikhil Kumar', 'M', 25, 'Junior Developer', 40000.00, 90, 109),
('Divya Menon', 'F', 34, 'Senior Developer', 72000.00, 100, 110);