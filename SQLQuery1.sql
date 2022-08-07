create table Employee
(
eid int primary key,
fname varchar(20) not null,
lname varchar(18) not null,
mobile bigint,
email varchar(30),
hire_date int,
jobid int,
salary int
);

insert into Employee(eid,fname,lname,email)
values(111,'Uttam','Badad','uttambadad@gmail.com');

update Employee set salary=55000 where eid=103;
update Employee set jobid=5 where eid=106;
update Employee set fname='Krishna' where eid=106;

--like is used with wildcard charecter for matching patterns
--% zero or more char _exactly one
select * from Employee where fname like'A%h';

--sum,count,avg,min,max  --aggregate
-- count is used to count number on record having non null values
select max(salary) as 'maximum salary'from Employee where jobid=4;
select min(salary) as 'minimum salary'from Employee where jobid=5;
select count(mobile) from Employee ;
select count(*) from Employee ;--to pocount no of records

select sum(salary) from Employee ;
select avg(salary) from Employee ;

select * from Employee order by salary desc;

-- Group by and having clause
--departmentwise max salary
select jobid, max(salary) as 'max salary'from Employee group by jobid;

select * from Employee;