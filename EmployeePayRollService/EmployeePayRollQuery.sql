---UC1-----
create database EmployeePayRollServices

use EmployeePayRollServices
-----UC2----
create table employee_payroll
(
Id int IDENTITY(1,1) Primary key,
Name varchar(50) NOT NULL,
Salary float NOT NULL,
Startdate date ,
);
-----UC3----
insert into employee_payroll values('Prabhudas',25000,GETDATE())
insert into employee_payroll values('Bhanudas',35000,GETDATE())
insert into employee_payroll values('Amarendra',23000,GETDATE())
-----UC4-----
SELECT * FROM employee_payroll
-----UC5-----
select * from employee_payroll where Name='Bhanudas'
select * from employee_payroll where Startdate  between '01-01-1999' and  getdate()
select * from employee_payroll where Startdate between  CAST('01-31-1995' as date) and '2025-01-01'
-----UC6-----
alter table employee_payroll Add Gender char(1)  NOT NULL default 'M'  
update employee_payroll set Name='Priyanka' where Name= 'Prabhudas'
update employee_payroll set Gender='F' where Name= 'Priyanka'
----UC7------
SELECT SUM(salary) as TotalSalary,gender FROM employee_payroll GROUP BY gender;
SELECT Min(salary) as MinimumSalary,gender FROM employee_payroll GROUP BY gender;
SELECT Max(salary) as MaxSalary,gender FROM employee_payroll GROUP BY gender;
SELECT Count(salary) as CountIs,gender FROM employee_payroll GROUP BY gender;
-----UC8------
alter table employee_payroll add PhoneNumber bigint
alter table employee_payroll add Addresss varchar(100) default 'Bombay';
alter table employee_payroll add Department varchar(20) NOT NULL default 'IT' 
