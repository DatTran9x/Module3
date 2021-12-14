use salemanage;

select OrdersID,OrdersDate,ordersPrice from orders;

select CustomerName,ProductName from customer c join orders o on c.CustomerID = o.CustomerID join orderdetail od on o.OrdersID = od.OrdersId join product p on od.ProductId = p.ProductID;

select * from  customer c left join orders o on c.CustomerID = o.CustomerID where OrdersID is  null;

select o.OrdersId,o.OrdersDate, p.productprice * od.ProductQuanity from orderdetail od join orders o on o.OrdersId = od.OrdersID join product p on od.ProductId = p.ProductID;