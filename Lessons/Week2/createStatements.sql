show databases;
drop database if exists persondb;
create database persondb;

show databases;

use persondb;

create table person(
    id integer not null primary key,
    firstname varchar(20) not null,
    lastname varchar(30) not null,
    age integer
);

show tables;

select * from person;

create table book(
    bookId integer not null primary key,
    bookName varchar(50) not null,
    price integer not null
);

describe book;
describe person;

show create table book;
show create table person;

drop table book;
show tables;