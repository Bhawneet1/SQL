-- Transformations

-- Numeric
select 
	unit_price*0.9 as discounted_price,
    unit_price+10 as taxed_price,
    unit_price/10 as fractioned_price,
    round(unit_price,1) as rounded_price,
    unit_price*unit_price as multiplied_price
from 
	dim_product;
    
    
-- Date transformations

-- 1
select 
	date,
    now() as curr_date, --  date with timestamp yyyy-mm-dd hh:mm:ss
    utc_date() ,
    utc_time(),
    utc_timestamp()
from 
	dim_date;
    
    
    
-- 2
select
	date,
    day(date),
    month(date),
    year(date),
    dayname(date),
    weekday(date)
from
	dim_date;
    

-- 3
select 
	date,
    adddate(date,2),
    subdate(date,2),
    datediff(date(utc_timestamp()),date) as total_difference
from 
	dim_date;
    

-- 4
select 
	date,
    cast('2026-02-20' as datetime),
    date_format(date,'%W %M %e %Y')
from 
	dim_date;