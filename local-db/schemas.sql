-- SQLite
create table customers (
    customer_id integer,
    first_name text,
    last_name text,
    age integer,
    country text
);

create table orders (
    order_id integer,
    item text,
    amount integer,
    customer_id integer
);

create table shippings (
    shipping_id integer,
    status integer,
    customer integer
);

-- data
insert into customers VALUES
(1, 'John', 'Doe', 31, 'USA'),
(2, 'Robert', 'Luna', 22, 'USA'),
(3, 'David', 'Robinson', 22, 'USA'),
(4, 'John', 'Reinhardt', 25, 'USA'),
(5, 'Betty', 'Doe', 28, 'USA');

insert into orders VALUES
(1, 'Keyboard', 400, 4),
(2, 'Mouse', 300, 4),
(3, 'Monitor', 12000, 3),
(4, 'Keyboard', 400, 1),
(5, 'Mousepad', 250, 2);

insert into shippings VALUES
(1, 'Pending', 2),
(2, 'Pending', 4),
(3, 'Delivered', 3),
(4, 'Pending', 5),
(5, 'Delivered', 1);
