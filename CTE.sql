-- CTE [Common Table Expressions]
with cte_table as(
	select 
		*
	from
		dim_product
	where
		unit_price> ( select avg(unit_price) from dim_product)
),    
cte_table_2 as(
select *  from cte_table
where product_name in ('figure method' ,'huge change' , 'film finally')
)
select * 
from cte_table_2 where product_name = 'figure method';
