-- Create relational  DB of your choice with minimum 5 tables
-- Set Primary and Foreign Key constraints to create relations between the tables

CREATE DATABASE PetCare_Center;
USE PetCare_Center;
CREATE TABLE `Hubs` (
	`Hub_id` INT NOT NULL AUTO_INCREMENT,
	`Hub_name` VARCHAR(40) NOT NULL UNIQUE,
	`Contact_id` INT NOT NULL,
	PRIMARY KEY (`Hub_id`),
	UNIQUE (`Contact_id`)
);

CREATE TABLE `Suppliers` (
	`Supplier_id` INT NOT NULL AUTO_INCREMENT,
	`Supplier_name` VARCHAR(40) NOT NULL UNIQUE,
	`Contact_id` INT NOT NULL,
	PRIMARY KEY (`Supplier_id`),
	UNIQUE (`Contact_id`)
);

CREATE TABLE `Clients` (
	`Client_id` INT NOT NULL AUTO_INCREMENT,
	`First_name` VARCHAR(40) NOT NULL,
	`Last_name` VARCHAR(40) NOT NULL,
	`Contact_id` INT NOT NULL,
	PRIMARY KEY (`Client_Id`),
	UNIQUE (`Contact_id`)
);

CREATE TABLE `Pets` (
	`Pet_id` INT NOT NULL AUTO_INCREMENT,
	`Pet_name` VARCHAR(40) NOT NULL,
	`Species` VARCHAR(40) NOT NULL,
	`Breed` VARCHAR(40) NULL,
	`Date_of_birth` DATE NOT NULL,
	`Client_id` INT NOT NULL,
	PRIMARY KEY (`Pet_Id`)
);

CREATE TABLE `Specialists` (
	`Specialist_id` INT NOT NULL AUTO_INCREMENT,
	`First_name` VARCHAR(40) NOT NULL,
	`Last_name` VARCHAR(40) NOT NULL,
	`Hub_id` INT NOT NULL,
	PRIMARY KEY (`Specialist_Id`)
);

CREATE TABLE `Visits` (
	`Visit_id` INT NOT NULL AUTO_INCREMENT,
	`Time_of_visit` TIME(6) NOT NULL,
	`Date_of_visit` DATE NOT NULL,
	`Pet_id` INT NOT NULL,
	`Specialist_id` INT NOT NULL,
	`Service_id` INT NOT NULL,
	PRIMARY KEY (`Visit_id`)
);

CREATE TABLE `Orders` (
	`Order_id` INT NOT NULL AUTO_INCREMENT,
	`Date_of_order` DATE NOT NULL,
	`Supplier_id` INT NOT NULL,
	`Hub_id` INT NOT NULL,
    `comment` varchar(300) DEFAULT '',
	PRIMARY KEY (`Order_id`)
);

CREATE TABLE `Services` (
	`Service_id` INT NOT NULL AUTO_INCREMENT,
	`Service_name` VARCHAR(50) NOT NULL UNIQUE,
	`Service_price` DECIMAL(10, 2) NOT NULL,
	PRIMARY KEY (`Service_id`)
);

CREATE TABLE `Contact_details` (
	`Contact_id` INT NOT NULL AUTO_INCREMENT,
	`Phone_number` VARCHAR(12) NOT NULL UNIQUE,
	`Email` VARCHAR(40) NOT NULL UNIQUE,
	`City` VARCHAR(40) NOT NULL,
	PRIMARY KEY (`Contact_id`)
);

CREATE TABLE `Products` (
	`Product_id` INT NOT NULL AUTO_INCREMENT,
	`Product_name` VARCHAR(40) NOT NULL,
	`Product_price` DECIMAL(10, 2) NOT NULL,
	PRIMARY KEY (`Product_id`)
);

ALTER TABLE `Hubs`
	ADD CONSTRAINT `fk_Hubs_Contact_details` FOREIGN KEY (`Contact_id`) REFERENCES `Contact_details`(`Contact_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `Suppliers`
	ADD CONSTRAINT `fk_Suppliers_Contact_details` FOREIGN KEY (`Contact_id`) REFERENCES `Contact_details`(`Contact_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `Clients`
	ADD CONSTRAINT `fk_Clients_Contact_details` FOREIGN KEY (`Contact_id`) REFERENCES `Contact_details`(`Contact_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `Pets`
	ADD CONSTRAINT `fk_Pets_Clients` FOREIGN KEY (`Client_id`) REFERENCES `Clients`(`Client_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `Specialists`
	ADD CONSTRAINT `fk_Specialists_Hubs` FOREIGN KEY (`Hub_id`) REFERENCES `Hubs`(`Hub_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `Visits`
	ADD CONSTRAINT `fk_Visits_Pets` FOREIGN KEY (`Pet_id`) REFERENCES `Pets`(`Pet_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
	ADD CONSTRAINT `fk_Visits_Specialists` FOREIGN KEY (`Specialist_id`) REFERENCES `Specialists`(`Specialist_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
	ADD CONSTRAINT `fk_Visits_Services` FOREIGN KEY (`Service_id`) REFERENCES `Services`(`Service_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `Orders`
	ADD CONSTRAINT `fk_Orders_Suppliers` FOREIGN KEY (`Supplier_id`) REFERENCES `Suppliers`(`Supplier_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
	ADD CONSTRAINT `fk_Orders_Hubs` FOREIGN KEY (`Hub_id`) REFERENCES `Hubs`(`Hub_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

CREATE TABLE `Order_Product` (
	`Order_id` INT NOT NULL,
	`Product_id` INT NOT NULL,
	PRIMARY KEY (`Order_id`,`Product_id`),
	CONSTRAINT `fk_Order_Product_Orders` FOREIGN KEY (`Order_id`) REFERENCES `Orders`(`Order_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
	CONSTRAINT `fk_Order_Product_Products` FOREIGN KEY (`Product_id`) REFERENCES `Products`(`Product_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE `Service_Specialist` (
	`Service_id` INT NOT NULL,
	`Specialist_id` INT NOT NULL,
	PRIMARY KEY (`Service_id`,`Specialist_id`),
	CONSTRAINT `fk_Specialists_Services` FOREIGN KEY (`Service_id`) REFERENCES `Services`(`Service_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
CONSTRAINT `fk_Specialists_Specialists` FOREIGN KEY (`Specialist_id`) REFERENCES `Specialists`(`Specialist_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
);




-- Using any type of the joins create a view that combines multiple tables in a logical way
	-- Subquery to obtain information about specialists who work in a clinic in a given city (Wroclaw)
CREATE OR REPLACE VIEW vw_specilists_in_wroclaw AS
SELECT
	CONCAT
	(s.First_name, ' ', s.Last_name) AS Specialist
FROM 
    Specialists s
WHERE
    s.Hub_id IN (
        SELECT s.Hub_id
        FROM Specialists s
        JOIN Hubs h ON h.Hub_id = s.Hub_id
        JOIN Contact_details cd ON h.Contact_id = cd.Contact_Id
        WHERE cd.City = 'Wroclaw'
    );

-- In your database, create a stored function that can be applied to a query in your DB
	-- function which calculate total cost of order. it can be used to create a view with cost of all orders
	DELIMITER //
CREATE FUNCTION CalculateOrderTotal(orderId INT) RETURNS DECIMAL(10, 2)
deterministic
BEGIN
    DECLARE total DECIMAL(10, 2);
    
    SELECT SUM(p.Product_price * op.Product_qty)
    INTO total
    FROM Order_Product op
    JOIN Products p ON op.Product_id = p.Product_id
    WHERE op.Order_id = orderId;
    
    RETURN total;
END;

//
DELIMITER ;

-- Prepare an example query with a subquery to demonstrate how to extract data from your DB for analysis
	-- Subquery to obtain information about specialists who work in a clinic in a given city (Wroclaw)

	SELECT
	CONCAT
	(s.First_name, ' ', s.Last_name) AS Specialist
FROM 
    Specialists s
WHERE
    s.Hub_id IN (
        SELECT s.Hub_id
        FROM Specialists s
        JOIN Hubs h ON h.Hub_id = s.Hub_id
        JOIN Contact_details cd ON h.Contact_id = cd.Contact_Id
        WHERE cd.City = 'Wroclaw'
    );
    
	-- Subquery to obtain information about clients who have had visits to a specialist with a specific ID
SELECT 
	CONCAT
	(c.First_name, ' ', c.Last_name) AS Client,
    cd.phone_number as 'Phone number',
    cd.email as 'Email'
FROM 
    Clients c
JOIN
	contact_details cd
ON
	c.Contact_id = cd.Contact_id
WHERE
    c.Client_id IN (
        SELECT DISTINCT p.Client_id
        FROM Pets p
        JOIN Visits v ON p.Pet_id = v.Pet_id
        JOIN Specialists s ON v.Specialist_id = s.Specialist_id
        WHERE s.Specialist_id = 3
    );
    
    -- Subquery to obtain information about specialists who work in a clinic with a specific name
SELECT
	CONCAT
	(s.First_name, ' ', s.Last_name) AS Specialist
FROM 
    Specialists s
WHERE
    s.Hub_id IN (
        SELECT s.Hub_id
        FROM Specialists s
        JOIN Hubs h ON h.Hub_id = s.Hub_id
        WHERE h.Hub_name = 'PetCare Cracovia'
    );

-- Create DB diagram where all table relations are shown
	-- pdf

-- In your database, create a stored procedure and demonstrate how it runs
	DELIMITER //
	CREATE PROCEDURE AddClient(
		IN firstname VARCHAR(40), 
		IN lastname VARCHAR(40), 
		IN phonenumber VARCHAR(12), 
		IN email VARCHAR(40), 
		IN city VARCHAR(40))

	BEGIN
		DECLARE contactid INT;
		INSERT INTO Contact_details (Phone_number, Email, City)
		VALUES (phonenumber, email, city);
    
		SET contactid = LAST_INSERT_ID();
    
		INSERT INTO Clients(Contact_id, First_name, Last_name)
		VALUES (contactid, firstname, lastname);
    
	END //
	DELIMITER ;

	CALL AddClient('John', 'Franco', '(456)789-125', 'john@franco.com', 'Krakow');

		
-- In your database, create a trigger and demonstrate how it runs
	-- Check eligibility and update if client status can be premium after adding new visit
	delimiter //
	CREATE FUNCTION countVisitsForClient(client_id INT)
	RETURNS INT DETERMINISTIC
	BEGIN
	DECLARE visitsNumber INT;
	select COUNT(*) INTO visitsNumber FROM visits v
	JOIN pets p ON p.Pet_Id = v.Pet_Id
	JOIN clients c ON c.Client_Id = p.Client_Id
	where c.Client_Id = client_id;
	RETURN visitsNumber;
	END //
	delimiter;
	-- ------------------------------------------------------------------------
	DELIMITER //
	CREATE TRIGGER TR_UpdatePremium AFTER INSERT on visits FOR EACH ROW
	BEGIN
	declare clientId INT;
    
	select Client_Id from pets where Pet_Id = NEW.Pet_Id into clientId;
	IF countVisitsForClient(clientId) >= 3 THEN
	UPDATE clients SET premium = 1 where clientId = Client_Id;
	END IF;
	END //
	DELIMITER ;
        
	-- visits(Visit_id, Time_of_visit, Date_of_visit, Pet_id, Specialist_id, Service_id)
    -- (for Client 9, pet 11,12)
    insert into visits values (93,'12:20:00', '2023-10-12', 11, 7, 8);

-- In your database, create an event and demonstrate how it runs

	CREATE EVENT IF NOT EXISTS showComments ON SCHEDULE
	EVERY 1 second
	STARTS CURRENT_TIMESTAMP
	ENDS CURRENT_TIMESTAMP + interval 5 minute
	DO
	UPDATE orders SET comments = concat('(', current_timestamp, ') Awaiting Delivery')
	WHERE (select DATE_FORMAT(Date_of_order, '%Y %m %d')) >= DATE_FORMAT(DATE_SUB(curdate(), interval 30 day),  '%Y %m %d');
	

-- Create a view that uses at least 3-4 base tables; prepare and demonstrate a query that uses the view to produce a logically arranged result set for analysis.
	-- a view which represents total order price, supplier and destination for all orders
CREATE OR REPLACE VIEW vw_total_order_cost as
select 
    o.Order_id as Order_id, CalculateOrderTotal(o.Order_id) AS Total_cost, h.Hub_name as Hub, s.Name as Supplier
from
	orders o
JOIN
	order_product m
ON
	o.Order_id = m.Order_id
Join
	products p
ON
	p.Product_id = m.Product_id
JOIN
	hubs h
ON
	h.Hub_Id = o.Hub_Id
JOIN
	Suppliers s
ON
	s.Supplier_Id = o.Supplier_Id
GROUP BY 
	o.Order_id
ORDER BY
	o.Order_id;

-- Prepare an example query with group by and having to demonstrate how to extract data from your DB for analysis
	-- selection of pets which had more then 2 visits in the petcare center
	SELECT
		p.Pet_id,
		p.Pet_name,
		p.Species,
		COUNT(v.Visit_id) AS total_visits
	FROM 
		Pets p
	JOIN
		Visits v ON p.Pet_id = v.Pet_id
	GROUP BY
		p.Pet_id, p.Pet_name
	HAVING
		COUNT(v.Visit_id) > 2;