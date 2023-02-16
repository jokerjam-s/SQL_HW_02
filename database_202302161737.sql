﻿--
-- Script was generated by Devart dbForge Studio 2022 for MySQL, Version 9.1.21.0
-- Product home page: http://www.devart.com/dbforge/mysql/studio
-- Script date 16.02.2023 17:37:42
-- Server version: 8.0.30
-- Client version: 4.1
--

-- 
-- Disable foreign keys
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Set SQL mode
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8';

--
-- Set default database
--
USE HW_02;

--
-- Drop table `sales`
--
DROP TABLE IF EXISTS sales;

--
-- Drop table `status`
--
DROP TABLE IF EXISTS status;

--
-- Set default database
--
USE HW_02;

--
-- Create table `status`
--
CREATE TABLE status (
  status_id int NOT NULL,
  employe_id varchar(10) NOT NULL,
  amount decimal(6, 2) NOT NULL DEFAULT 0.00,
  order_status varchar(20) NOT NULL,
  PRIMARY KEY (status_id)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 3276,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;

--
-- Create table `sales`
--
CREATE TABLE sales (
  sale_id int NOT NULL,
  order_date date NOT NULL,
  count_product int NOT NULL DEFAULT 0,
  PRIMARY KEY (sale_id)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 3276,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table status
--
INSERT INTO status VALUES
(1, 'e03', 15.00, 'OPEN'),
(2, 'e01', 25.50, 'OPEN'),
(3, 'e05', 100.70, 'CLOSED'),
(4, 'e02', 22.18, 'OPEN'),
(5, 'e04', 9.50, 'CANCELLED');

-- 
-- Dumping data for table sales
--
INSERT INTO sales VALUES
(1, '2022-01-01', 156),
(2, '2022-01-02', 180),
(3, '2022-01-03', 21),
(4, '2022-01-04', 124),
(5, '2022-01-05', 341);

-- 
-- Restore previous SQL mode
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Enable foreign keys
-- 
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;