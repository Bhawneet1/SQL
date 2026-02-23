-- Views

create or replace view dedup_view as
select 
	*
from
	(
    select 
		*,
        row_number() over (partition by id) as dedup
	from 
		customers
	) subquery
where 
	dedup = 1;
    
select * from dedup_view; --  use this in any script
select * from customers;