-- Real Time Scenarios
-- 5th highest unit price
-- 1
select 
	subquery.*
from
	(
    select
		*,
		dense_rank() over (order by unit_price) as ranking
	from
		dim_product
	) subquery
where 
	ranking = 5; 

-- 2
select 
	subquery.*
from
	(
    select
		*,
		dense_rank() over (partition by category order by unit_price) as ranking
	from
		dim_product
	) subquery
where 
	ranking = 5; 
    
-- 3 [de dupliacte date]
insert into customers
values
(301,'lamba','cc');

select * from customers;
insert into customers
values
(101,'love','aa');

with cte_1 as	
    (select 
		*,
		row_number() over (partition by id) as de
	from 
		customers)
select * from cte_1 where de =1;


-- lead lag
create table weather(
	id int,
    temp float
);
insert into weather
values
	(1,10),
    (2,12),
    (3,9),
    (4,15),
    (5,20),
    (6,15),
    (7,12);

select
	*,
    lag(temp,1,0) over (order by id) as prev_day_temp,
    lead(temp,1,0) over (order by id) as next_day_temp
from 
	weather;
    