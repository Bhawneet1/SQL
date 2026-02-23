-- Typecasting

select
	customer_key,
    cast(customer_key as char(100))
from 
	dim_customer;
    
-- String functions
select
	concat(first_name, ' ' ,last_name) as full_name,
    length(country) as country_len,
    lower(city) as lower_case_city,
    substring(email,1,6),
    replace(email,'@','$'),
    left(email,3),
    right(email,3),
    reverse(last_name),
    repeat(first_name,3),
    concat_ws(' ',first_name,last_name)
from
	dim_customer;