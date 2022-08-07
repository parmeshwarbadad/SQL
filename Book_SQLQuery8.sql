use PB3;
create table Book
(bname varchar(20) primary key,
authorname varchar(20) not null,
bprice int not null,
NoOfPages int,
btype varchar(20));

insert into Book(bname,authorname,bprice) values('chemistry','ABC',321);

select * from book;

