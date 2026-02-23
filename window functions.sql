-- window functions
-- 1 moving sum1
select
	*,
    sum(unit_price) over (order by(unit_price))
from
	dim_product;
    
-- 2 moving sum by launch date
select
	*,
    sum(unit_price) over (order by (launch_date))
from
	dim_product;
    
-- 3 moving averages
select
	*,
    avg(unit_price) over (order by(launch_date))
from
	dim_product;
    
-- frame
-- default frame
select
	*,
    sum(unit_price) over (order by launch_date
						  rows between unbounded preceding
                          and current row) as moving_sum
from
	dim_product;
    
select
	*,
    sum(unit_price) over (order by launch_date
						  rows between unbounded preceding
                          and unbounded following) as total_sum
from
	dim_product;

-- Ranking
select
	unit_price,
    row_number() over (order by unit_price) as 'row_number',
    rank() over (order by unit_price) as 'rank',
    dense_rank() over (order by unit_price) as 'dense_rank'
from
	dim_product;

-- partioning
select
	unit_price,
    category,
    row_number() over (partition by category order by unit_price) as 'row_number',
    rank() over (partition by category order by unit_price) as 'rank',
    dense_rank() over (partition by category order by unit_price) as 'dense_rank'
from
	dim_product;