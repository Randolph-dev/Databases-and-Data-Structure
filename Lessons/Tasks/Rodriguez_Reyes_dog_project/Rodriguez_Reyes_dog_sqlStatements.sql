create user 'mia'@'localhost' identified by 'XenC0odX';
grant all privileges on dogdb.* to 'mia'@'localhost';
flush privileges; -- This statement is used to tell the server to reload the table's privileges.

-- Creating the database
create database if not exists dogdb;

-- Using the database
use dogdb;

-- Creating dog table
create table if not exists dog (
    number int not null AUTO_INCREMENT,
    name varchar(29) not null,
    weightKg int not null,
    breed varchar(31) not null,
    length int not null,
    primary key (number)
);

-- Inserting data for "dog" in the table
insert into dog (name, weightKg, breed, length) values
    ('Hound of Basker W.I.11e', 5, 'watchdog', 50),
    ('Spot', 25, 'spaniel', 20),
    ('Canine The III', 45, 'muddypaw', 40),
    ('Gigant Howler', 7, 'bulldog', 35),
    ('Barky', 13, 'furry tail-wagger', 30),
    ('Rex', 20, 'datahound', 70),
    ('Grand Duke of S.Q.L', 1, 'lapdog', 42);

-- Inserting additoinal data 
insert into dog (name, weightKg, breed, length) values
    ('Buddy', 10, 'golden retriever', 40),
    ('Max', 15, 'Labrador', 45),
    ('Lucy', 8, 'beagle', 30);

-- Updating existing data in "dog" table
update dog set weightKg = 12 where name = 'Buddy';

-- Deleting recrods from "dog" table by specific name and weight
delete from dog where name = 'Max';
delete from dog where weightKg > 20;
-- Deletes ALL data from "dog" table. (Use with Caution).
delete from dog;

-- Select data from "dog" table depending on specific criteria
select * from dog where breed = 'labrador';
select * from dog where weightkg > 10;
select * from dog order by length desc;

-- 