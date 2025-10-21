create database E_Commerce
go
use E_Commerce
go

--Sales--

create table customers
(
customer_id int,
first_name varchar(20) not null,
last_name varchar(20) not null,
email varchar(30) not null,
phone varchar(15) ,
state varchar(15),
city varchar(15) not null,
street varchar(30) not null,
zip_code varchar (6),

constraint customers_pk primary key(customer_id),

constraint customers_orders_fk foreign key(customer_id)
references customers(customer_id),
);

create table orders
(
order_id int identity (1,1),
customer_id int,
oreder_date date not null,
order_status tinyint not null,
required_date date not null,
shipped_date date,
order_type varchar(10),
store_id int not null,
staff_id int not null,

constraint orders_pk primary key(order_id),
);

create table order_items
(
item_id int identity (1,1),
order_id int not null,
quantity int,
list_price int,
discount int ,

constraint order_items_pk primary key(item_id),

constraint order_items_orders_fk foreign key(order_id)
references orders(order_id),
);

create table stores
(
store_id int identity(1,1),
store_name varchar(30) not null,
phone varchar(15),
email varchar(50) not null,
city varchar(20) not null,
street varchar(20),
state varchar(10),
zip_code varchar(5),
order_id int,
staff_id int,

constraint stores_pk primary key (store_id),

constraint stores_orders_fk foreign key(order_id)
references orders(order_id),

constraint stores_staffs_fk foreign key(staff_id)
references staffs(staff_id),
);

create table staffs
(
staff_id int identity (1,1),
first_name varchar(20) not null,
last_name varchar(20) not null,
email varchar(50) not null unique,
phone varchar(25),
active tinyint not null,
manager_id int,
store_id int,
order_id int,

constraint staffs_pk primary key (staff_id),

constraint staffs_orders_fk foreign key(order_id)
references orders(order_id),
);

--Production--

create table categories
(
categorie_id int identity(1,1),
categorie_name varchar(20) not null,
product_id int,

constraint categories_pk primary key (categorie_id),

constraint categories_products_fk foreign key(product_id)
references products(product_id),
);

create table products
(
product_id int identity (1,1),
product_name varchar(20) not null,
categorie_id int,
brand_id varchar(10),
model_year varchar(5),
list_price varchar(9) not null,
order_id int,
constraint products_pk primary key (product_id),

constraint products_stocks_fk foreign key(brand_id)
references stocks(brand_id),

constraint products_order_items_fk foreign key(order_id)
references order_items(order_id),
);
ALTER TABLE  order_items
ADD CONSTRAINT products_order_items_fk
FOREIGN KEY (product_id)
REFERENCES products (product_id);

create table brands
(
brand_id int identity (1,1),
brand_name varchar(50) not null,
product_id int,
store_id int,
constraint brands_pk primary key (brand_id),

constraint brands_products_fk foreign key(product_id)
references products(product_id),
);

create table stocks
(
store_id int identity (1,1),
brand_id varchar(10) not null unique,
quantity varchar(10) not null,

constraint stocks_pk primary key (store_id),
);

ALTER TABLE stocks
ADD CONSTRAINT stocks_stores_fk
FOREIGN KEY (store_id)
REFERENCES stores(store_id);

