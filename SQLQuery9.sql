/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [emp_id]
      ,[frist_name]
      ,[last_name]
  FROM [master].[dbo].[emp]

  select emp_id,frist_name,last_name from emp;
  insert into 