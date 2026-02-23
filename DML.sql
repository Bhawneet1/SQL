use ecom;

-- Update
update customers
set name = 'Sam'
where id =101;

select * from customers;

-- Delete

delete from customers
where email ='aa';