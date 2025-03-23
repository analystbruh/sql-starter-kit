/* using aggregate functions */
select *
from orders;

select item, sum(amount)
from orders
group by item;

select item, count(*)
from orders
group by item;

select count(distinct status)
from shippings;

select first_name, last_name, max(age)
from customers
group by first_name, last_name
order by max(age) desc;

select item, max(amount) price
from orders
group by item
order by max(amount) desc;

/* standalone */
select max(amount)
from orders;

/* having (aggregate filter) */
select item, max(amount)
from orders
group by item
having max(amount) < 10000;

/*
min
max
sum
count (will count nulls)
avg
 */