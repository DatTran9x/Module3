create database saleManage;
use salemanage;

create table Customer(
	CustomerID int not null auto_increment unique primary key,
    CustomerName varchar(69) not null,
    CustomerAge int not null check(CustomerAge>0)
);

create table Orders(
	OrdersID int not null auto_increment unique primary key,
    OrdersDate datetime not null,
    OrdersPrice int not null,
    CustomerID int not null,
    foreign key (CustomerID) references customer(CustomerID)
);

create table Product(
	ProductID int not null auto_increment unique primary key,
    ProductName varchar(69) not null,
    ProductPrice int not null check(ProductPrice>0)
);

create table OrderDetail(
	OrdersId int not null,
    ProductId int not null,
    ProductQuanity int not null check(ProductQuanity>0),
    foreign key (OrdersId) references orders(OrdersId),
    foreign key (ProductId) references product(ProductId)
);