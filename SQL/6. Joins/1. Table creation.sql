create database Joins;

use Joins;

create table emp(
          eid int(3) primary key,
          eName varchar(20) not null
);

Insert into emp(eid, eName)
values
(1, 'Anil'),
(2, 'Suresh'),
(3, 'Mahesh'),
(4, 'Mohan'),
(5, 'Sohan');

select * from emp;

create table empDetails(
	eid int(3) primary key,
    eAge int(2),
    eAddress varchar(20),
    eSalary decimal(6,2)
);

insert into empDetails(eid, eAge, eAddress, eSalary)
Values
(1, 33, 'Delhi', 2923.90),
(2, 43, 'NCR', 3444.90),
(3, 22, 'Haryana', 3456.90),
(4, 65, 'UP', 5433.90),
(8, 34, 'Delhi', 4222.90),
(10, 32, 'Delhi', 4554.90);

select * from emp;
select * from empDetails;