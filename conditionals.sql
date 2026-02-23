-- conditionals

select
	*,
    case
    when unit_price <= 100 then 'affordable'
    when unit_price <= 200 then 'normal'
    else 'expensive'
    end as price_category
from 
	dim_product;
    
    
select
	*,
    case
    when unit_price <= 100 AND category = 'clothing' then 'affordable'
    when unit_price <= 200 AND category = 'clothing' then 'normal'
    when unit_price > 200 AND category = 'clothing' then 'expensive'
    else concat('Not for this ',category)
    end as price_category
from 
	dim_product;