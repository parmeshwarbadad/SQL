create table trainer
(tid int primary key,
tname varchar(20) not null,
exper int check(exper>=0),
mobile bigint unique,
city varchar(20) default 'pune');

insert into trainer values (11,'Deepa',5,9878675645,'pune');

insert into trainer values(15,'Nishikata',3,559889,'Parbhani');
insert into trainer(tid,tname) values(77,'Param');

select tid,tname,exper,mobile,city from trainer;

