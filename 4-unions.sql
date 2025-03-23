/* stack query results on top of each other, unique rows only, column count and data type must be maintained */

select customer_id, first_name
from customers

union

select customer_id, item
from orders;


/* union vs union all */

select item, amount
from orders

union

select item, amount
from orders;


select item, amount
from orders

union all

select item amount
from orders;

