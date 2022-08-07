use PB3;
create table emp
(eid int primary key,
ename varchar(20) not null,
exper int check(exper>=0),
salary int,
);

insert into emp(eid,ename,salary) values(7,'Hitesh',39000);

select * from emp;