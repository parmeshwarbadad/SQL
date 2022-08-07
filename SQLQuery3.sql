create table trainer
(tid int primary key,
tname varchar(20) not null,
experiance int default 0,
qualification varchar(20)
);
create table student1
(sid int primary key,
sname varchar(20),
percentage int,
trainerid int,
constraint fktid foreign key(trainerid) references trainer(tid)
);

insert into trainer(tid,tname)
values(101,'Deepa'),(102,'Kalnya'),(103,'Kirti');

select * from trainer;

update trainer set experiance=15,qualification ='BE' where tname='Deepa';
update trainer set experiance=10,qualification ='B.Tech'where tname='Kalnya';
update trainer set experiance=experiance+5,qualification ='B.Tech' where tname='Kalnya';
update trainer set experiance=12,qualification ='MCS' where tid=103;

insert into student1 values (1,'Vaibhav',90,101),(4,'Rupesh',91,102);

select * from student1;
delete from student1 where sname='Rupesh';