use join1;

--Cross join
create table Product
(
pid int primary key,
pname varchar(20),
expectedprod int
);

create table  RawMaterial
(
id int,
mname varchar(20),
qtyinstock int
);
insert into Product values(1234,'car',2000),(1235,'Jcb',100),(1236,'Bike',50);
select * from product;


insert into RawMaterial values(1,'cascrews',100000),(2,'chasee',500),
(3,'BiBatteryke',1500);
select * from RawMaterial;

select * from Product cross join RawMaterial;
