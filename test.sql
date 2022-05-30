create table Customers
(
	Id int identity(1,1) primary key,
	[Name] nvarchar(200) not null
)
create table Orders
(
	Id int identity(1,1) primary key,
	CustomerId int references Customers(Id)
)

insert into Customers values
('Max'),
('Pavel'),
('Ivan'),
('Leonid')

insert into Orders values
(2),
(4)

select c.[Name] from Customers c left join Orders o on c.Id = o.CustomerId where o.CustomerId is null