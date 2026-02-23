DELIMITER //

CREATE PROCEDURE first_procedure(
    IN p_id INT,
    IN p_name VARCHAR(100),
    IN p_email VARCHAR(100)
)
BEGIN
    INSERT INTO customers (id, name, email)
    VALUES (p_id, p_name, p_email);
END //

DELIMITER ;

CALL first_procedure(10, 'abdbd', 'nhhg');

select * from customers;