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


--- assignment_2;

--- since my old tables contains data from the previous assigment
-- Iam deleting the existing tables and recreating them with tha values provided;
truncate table employees;
drop table departments;
drop schema employee;
create schema employee;
USE employee;
create table departments(
 department_id int primary key auto_increment,
 department_name varchar(100)
 );
 select * from departments;
 
 create table location(
 location_id int primary key auto_increment,
 location_name varchar(30)
 );
 select * from location;
 create table employees(
 employee_id int primary key auto_increment,
 employee_name varchar(50),
 gender enum('m','f'),
 age int,
 hire_date DATE default (current_date), 
 designation varchar(50),
 salary decimal(10,2),
 department_id int,
 foreign key (department_id) references departments(department_id),
 location_id int,
 foreign key (location_id) references location(location_id)
 );
 select * from employees;
 


 ---- new assignment starts here;
 
use employee;

INSERT INTO departments (department_id, department_name) VALUES
(1, 'Software Development'),
(2, 'Marketing'),
(3, 'Data Science'),
(4, 'Human Resources'),
(5, 'Product Management'),
(6, 'Content Creation'),
(7, 'Finance'),
(8, 'Design'),
(9, 'Research and Development'),
(10, 'Customer Support'),
(11, 'Business Development'),
(12, 'IT'),
(13, 'Operations');

INSERT INTO location (location_name) VALUES
('Chennai'),
('Bangalore'),
('Hyderabad'),
('Pune');

INSERT INTO employees (employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary) VALUES
(5001, 'Vihaan Singh', 'M', 27, '2015-01-20', 'Data Analyst', 3, 4, 60000),
(5002, 'Reyansh Singh', 'M', 31, '2015-03-10', 'Network Engineer', 12, 1, 80000),
(5003, 'Aaradhya Iyer', 'F', 26, '2015-05-20', 'Customer Support Executive', 10, 2, 45000),
(5004, 'Kiara Malhotra', 'F', 29, '2015-07-05', NULL, 8, 3, 70000),
(5005, 'Anvi Chaudhary', 'F', 25, '2015-09-11', 'Business Development Executive', 11, 1, 55000),
(5006, 'Dhruv Shetty', 'M', 28, '2015-11-20', 'UI Developer', 8, 2, 65000),
(5007, 'Anushka Singh', 'F', 32, '2016-01-15', 'Marketing Manager', 2, 3, 90000),
(5008, 'Diya Jha', 'F', 27, '2016-03-05', 'Graphic Designer', 8, 4, 70000),
(5009, 'Kiaan Desai', 'M', 30, '2016-05-20', 'Sales Executive', 11, 3, 55000),
(5010, 'Atharv Yadav', 'M', 29, '2016-07-10', 'Systems Administrator', 12, 4, 80000),
(5011, 'Saanvi Patel', 'F', 28, '2016-09-20', 'Marketing Analyst', 2, 1, 60000),
(5012, 'Myra Verma', 'F', 26, '2016-11-05', 'Operations Manager', 13, 2, 95000),
(5013, 'Arnav Rao', 'M', 33, '2017-01-20', 'Customer Success Manager', 10, 3, 75000),
(5014, 'Vihaan Mohan', 'M', 30, '2017-03-10', 'Supply Chain Analyst', 10, 2, 60000),
(5015, 'Ishaan Kumar', 'M', 27, '2017-05-20', 'Financial Analyst', 7, 1, 85000),
(5016, 'Zoya Khan', 'F', 31, '2017-07-05', 'Legal Counsel', 4, 4, 100000),
(5017, 'Kabir Nair', 'M', 28, '2017-09-11', 'IT Support Specialist', 12, 2, 80000),
(5018, 'Ishan Mishra', 'M', 25, '2017-11-20', 'Research Scientist', 9, 3, 75000),
(5019, 'Ishika Patel', 'F', 29, '2018-01-15', 'Talent Acquisition Specialist', 4, 4, 55000),
(5020, 'Aarav Nair', 'M', 32, '2018-03-05', 'Software Engineer', 1, 1, 90000),
(5021, 'Advik Kapoor', 'M', 26, '2018-05-20', 'Finance Analyst', 7, 3, 85000),
(5022, 'Aadhya Iyengar', 'F', 28, '2018-07-10', 'HR Specialist', 4, 4, 60000),
(5023, 'Anika Paul', 'F', 30, '2018-09-20', 'Public Relations Specialist', 2, 2, 70000),
(5024, 'Aryan Shetty', 'M', 27, '2018-11-05', 'Product Manager', 5, 1, 95000),
(5025, 'Avni Iyengar', 'F', 31, '2019-01-20', 'Data Scientist', 3, 4, 100000),
(5026, 'Vivaan Singh', 'M', 29, '2019-03-10', 'Business Analyst', 3, 2, 75000),
(5027, 'Ananya Paul', 'F', 32, '2019-05-20', 'Content Writer', 6, 3, 60000),
(5028, 'Anaya Kapoor', 'F', 26, '2019-07-05', 'Event Coordinator', 6, 1, 60000),
(5029, 'Arjun Kumar', 'M', 33, '2019-09-11', 'Quality Assurance Analyst', 12, 2, 80000),
(5030, 'Sara Iyer', 'F', 28, '2019-11-20', 'Project Manager', 5, 1, 90000);

select* from employees;

--- disntict values;
select distinct salary from employees;
-- alias
select age as Employee_age from employees;
select salary as Employee_salary from employees;
--- where clause and operators;
select * from employees
where salary >50000
 and hire_date < '2016-01-01';
 select* from employees 
 where designation is null;
 update employees set designation = 'DataScientist'
 where designation is null;
 select* from employees ;
 
 
 --- sorting and grouping data;
 -- order by;
 select * from employees order by department_id asc ,salary desc ;
 
 -- limit;
 select* from employees
 where hire_date >= '2018-01-01'
 and hire_date <= '2019-01-01'
 limit 5;
 
 select * from employees;
 
 -- aggregate function;
 -- total salary;
 select sum(salary) as total_salary from employees;
 -- finance designation;
 select sum(salary) as total_salary from employees
 where designation ='Finance Analyst';
select min(age) as min_age from employees;
-- group by;
select location_id, max(salary) as max_salary
from employees
group by location_id;

select designation, avg(salary)
from employees
where designation like '%analyst%'
group by designation;
-- having;
select * from employees;
select * from departments;



select department_id ,count(employee_id) as no_of_employees
from employees
 group by department_id 
having count(employee_id)< 3;
select location_id,avg(age)
from employees
where gender='f'
group by location_id
having avg(age) < 30;

-- joins;
-- inner join;
SELECT Employees.employee_name,Employees.designation,Departments.department_name
FROM Employees 
INNER JOIN Departments
ON Employees.department_id=Departments.department_id;

-- left join;

select departments.department_name, count(employees.employee_id) as total_emp
from departments
left join employees
on departments.department_id= employees.department_id
group by departments.department_id,departments.department_name;
select * from departments;
select distinct department_id
from employees;

 -- right join;
 select location.location_name, employees.employee_name
 from employees
 right join location 
 on employees.location_id=location.location_id;