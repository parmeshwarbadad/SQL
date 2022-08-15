/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [eid]
      ,[ename]
      ,[exper]
      ,[salary]
      ,[email]
  FROM [PB3].[dbo].[emp]
  update emp set salary=36000 where eid in(7,8);
  select * from emp;