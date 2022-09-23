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