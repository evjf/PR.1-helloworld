DELIMITER //
CREATE FUNCTION IF NOT EXISTS HelloWorld()
RETURNS char(50)
DETERMINISTIC
BEGIN
    DECLARE hello char(50);
    SET hello = "Hello World!";
    RETURN hello;
END //

delimiter ;

SELECT HelloWorld();
