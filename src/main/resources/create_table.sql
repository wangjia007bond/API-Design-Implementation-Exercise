CREATE SCHEMA eshop;

USE eshop;

CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `createdTime` DATETIME NOT NULL,
  `updatedtime` DATETIME NOT NULL,
  PRIMARY KEY (`id`)
);