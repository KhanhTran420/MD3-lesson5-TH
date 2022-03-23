create view customer_views as
select customerNumber,customerName,phone from customers;

select * from customer_views;
# cú pháp cập nhập view .
#creat or replace view view_name as select column_1,column_2... from table_name
create or replace view customer_views as
select customerNumber,customerName,contactFirstName,contactLastName,phone
from customers
where city = 'Nantes';
# xóa view
DROP VIEW customer_views;
# check option
create or replace view customer_views as
select * from customers where city in ('Nantes','Singapore','Paris') ;
#update view
update customer_views set customer_views.city = 'Ha Noi'where customer_views.customerNumber = 103;
