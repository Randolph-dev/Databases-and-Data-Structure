-- STEP 2: CREATING SATEMENTS FOR THE DATABASE
-- Creating the gamedb database
create database gamedb;

-- Using the gamedb database
use gamedb;

-- Creating the game table
create table game (
    number int primary key,
    name varchar(54) not null,
    genre varchar(14) not null,
    quantity int not null,
    year int not null
);

-- Inserting test data into the game table
insert into game (number, name, genre, quantity, year) values
(1, 'Ladybirds', 'brain-twister', 13, 2010),
(4, 'Jigsaw puzzle', 'adventure', 25, 1990);

-- Creating user isla@localhost and grant privileges
create user 'isla'@'localhost' IDENTIFIED by 'oiptOhUT';
grant ALL PRIVILEGES on gamedb.* to 'isla'@'localhost';

-- STEP 3: CREATING THE DATABASE
-- Creating the gamedb database
create database gamedb;

-- Use the gamedb database
use gamedb;

-- STEP 4: WRITE SQL STATEMENTS
-- Inserting data into the game table
insert into game (number, name, genre, quantity, year) values
(1, 'Ladybirds', 'brain-twister', 13, 2010),
(4, 'Jigsaw puzzle', 'adventure', 25, 1990),
(6, 'U.F.O', 'platformer', 150, 2005),
(5, 'Future 2525', 'brain-teaser', 7, 2000),
(7, 'Star Adventure', 'strategy', 5, 1995),
(2, 'The Rise and Fall of an Empire 22', 'board game', 20, 2017),
(3, 'Amnesia 2030', 'FPS', 1, 2012);

-- Select all columns from the game table
select * from game;

-- Select specific columns from the game table
select quantity, number, name FROM game;

-- Select games where genre is 'strategy'
select * from game where genre = 'strategy';

-- Select games where year is 2017
select * from game where year = 2017;

-- Select games where name is 'Future 2525'
select * from game where name = 'Future 2525';

-- Update game where number is 4
update game set year = 1995, name = 'Star Adventure' where number = 4;

-- Update game where number is 3
update game set name = 'Jigsaw puzzle', quantity = 30 where number = 3;

-- Update game where number is 7
update game set quantity = 100, name = 'Future 2525', year = 2017 where number = 7;

-- Update game where number is 6
update game set year = 2010, quantity = 5, name = 'Star Adventure' where number = 6;

-- Delete game where number is 7
delete from game where number = 7;

-- Delete game where number is 2
delete from game where number = 2;

-- Delete games where year is 1990
delete from game where year = 1990;

-- Delete games where genre is 'board game' and year is 1990
delete from game where genre = 'board game' and year = 1990;

-- Delete games where year is 2011 or year is 2010 or quantity is 25
delete from game where year in (2011, 2010) or quantity = 25;