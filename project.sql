-- create database
create database project;

-- use database
use project;

-- create the table

-- Movie Table
create table movie(
movie_id int primary key,
movie_name varchar(100) not null unique,
m_type varchar(50) not null,
duration int check(duration >30),
release_date date not null,
language varchar(10) default 'Tamil');


-- booking table
create table booking(
booking_id int primary key,
movie_id int not null,
theater_id int not null,
customer_name varchar(100) not null,
seat_no varchar(10) not null unique,
booking_date date not null,
show_time time not null,
ticket_price decimal(10,2) check (ticket_price >= 50),
constraint foreign key(movie_id) references movie(movie_id),
constraint foreign key(theater_id) references theater(theater_id)
);

-- Theater Table
create table theater(
theater_id int ,
theater_name varchar(100) not null,
location varchar(100)not null,
capacity int,
screen_count int,
constraint primary key(theater_id),
constraint unique(theater_name),
constraint check (capacity >=50),
constraint check (screen_count >= 1)
);

-- insert rows

-- movie table rows
INSERT INTO Movie(
movie_id, movie_name,m_type,duration,release_date,language)
VALUES
(1,'Leo','Action',165,'2023-10-19','Tamil'),
(2,'Jawan','Action',170,'2023-09-07','Hindi'),
(3,'Varisu','Family',150,'2023-01-11','Tamil'),
(4,'Vikram','Thriller',175,'2022-06-03','Tamil'),
(5,'Avatar 2','Sci-Fi',190,'2022-12-16','English'),
(6,'KGF 2','Action',168,'2022-04-14','Kannada'),
(7,'RRR','Historical',175,'2022-03-25','Telugu'),
(8,'Master','Action',180,'2021-01-13','Tamil'),
(9,'Beast','Action',155,'2022-04-13','Tamil'),
(10,'Don','Comedy',155,'2022-05-13','Tamil'),
(11,'PS-1','Historical',167,'2022-09-30','Tamil'),
(12,'PS-2','Historical',168,'2023-04-28','Tamil'),
(13,'Iron Man','Sci-Fi',126,'2008-05-02','English'),
(14,'Avengers','Sci-Fi',142,'2012-05-04','English'),
(15,'Kaithi','Thriller',145,'2019-10-25','Tamil'),
(16,'Jailer','Action',160,'2023-08-10','Tamil'),
(17,'Thunivu','Action',150,'2023-01-11','Tamil'),
(18,'Doctor','Comedy',150,'2021-10-09','Tamil'),
(19,'Karnan','Drama',158,'2021-04-09','Tamil'),
(20,'Good Night','Family',120,'2023-05-12','Tamil'),
(21,'Maharaja','Action',160,'2025-06-14','Tamil');

-- theater table rows

INSERT INTO theater 
(theater_id,theater_name,location,capacity,screen_count)
VALUES
(101,'AGS Cinemas','Chennai',300,4),
(102,'PVR Velachery','Chennai',250,5),
(103,'INOX','Coimbatore',280,4),
(104,'Rohini Theater','Chennai',500,5),
(105,'Sathyam Cinemas','Chennai',450,6),
(106,'KG Cinemas','Coimbatore',350,4),
(107,'Vetri Theater','Chennai',400,3),
(108,'Jazz Cinemas','Chennai',350,4),
(109,'Fun Cinemas','Madurai',280,3),
(110,'Amirtha Cinemas','Erode',250,3),
(111,'Kumaran Theater','Trichy',300,3),
(112,'IMAX Hyderabad','Hyderabad',600,7),
(113,'INOX Bangalore','Bangalore',350,4),
(114,'PVR Mumbai','Mumbai',500,6),
(115,'PVR Delhi','Delhi',550,6),
(116,'City Center Cinemas','Chennai',300,3),
(117,'Thangam Theater','Salem',280,3),
(118,'Ganga Cinemas','Tirupur',250,3),
(119,'Senthil Kumaran','Coimbatore',350,4),
(120,'Raja Theater','Chennai',300,3),
(121,'Luxe Cinemas','Chennai',550,7);

-- booking table rows

INSERT INTO Booking 
(booking_id,movie_id,theater_id,customer_name,seat_no, booking_date, show_time,ticket_price)
VALUES
(1001,1,101,'Arun','A01','2024-12-01','10:00',150),
(1002,2,102,'Kumar','A02','2024-12-02','11:00',180),
(1003,3,103,'Siva','B01','2024-12-03','14:00',200),
(1004,4,104,'Vijay','B02','2024-12-03','15:00',220),
(1005,5,105,'Ramesh','C01','2024-12-04','16:00',300),
(1006,6,106,'Sathish','C02','2024-12-04','10:00',250),
(1007,7,107,'Aravind','D01','2024-12-05','17:00',200),
(1008,8,108,'Karthik','D02','2024-12-05','18:00',190),
(1009,9,109,'Sangeetha','E01','2024-12-06','19:00',170),
(1010,10,110,'Priya','E02','2024-12-06','20:00',160),
(1011,11,111,'Mahesh','F01','2024-12-07','21:00',210),
(1012,12,112,'Deepak','F02','2024-12-07','14:00',300),
(1013,13,113,'Suresh','G01','2024-12-08','15:00',350),
(1014,14,114,'Rahul','G02','2024-12-08','16:00',400),
(1015,15,115,'Kani','H01','2024-12-09','17:00',220),
(1016,16,116,'Monika','H02','2024-12-09','18:00',230),
(1017,17,117,'Nisha','I01','2024-12-10','19:00',240),
(1018,18,118,'Harish','I02','2024-12-10','20:00',180),
(1019,19,119,'Ajith','J01','2024-12-11','21:00',200),
(1020,20,120,'Swathi','J02','2024-12-12','22:00',190),
(1021,21,121,'Sopi','K01','2024-12-12','10:00',250),
(1022,1,101,'Ravi','A03','2024-12-13','10:00',150),
(1023,2,102,'Meena','A04','2024-12-13','11:00',180),
(1024,3,103,'Bala','B03','2024-12-14','14:00',200),
(1025,4,104,'Anu','B04','2024-12-14','15:00',220),
(1026,5,105,'Karthi','C03','2024-12-15','16:00',300),
(1027,6,106,'Keerthi','C04','2024-12-15','10:00',250),
(1028,7,107,'Prakash','D03','2024-12-16','17:00',200),
(1029,8,108,'Bhavya','D04','2024-12-16','18:00',190),
(1030,9,109,'Gokul','E03','2024-12-17','19:00',170),
(1031,10,110,'Pooja','E04','2024-12-17','20:00',160),
(1032,11,111,'Lokesh','F03','2024-12-18','21:00',210),
(1033,12,112,'Shalini','F04','2024-12-18','14:00',300),
(1034,13,113,'Dinesh','G03','2024-12-19','15:00',350),
(1035,14,114,'Ritika','G04','2024-12-19','16:00',400),
(1036,15,115,'Saravanan','H03','2024-12-20','17:00',220),
(1037,16,116,'Vasanth','H04','2024-12-20','18:00',230),
(1038,17,117,'Deepa','I03','2024-12-21','19:00',240),
(1039,18,118,'Manoj','I04','2024-12-21','20:00',180),
(1040,19,119,'Suresh','J03','2024-12-22','21:00',200),
(1041,20,120,'Revathi','J04','2024-12-22','22:00',190),
(1042,21,121,'Arjun','K02','2024-12-23','10:00',250),
(1043,1,101,'Anand','A11','2024-12-01','10:00',150),
(1044,2,102,'Divya','A12','2024-12-02','11:00',180),
(1045,3,103,'Revathi','B11','2024-12-03','14:00',200),
(1046,4,104,'Surya','B12','2024-12-03','15:00',220),
(1047,5,105,'Sindhu','C11','2024-12-04','16:00',300),
(1048,6,106,'Preethi','C12','2024-12-04','10:00',250),
(1049,7,107,'Sanjay','D11','2024-12-05','17:00',200),
(1050,8,108,'Karthik','D12','2024-12-05','18:00',190),
(1051,9,109,'Nandhini','E11','2024-12-06','19:00',170),
(1052,10,110,'Vinoth','E12','2024-12-06','20:00',160),
(1053,11,111,'Aishwarya','F11','2024-12-07','21:00',210),
(1054,12,112,'Madhan','F12','2024-12-07','14:00',300),
(1055,13,113,'Janani','G11','2024-12-08','15:00',350);


-- retrieve table data
select * from movie;
select * from theater;
select * from booking;


-- drop
drop table movie;
drop table theater;
drop table booking;

-- describes the columnd in the table student
describe movie;
describe theater;
describe booking;


-- alter 
-- add new column to the table
alter table movie add last_date date ;

-- modify
alter table movie modify last_date date unique;

-- drop column
alter table movie drop last_date;

-- operator
-- =
select * from booking where ticket_price = 220;

-- != or <>
select * from booking where ticket_price != 220;
select * from booking where ticket_price <> 250;

-- <
select * from booking where booking_date < '2025-12-04';

-- >
select * from booking where booking_date > '2025-12-04';

-- <=
select * from booking where ticket_price <= 200;

-- >=
select * from booking where ticket_price >= 200;

-- in
select * from theater where location in ('chennai');

-- not in 
select * from theater where location not in ('chennai');

-- between 
select * from movie where duration between 145 and 160;

-- not between
select * from movie where duration not between 145 and 160;

-- and
select * from theater where theater_name = 'Vetri Theater' and capacity = 300;
select * from theater where theater_name = 'Vetri Theater' and capacity = 400;

-- or
select * from movie where movie_name = 'RRR' or m_type = 'Historical' ;

-- like '%a' / 'a%' / '%a%'
select * from movie where movie_name like '%r';
select * from movie where movie_name like 'r%';
select * from movie where movie_name like '%r%';

-- like '__r'
select * from movie where movie_name like '_r_';
select * from movie where movie_name like '__o';
select * from movie where movie_name like 'k____';

-- sorting data
select * from booking order by customer_name;

-- ascending - asc
select * from theater order by theater_name asc;

-- descending - desc
select * from movie order by movie_name desc;

-- case Manipulation function
-- upper, lower
select customer_name, 
upper(customer_name) as UPPER, 
lower(customer_name) as lower from booking;

-- character manipulation function
-- length, reverse, concat, substr,instr, lpad,rpad,ltrim,rtrim
select customer_name, 
length(customer_name) as length_name ,
reverse(customer_name) as reverse_name,
concat(customer_name, " - ", seat_no, " - ",ticket_price) as concat_3_column,
replace(customer_name,"Arun","ArunKurmar") as Replaces,
substr(customer_name,2,5) as substring,
instr(customer_name,'a') as instring,
lpad(customer_name,10, '*') as leftpad,
rpad(customer_name,10, '*') as rightpad,
ltrim(customer_name) as lefttrim,
rtrim(customer_name) as righttrim
from booking limit 10;

-- aggregate function
-- max, min, avg, sum, count
select 
max(ticket_price) as MaxPrice,
min(ticket_Price) as MinPrice,
avg(ticket_price) as AvgPrice,
sum(ticket_price) as SumPrice,
count(ticket_price) as CountPrice
from booking;

-- Number Function
-- round, truncate, ceil, floor, mod
select 
round(ticket_price) as Rounds,
truncate(ticket_price,1) as Truncates, 
ceil(ticket_price) as Ceils,
floor(ticket_price) as Floors,
mod(ticket_price, 3) as Mods
from booking;

-- DDL - Data Definition Language

-- truncate - all data details, structure will leave
truncate table movie;

-- drop - all delete no structure
drop table movie;

-- rename 
rename table movie to movies;

-- DML - Data Manipulation Language

-- update
update movie set release_date = '2024-06-14' where movie_id = 21;

-- commit
commit;

-- roll back
rollback;

-- distinct
select distinct theater_id from theater;

-- limit
select * from booking where ticket_price = 200 limit 2;

-- duplicate table for index
create table movie_idx as (select * from movie);

-- create index
create index mox on movie_idx(movie_id);

-- show index
show index from movie_idx;

-- drop index
drop index mox on movie_idx;

-- join
-- inner join --> only matcheing records form all table
select b.booking_id,b.customer_name,m.movie_name,
m.release_date,t.theater_name,t.location
from booking b inner join movie m 
on b.movie_id = m.movie_id
inner join theater t 
on b.theater_id = t.theater_id;

-- left join --> left join show all record from the left table
select m.movie_name,b.booking_id,t.theater_name
from movie m left join booking b 
on m.movie_id=b.movie_id
left join theater t
on b.theater_id = t.theater_id;

-- right join --> right join show all record from the right table
select t.theater_id, m.movie_name, b.customer_name
from movie m right join booking b
on m.movie_id = b.movie_id
right join theater t
on b. theater_id = t.theater_id;

-- full outer join 
--  --> full outer join shows all records form all tables
-- 	--> matching rows + non matching rows are included
-- 	--> missing values are shows as NULL
/*
select m.movie_name, t.theater_name,b.customer_name
from movie m full outer join booking b
on m.movie_id = b.movie_id
full outer join theater t
on b. theater_id = t.theater_id;
*/

-- cross join --> cross join create all possible combination

select m.movie_name, b.customer_name, t.theater_name
from movie m 
cross join booking b
cross join theater t;

-- self join 
-- --> self join join a table with itself

-- --> matches movies having same duration
-- --> ensures the same movie is not compared with itself
select a.movie_name as movie1, b.movie_name as movie2, a.duration
from movie a join movie b 
on a.duration = b.duration
and a.movie_id <>  b.movie_id;

-- 3 table join with where condition
select b.booking_id, m.movie_name, t.theater_name
from booking b
join movie m on b.movie_id = m.movie_id
join theater t on b.theater_id = t.theater_id
where t.location = 'chennai';

-- join with group by
select t.theater_name,m.movie_name, sum(b.ticket_price) as Total_collection
from booking b join movie m
on b.movie_id = m.movie_id
join theater t
on b.theater_id = t.theater_id
group by t.theater_name, m.movie_name;

-- join with having
SELECT m.movie_name, COUNT(b.booking_id) AS booking_count
FROM booking b
JOIN movie m ON b.movie_id = m.movie_id
GROUP BY m.movie_name
HAVING COUNT(b.booking_id) >= 1;

-- set operstor

-- unoin
select movie_name from movie
union
select theater_name from theater;

-- unoin all
select movie_name from movie
union all
select theater_name from theater;

-- except
select movie_name from movie
except
select theater_name from theater;

-- intersect
select movie_name from movie
intersect
select theater_name from theater;

-- general function
-- case
select movie_name, duration , case
when duration >= 180 then 'Long Movie'
when duration >= 150 and duration < 180 then 'Medium Movie'
else 'short movie'
end as duration_details
from  movie;

select theater_name,capacity, case
when capacity >= 500 then 'Large Theater'
when capacity >= 300 and capacity < 500 then 'Medium Theater'
else 'Small Theater'
end as capacity_size
from theater;

select customer_name, ticket_price, case
when ticket_price >= 300 then 'Primim Ticket'
when ticket_price >= 200 and ticket_price < 300 then 'Standard Ticket'
else 'Budget Ticket'
end as ticket_category
from booking;

-- analytics function
-- row, ranl,dense_rank, lead,lag
select booking_id, customer_name, ticket_price,
row_number() over(order by ticket_price desc) as row_num,
rank() over (order by ticket_price desc) as rank_num,
dense_rank() over (order by ticket_price desc) as dense_rank_num,
lead (ticket_price) over(order by ticket_price desc) as next_price,
lag(ticket_price) over(order by ticket_price desc) as prev_price
from booking;

-- null function
-- is null
select booking_id, customer_name, seat_no 
from booking
where seat_no is null;

-- is not null
select booking_id, customer_name, seat_no 
from booking
where seat_no is not null;

-- ifnull(),coalesce(),if(),nullif(), 
select booking_id, customer_name,
ifnull(seat_no, 'not assigned') as seat_no_status,
coalesce(ticket_price,100) as price,
if(ticket_price >=300, 'premium', 'budget') as ticket_category,
nullif(ticket_price,200) as price_ckeck
from booking;


-- complex view
CREATE VIEW movie_theater_summary AS
SELECT 
    m.movie_id,
    m.movie_name,
    t.theater_id,
    t.theater_name,
    COUNT(b.booking_id) AS total_bookings,
    SUM(b.ticket_price) AS total_collection,
    AVG(b.ticket_price) AS avg_ticket_price,
    CASE
        WHEN AVG(b.ticket_price) >= 300 THEN 'Premium Movie'
        WHEN AVG(b.ticket_price) >= 200 THEN 'Standard Movie'
        ELSE 'Budget Movie'
    END AS movie_category
FROM Booking b
JOIN Movie m ON b.movie_id = m.movie_id
JOIN Theater t ON b.theater_id = t.theater_id
GROUP BY m.movie_id, m.movie_name, t.theater_id, t.theater_name;

select * from movie_theater_summary;



-- Subquery – A query depend with another query
-- Single row subqueries
SELECT movie_id, ticket_price
FROM Booking
WHERE ticket_price >
(
    SELECT AVG(ticket_price)
    FROM Booking
);

-- Multiple row subqueries
SELECT movie_name
FROM Movie
WHERE movie_id IN
(
    SELECT movie_id
    FROM Booking
);

-- Multiple column subqueries
SELECT booking_id, customer_name
FROM Booking
WHERE (movie_id, theater_id) IN
(
    SELECT movie_id, theater_id
    FROM Booking
    WHERE ticket_price > 300
);

-- Correlated subqueries
SELECT booking_id, movie_id, ticket_price
FROM Booking b
WHERE ticket_price >
(
    SELECT AVG(ticket_price)
    FROM Booking
    WHERE movie_id = b.movie_id
);

-- non-correlated subqueries
SELECT theater_name
FROM Theater
WHERE theater_id IN
(
    SELECT theater_id
    FROM Booking
    GROUP BY theater_id
    HAVING AVG(ticket_price) > 250
);


-- insert statement
INSERT INTO Booking
VALUES (1050, 1, 101, 'Suresh', 'K10', '2024-12-25', '18:00', 220);

-- update statement
UPDATE Booking
SET ticket_price = 250
WHERE booking_id = 1001;

-- delete statement
DELETE FROM Booking
WHERE booking_id = 1050;


-- date functuion

SELECT 
    b.booking_id,
    m.movie_name,
    b.booking_date,
    NOW() AS current_datetime,
    YEAR(b.booking_date) AS booking_year,
    MONTH(b.booking_date) AS booking_month,
    MONTHNAME(b.booking_date) AS booking_month_name,
    DATEDIFF(CURRENT_DATE, b.booking_date) AS days_since_booking,
    DATE_ADD(b.booking_date, INTERVAL 7 DAY) AS booking_plus_7_days,
    DATE_SUB(b.booking_date, INTERVAL 3 DAY) AS booking_minus_3_days,
    LAST_DAY(b.booking_date) AS month_last_date,
    EXTRACT(YEAR FROM b.booking_date) AS extract_year,
    TIMESTAMPDIFF(DAY, b.booking_date, CURRENT_DATE) AS timestamp_days_diff
FROM Booking b
JOIN Movie m ON b.movie_id = m.movie_id
WHERE YEAR(b.booking_date) >= 2024 limit 5;



-- REGEX - Regular expression function
-- REGEXP_LIKE(string,pattern);

-- string → the column or value you want to check.
-- pattern → the regular expression (regex) pattern to match.(regex rule)

SELECT * 
FROM movie
WHERE REGEXP_LIKE(movie_name, '^I[a-z]+');


-- Stored Procedure

DELIMITER //

CREATE PROCEDURE Getallbooking()
BEGIN
  select * from booking;
END //

DELIMITER ;

-- Execute
CALL Getallbooking();


DELIMITER //

CREATE PROCEDURE Getalltheater(theater_id1 int)
BEGIN
  select theater_name from theater where theater_id=theater_id1;
END //

DELIMITER ;

-- Execute
CALL Getalltheater(108);
drop procedure Getalltheater;

-- movie table rows
INSERT INTO Movie(
movie_id, movie_name,m_type,duration,release_date,language)
VALUES
(222,'Ledkcdo','Action',165,'2023-10-19','Tamil');

-- backup
-- Movie Table
create table movie_backups(
movie_id int,
movie_name varchar(100) ,
m_type varchar(50) ,
duration int ,
release_date date,
language varchar(10)) ;

-- trigger
delimiter $$
create trigger trgmovie1
before delete on movie
for each row
begin
insert into movie_backups
values (old.movie_id ,
		old.movie_name ,
		old.m_type ,
		old.duration ,
		old.release_date ,
		old.language );
end $$
delimiter ;


set sql_safe_updates = 0;

-- delete
delete from movie where movie_id = 222;

select * from movie_backups;


insert ignore into movie
(movie_id, movie_name,m_type,duration,release_date,language)
VALUES
(31,'Leos','Action',165,'2023-10-19','Tamil');



-- retrieve table data
select * from movie;
select * from theater;
select * from booking;

-- use database
use project;