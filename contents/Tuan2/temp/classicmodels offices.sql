CREATE TABLE IF NOT EXISTS `classicmodels_offices` (
    `officeCode` INT,
    `city` VARCHAR(13) CHARACTER SET utf8,
    `phone` VARCHAR(16) CHARACTER SET utf8,
    `addressLine1` VARCHAR(24) CHARACTER SET utf8,
    `addressLine2` VARCHAR(9) CHARACTER SET utf8,
    `state` VARCHAR(10) CHARACTER SET utf8,
    `country` VARCHAR(9) CHARACTER SET utf8,
    `postalCode` VARCHAR(8) CHARACTER SET utf8,
    `territory` VARCHAR(5) CHARACTER SET utf8
);
INSERT INTO `classicmodels_offices` VALUES (1,'San Francisco','+1 650 219 4782','100 Market Street','Suite 300','CA','USA','94080',NULL),
	(2,'Boston','+1 215 837 0825','1550 Court Place','Suite 102','MA','USA','02107',NULL),
	(3,'NYC','+1 212 555 3000','523 East 53rd Street','apt. 5A','NY','USA','10022',NULL),
	(4,'Paris','+33 14 723 4404','43 Rue Jouffroy D''abbans',NULL,NULL,'France','75017','EMEA'),
	(5,'Tokyo','+81 33 224 5000','4-1 Kioicho',NULL,'Chiyoda-Ku','Japan','102-8578','Japan'),
	(6,'Sydney','+61 2 9264 2451','5-11 Wentworth Avenue','Floor #2',NULL,'Australia','NSW 2010','APAC'),
	(7,'London','+44 20 7877 2041','25 Old Broad Street','Level 7',NULL,'UK','EC2N 1HN','EMEA');
