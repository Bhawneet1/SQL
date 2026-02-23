-- Create database
create database if not exists sql_basics;
use sql_basics;-- or maually click on db name on LHS
-- create table
-- create table stores;-- Error Code: 4028. A table must have at least one visible column.
create table stores
(	
	store_id int,
    store_name varchar(200)
);

insert into stores
values
(1,"store_xyz"),
(2,"store_abc");

insert into stores(store_id)
values
(3);
-- here we added a store_id without store_name

create table stores_new
(	
	store_id int unique,
    store_name varchar(200) not null
);
-- insert into stores_new(store_id)
-- values
-- (3);-- Error Code: 1364. Field 'store_name' doesn't have a default value

drop table stores_new;
truncate table stores;

alter table stores_new
add column store_city varchar(30);

select * from stores_new;

alter table stores_new
rename column store_city to store_loaction;

alter table stores_new
drop column store_loaction;

alter table stores_new
modify column store_name varchar(30);

DESC stores_new;
