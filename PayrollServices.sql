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

---------UC3-Insert values into employee payroll table--------
insert into payroll_table values ('Chandler',10000,'2021-07-23')
insert into payroll_table values ('Monica',1000,'2021-07-24')
insert into payroll_table values ('Joey',100000,'2021-07-25')
insert into payroll_table values ('Ross',100,'2021-07-26')

---------UC3-Retrieve values from the employee payroll table--------
select *from payroll_table