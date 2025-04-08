create database Customer;

use customer;

create table Customers(
	cid int primary key,
    amount int,
    mode varchar(25) not null,
    payment_date date
);

insert into Customers
Values 
(1, 60, 'Cash', '2020-09-24'),
(2, 500, 'Credit Card', '2020-04-27'),
(8, 110, 'Cash', '2021-01-26'),
(10, 70, 'Mobile Payment', '2021-02-28'),
(11, 80, 'Cash', '2021-03-27');

select * from Customers;

