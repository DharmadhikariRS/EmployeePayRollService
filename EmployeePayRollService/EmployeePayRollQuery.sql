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
