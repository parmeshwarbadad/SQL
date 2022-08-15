/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [bname]
      ,[authorname]
      ,[bprice]
      ,[NoOfPages]
      ,[btype]
  FROM [PB3].[dbo].[Book]
  alter table Book Add bid int null;
  select * from book;
  update book set bid=101 where bprice=null;
    update book set bid=106 where bname='physics';
	insert into Book(bname,authorname,bprice) values('Biology','ABC',321);

    alter table Book Add primary key (id);
