delimiter //
create procedure getCusById(in cusNum int(11))
BEGIN
    SELECT * FROM customers WHERE customerNumber = cusNum;
end //DELIMITER ;
CALL getCusById(175);
DELIMITER //
create procedure getCustomersCountByCity(in in_city varchar(50), out total int)
BEGIN
    SELECT COUNT(customerNumber) into total from customers WHERE in_city=city;
END // DELIMITER ;
call getCustomersCountByCity('Lyon',@total);
select @total;

delimiter //
create procedure setCounter(inout counter int , in inc int)
begin
    set counter = counter + inc;
end // delimiter ;

set @count = 1;
call setCounter(@counter,1);
call setCounter(@counter,5);
select @counter;
