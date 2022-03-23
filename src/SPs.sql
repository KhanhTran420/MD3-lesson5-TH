DELIMITER //
CREATE PROCEDURE findAllCustomer()
BEGIN
    SELECT * FROM customers;
end //
DELIMITER ;
CALL  findAllCustomer();

DELIMITER //
# DROP PROCEDURE IF EXISTS `findAllCustomer`//
CREATE PROCEDURE findAllCustomer()
BEGIN
    SELECT  customerName,contactFirstName,contactLastName,city,country from customers;
END//
CALL findAllCustomer()

