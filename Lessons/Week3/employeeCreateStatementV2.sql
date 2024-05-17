drop database if exists employeedb;
create database employeedb;

create table employeedb.employee(
    employeeId integer not null primary key,
    firstName varchar(20) not null,
    lastName varchar(30) not null,
    department varchar(10) not null,
    salary decimal(6,2)
);

drop user if exists 'maria@localhost';
create user 'maria'@'localhost' identified by '1234';
grant all privileges on employeedb.* to 'maria'@'localhost';

insert into employeedb.employee values(1, 'Matt', 'River', 'ict', 4000)
insert into employeedb.employee values(2, 'Mary', 'River', 'admin', 6000)
insert into employeedb.employee (employeeId, firstName, lastName)
values(3, 'Vera', 'Jones');