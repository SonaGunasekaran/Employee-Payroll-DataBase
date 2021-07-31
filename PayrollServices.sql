---------UC1-Creating employee database--------
create database employee_payroll
use employee_payroll;
---------UC2-Creating employee payroll table--------
create table payroll_table
(
    id int identity(1,1) primary key,
	Name varchar(200) not null,
	Salary float,
	StartDate date
)