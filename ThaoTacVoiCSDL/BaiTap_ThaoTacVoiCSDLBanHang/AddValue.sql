use salemanage;

insert into customer
value (1,"Minh Quan",10);
insert into customer
value (2,"Ngoc Oanh",20);
insert into customer
value (3,"Hong Ha",50);

insert into orders
value (1,"2016-03-21",null,1);
insert into orders
value (2,"2006-03-23",null,2);
insert into orders
value (3,"2006-03-16",null,1);

insert into product
value (1,"May Giat",3);
insert into product
value (2,"Tu Lanh",5);
insert into product
value (3,"Dieu Hoa",7);
insert into product
value (4,"Quat",1);
insert into product
value (5,"Bep Dien",2);

insert into OrderDetail
value (1,1,3);
insert into OrderDetail
value (1,3,7);
insert into OrderDetail
value (1,4,2);
insert into OrderDetail
value (2,1,1);
insert into OrderDetail
value (3,1,8);
insert into OrderDetail
value (2,5,4);
insert into OrderDetail
value (2,3,3);
