use ecom;

-- select
select * from dim_customer;

-- select few columns
select customer_id,email from dim_customer;

-- indentation (good practice)
select 
	customer_id,
    email
from 
	dim_customer;
    
-- limit
select 
	customer_id,
    email
from 
	dim_customer
Limit 15;

-- where
-- 1
select 
	*
from
	dim_customer
where 
	(gender = 'F');
    
    
-- 2
select 
	*
from
	dim_customer
where 
	(gender = 'F') AND (country = 'France') AND (join_date > '2022-01-01');
    
-- 3
select 
	*
from
	dim_customer
where 
	(gender = 'F') AND ((country = 'France') OR (join_date > '2022-01-01'));

-- LIKE
-- 1
select
	*
from
	dim_customer
where 
	first_name like 'T%';

-- 2
select
	*
from
	dim_customer
where 
	first_name like 'T%y';
    
    
-- 3
select
	*
from
	dim_customer
where 
	first_name like 'T__f%y';


-- sorting
-- 1
select 
	*
from
	dim_product
order by 
	unit_price asc;-- default is ascending order less to more
    
-- 2

select 
	*
from
	dim_product
order by 
	unit_price desc;-- descending order
    
    
-- 3
select 
	*
from
	dim_product
order by 
	unit_price desc
LIMIT 3;


-- ALIAS(To change column name)
select
	product_key,
    product_id,
    product_name as 'Product name',
    category
From
	dim_product;


-- Grouping
select
	category,
    avg(unit_price) as 'Average Price',
    sum(unit_price) as 'Total Price'
from 
	dim_product
group by 
	category;


-- Having
select
	category,
    avg(unit_price) as avg_price
from 
	dim_product
group by 
	category
Having 
	 avg_price > 490;
