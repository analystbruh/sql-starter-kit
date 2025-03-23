-- can run on https://www.programiz.com/sql/online-compiler

/* select */
select 1;

select 1, 2;

select 1, 'chris';

select 1 as digit, 'chris' as name;

/* operations */
select 1 + 2;

select 1 + 2 added;

/* select from single table */

select *
from customers;

select first_name,
    country
from customers;

select first_name as "first name",
    last_name as "last name",
    country as "person's country"
from customers;

/* concatenation */

select first_name || last_name name
from customers

select first_name || ' ' || last_name
from customers

/* sort */
select first_name,
    age,
    country
from customers
order by first_name;

select first_name,
    age,
    county
from customers
order by first_name desc;

select first_name,
    age,
    county
from customers
order by age;

/* filter */
select distinct first_name
from customers;

select distinct item, amount
from orders;

select distinct status
from shippings;

select first_name,
    age,
    country
from customers
where age >= 25;

select first_name,
    age,
    country
from customers
where first_name = 'John';

select first_name,
    age,
    country
from customers
where first_name != 'John';
-- is null and is not null

select first_name,
    age,
    country
from customers
where first_name = 'John'
or first_name = 'David'
or first_name = 'Robert';

select first_name,
    age,
    country
from customers
where first_name in ('John','David','Robert');

select first_name,
    age,
    country
from customers
where age >= 25
and first_name = 'John';

select first_name,
    age,
    country
from customers
where age >= 25
and first_name = 'John'
order by age desc;

select first_name,
    last_name,
    age,
    country
from customers
where age >= 20
and last_name like 'R%'
order by age desc;

select first_name,
    last_name,
    age,
    country
from customers
where first_name = 'John'
or last_name = 'Doe'
order by age desc;

select first_name,
    last_name,
    age,
    country
from customers
where age between 25 and 30
order by age desc;



/* limit/top */
select *
from customers
limit 1;

select customer_id, max(age)
from customers
group by customer_id
limit 3;

/* distinct */

