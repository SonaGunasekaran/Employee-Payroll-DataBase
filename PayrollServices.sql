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
insert into payroll_table values ('Chandler',10000,'2021-07-23');
insert into payroll_table values ('Monica',1000,'2021-07-24');
insert into payroll_table values ('Joey',100000,'2021-07-25');
insert into payroll_table values ('Ross',100,'2021-07-26');

---------UC4-Retrieve values from the employee payroll table--------
select *from payroll_table;

---------UC5-Retrieve salary for particular employee from table--------
select Salary from payroll_table where Name ='Joey';
select Salary from payroll_table where StartDate between cast('2021-07-24' as date) and GetDate();

---------UC6-Alter the table and update values--------
alter table payroll_table add Gender varchar(10)
update payroll_table set Gender='M' where Name='Joey' or Name='Chandler'or Name='Ross'
update payroll_table set Gender='F' where Name ='Monica'
select * from payroll_table;

---------UC7 Database functions---------
select sum(Salary) as TotalSalary from payroll_table group by gender;
select avg(Salary) as AverageSalary from payroll_table group by gender;
select min(Salary) as MinimumSalary from payroll_table group by gender;
select max(Salary) as MaximumSalary from payroll_table group by gender;






