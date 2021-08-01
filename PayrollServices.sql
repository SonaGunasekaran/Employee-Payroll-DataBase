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
---------UC8 Insert Address,Department and PhoneNumber into the Table---------
alter table payroll_table add PhoneNumber bigint
alter table payroll_table add Address varchar(200) default('Canada')
alter table payroll_table add Department varchar(100) not null default('VIP')
update payroll_table set PhoneNumber=123456 , Address='NewYork' , Department='Tester' where Name='Chandler'
update payroll_table set PhoneNumber=56789 , Address='Seattle' , Department='Developer' where Name='Monica'
update payroll_table set PhoneNumber=573869318 , Address='India' , Department='Associate' where Name='Joey'
update payroll_table set PhoneNumber=376638 , Address='German' , Department='HR' where Name='Ross'
select * from payroll_table;

---------UC9 Insert BasicPay,Deduction into the table and Calculate NetPay---------
alter table payroll_table drop column salary
alter table payRoll_table add BasicPay int, Deductions float, TaxablePay float, IncomeTax float,NetPay float
update payroll_table set BasicPay=4000, Deductions=1000, TaxablePay=100,Incometax=100 where Name='Chandler';
update payroll_table set NetPay=(BasicPay-Deductions) where Name ='chandler';
select * from payroll_table;
update payroll_table set BasicPay=6000, Deductions=2000, TaxablePay=1000,Incometax=200 where Name='Monica';
update payroll_table set NetPay=(BasicPay-Deductions) where Name ='Monica';
select * from payroll_table;
update payroll_table set BasicPay=8000, Deductions=3000, TaxablePay=2000,Incometax=300 where Name='Joey';
update payroll_table set NetPay=(BasicPay-Deductions) where Name ='Joey';
select * from payroll_table;
update payroll_table set BasicPay=10000, Deductions=4000, TaxablePay=3000,Incometax=400 where Name='Ross';
update payroll_table set NetPay=(BasicPay-Deductions) where Name ='Ross';
select * from payroll_table;

---------UC10 Insert Terissa as a part of Sales and Marketing---------
insert into payroll_table(Name,StartDate,Gender,PhoneNumber,Address,Department,BasicPay,Deductions,TaxablePay,IncomeTax)values('Terissa','2021-07-25','F',456789,'Marketting and Sales','Dubai',12000,6000,4000,500)
select * from payroll_table ;





