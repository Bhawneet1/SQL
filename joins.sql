-- Joins
create table orders
(
	o_id int,
    cust_id int,
    price int
);

insert into orders
values
(1,101,1000),
(2,201,1100),
(3,501,1200);

create table customers
(
	id int,
    name varchar(100),
    email varchar(100)
);
insert into customers
values
(101,'love','aa'),
(201,'ansh','bb'),
(301,'lamba','cc');

-- truncate customers;
-- Inner join
select
	*
from
	orders o
inner join
	customers c
on 
	o.cust_id = c.id;

-- left join
select
	*
from
	orders o
left join
	customers c
on 
	o.cust_id = c.id;
    

-- left join
select
	*
from
	orders o
left join
	customers c
on 
	o.cust_id = c.id;
    

-- right join
select
	*
from
	orders o
right join
	customers c
on 
	o.cust_id = c.id;
    

-- left join
select
	*
from
	orders o
left join
	customers c
on 
	o.cust_id = c.id;
    
    
-- full join (not supported in mysql)
-- select
-- 	*
-- from
-- 	orders o
-- full join
-- 	customers c
-- on 
-- 	o.cust_id = c.id;

-- right join
select
	*
from
	orders o
right join
	customers c
on 
	o.cust_id = c.id
Union
-- left join
select
	*
from
	orders o
left join
	customers c
on 
	o.cust_id = c.id;