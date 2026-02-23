-- functions
Delimiter //
create function square_it(x int)
returns int
deterministic
begin
	return x*x;
end //

delimiter ;

select 
	unit_price,
    square_it(unit_price)
from
	dim_product;