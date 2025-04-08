# Window Functions
-- Window Functions applies aggregate, ranking and analytic functions over a particular window (set of rows)
-- And OVER clause is used with window functions to define that window.

create database WindowFunction;

use WindowFunction;

create table test_data(
	new_id int,
    new_Category varchar(20)
);

insert into test_data
values
(100, 'Agni'),
(200, 'Agni'),
(500, 'Dharti'),
(700, 'Dharti'),
(200, 'Vayu'),
(300, 'Vayu'),
(500, 'Vayu');

select * from test_data;
