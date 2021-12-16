create database demo;

create table products(
	id int primary key,
    productCode int,
    productName varchar(255),
    productPrice int,
    productAmount int,
    productDescription varchar(255),
    poductStatus boolean
);

insert into products
value 	(1,1,"Tao",1,10,"Ngon",true),
		(2,2,"Le",2,11,"Do",false);
        
explain select * from products where productCode=1;
explain select * from products where productName="Le" and productPrice=2;

create unique index product_key on products(productCode);
create index find_by_name on products(productName,productPrice);

explain select * from products where productCode=1;
explain select * from products where productName="Le" and productPrice=2;

drop index product_key on products;
drop index find_by_name on products;

create view product_view as select productCode, productName, productPrice, poductStatus from products;
select* from product_view;

create or replace view product_view as select productCode,productName,productPrice from products;
select * from product_view;

drop view product_view;

DELIMITER //
create procedure getAll()
begin
	select * from products;
end //
DELIMITER ;

DELIMITER //
create procedure insertInto(
	IN pid int ,
    IN pc int,
    In pn varchar(255),
    IN pp int,
    IN pa int,
    IN pd varchar(255),
    IN ps boolean
)
begin
	insert into products
    value (pid,pc,pn,pp,pa,pd,ps);
end // 
DELIMITER ;

call insertinto(3,3,"Man",3,30,"Ngon",true);
drop procedure if exists insertInto;

DELIMITER //
create procedure editByID(
IN pid int ,
    IN pc int,
    In pn varchar(255),
    IN pp int,
    IN pa int,
    IN pd varchar(255),
    IN ps boolean
) 
begin
	update products
    set productName = pn,
		productCode = pc,
        productPrice = pp,
        productAmount = pa,
        productDescription = pc,
        poductStatus = ps
	where id = pid;
end //
DELIMITER ;

call editByID(3,4,"Dao",4,40,"Do",true);
call getAll();

DELIMITER //
create procedure deleteByID(
	in pid int
)
begin
	delete from products where id = pid;
end //
delimiter ;

call deleteByID(3);
call getAll();