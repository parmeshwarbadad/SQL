create database SubQuery
create table item
(
itemid int primary key,
itemname varchar(20),
itemcost float,
supid int,
constraint frk foreign key(supid) references supplier1(supid)

);

create table supplier1
(
supid int primary key,
supname varchar(20),
supmobile varchar(10)

);
insert into item values(3051,'white board',2000,null),(3052,'Drawingbook',130,null),
(3010,'Pencil',10,904),(3112,'pen',80,904),(3013,'maps',30,910),
(3116,'print paper',400,910),(3171,'stepler',89,910),
(3221,'sc.Design',240,911),(3223,'marker ink',70,911);
select * from item;

insert into supplier1 values(903,'Mr kk','85466112'),
(911,'Mr.A','46559552'),(905,'Mr.X','55649562'),
(904,'MrY','5465467987'),(910,'Mr.B','1546466');
select * from supplier1 ;
select supid from supplier1 where supname like 'MrY';


select count(*) supid from item 
where supid =(select supid from supplier1 where supname like 'mrY');

select itemid,itemname,supid from item 
where supid>(select supid from supplier1 where supname like 'Mr.X');

select itemid,itemname,supid from item 
where supid<(select supid from supplier1 where supname like 'Mr.X');

-- sub query in insert clause


-- subquery with in, <any,>any,>all,<all claus
select supid from supplier1 where supname in('Mr.a','Mr.b');

select * from item 
where supid in (select supid from supplier1 where supname in('Mr.a','Mr.b'));
-- greater either supid of a or b


select supid from supplier1 where supname in('Mr.a','Mr.b');

select * from item where supid <any
(select supid from supplier1 where supname in('Mr.a','Mr.b'));

select * from item where supid>any
(select supid from supplier1 where supname in('Mr.a','Mr.b'));


