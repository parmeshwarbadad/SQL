create database Join1;
use join1
create table supplier
(
supid int primary key,
supname varchar(20),
supmobile varchar (20)
);
create table item
(
itemid int primary key,
itemnamme varchar(20),
itemcost int,
sid int,
billno int
);
insert into supplier values(903,'Mr.KK',98745626)
insert into supplier values(904,'Mr.Y',1365945626);
insert into supplier values(905,'Mr.X',499545626);
insert into supplier values(910,'Mr.B',165545626);
insert into supplier values(911,'Mr.A',899545626);
select * from supplier;


insert into item values (102,'Maps',30,910,5004);
insert into item values (103,'WhiteBoard',2000,906,5005);
insert into item values (104,'Drawingbook',130,907,5006);
insert into item values (105,'Pem',80,904,5001);
insert into item values (106,'PrintPaper',400,910,5001);
insert into item values (107,'Stepler',89,910,5007);
insert into item values (108,'Notbook',240,911,5008);

select * from item;
--Equi join

-- Display item details along with their supplier details
select i.itemid,i.itemnamme,i.itemcost,i.sid,s.supid,s.supname,s.supmobile
from item i inner join supplier s on i.sid=s.supid;

--fetch supplier name, mobile no and item detail supplied  by supplier by 'Mr.B'
select i.itemid,i.itemnamme,i.itemcost,i.sid,s.supid,s.supname,s.supmobile
from item i inner join supplier s on i.sid=s.supid and supname like 'Mr.B';

--not using table alais also  without using join keyword
select itemid,itemnamme,itemcost,sid,supid,supname,supmobile
from item,supplier  WHERE item.sid=supplier.supid;

--non Equi join   display item details along with their supplier details

select itemid,itemnamme,itemcost,sid,supid,supname,supmobile
from item,supplier where item.sid<=supplier.supid;

-- Left Outer join
select i.itemid,i.itemnamme,i.itemcost,s.supid,s.supmobile
from item i left outer join supplier s on i.sid=s.supid;

-- Right Outer join
select i.itemid,i.itemnamme,i.itemcost,s.supid,s.supmobile
from item i right outer join supplier s on i.sid=s.supid;

--Full join
select i.itemid,i.itemnamme,i.itemcost,s.supid,s.supmobile
from item i left outer join supplier s on i.sid=s.supid
union
select i.itemid,i.itemnamme,i.itemcost,s.supid,s.supmobile
from item i left outer join supplier s on i.sid=s.supid;

--Natural join
--select itemnamme,supname from item natural join supplier;

--select * from item natural join supplier where itemcost >100;
