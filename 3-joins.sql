/*
table joins make sense when there is a logical relaionship.
can be one of the following kinds:
    one to one ->  state/capital
    one to many -> make/model
    many to many -> students/courses
*/

/*
types of joins
inner
left
right
outer
left outer
right outer
full
*/

/* primary keys */
/* foreign keys */


/*
customers and orders
one to many
*/

select customers.first_name,
    customers.last_name,
    customers.country,
    orders.item,
    orders.amount
from orders
inner join customers
on orders.customer_id = customers.customer_id
order by orders.customer_id;

--use aliases

select c.first_name "first name",
    c.last_name "last name",
    c.country,
    o.item product,
    o.amount price
from orders as o
-- join alone means inner join
join customers c
on o.customer_id = c.customer_id
order by o.customer_id;


/*
customers and shippings
one to one
*/

select c.first_name "first name",
    c.last_name "last name",
    c.country,
    s.status "shipping status"
from shippings s
join customers c
on c.customer_id = s.customer;

/* filter */
select c.first_name "first name",
    c.last_name "last name",
    c.country,
    s.status "shipping status"
from shippings s
join customers c
on c.customer_id = s.customer
where s.status = 'Delivered';

