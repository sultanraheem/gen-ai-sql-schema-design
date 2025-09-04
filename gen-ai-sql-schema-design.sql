CREATE TABLE `Department` (
  `department_id` INT PRIMARY KEY,
  `department_name` VARCHAR(100) NOT NULL
);

CREATE TABLE `StoreLocation` (
  `store_location_id` INT PRIMARY KEY,
  `store_name` VARCHAR(100) NOT NULL,
  `address_line1` VARCHAR(255),
  `address_line2` VARCHAR(255),
  `city` VARCHAR(100),
  `state` VARCHAR(100),
  `zip_code` VARCHAR(20),
  `country` VARCHAR(100),
  `opening_hours` VARCHAR(255)
);

CREATE TABLE `Category` (
  `category_id` INT PRIMARY KEY,
  `category_name` VARCHAR(100) NOT NULL
);

CREATE TABLE `Brand` (
  `brand_id` INT PRIMARY KEY,
  `brand_name` VARCHAR(100) NOT NULL
);

CREATE TABLE `Color` (
  `color_id` INT PRIMARY KEY,
  `color_name` VARCHAR(50) NOT NULL
);

CREATE TABLE `Size` (
  `size_id` INT PRIMARY KEY,
  `size_description` VARCHAR(50) NOT NULL
);

CREATE TABLE `Supplier` (
  `supplier_id` INT PRIMARY KEY,
  `supplier_name` VARCHAR(100) NOT NULL,
  `contact_info` VARCHAR(255)
);

CREATE TABLE `Employee` (
  `employee_id` INT PRIMARY KEY,
  `first_name` VARCHAR(100) NOT NULL,
  `last_name` VARCHAR(100) NOT NULL,
  `date_of_birth` DATE,
  `hire_date` DATE,
  `position` VARCHAR(100),
  `department_id` INT,
  `store_location_id` INT,
  `email` VARCHAR(255),
  `phone_number` VARCHAR(20),
  `manager_id` INT
);

CREATE TABLE `Customer` (
  `customer_id` INT PRIMARY KEY,
  `first_name` VARCHAR(100) NOT NULL,
  `last_name` VARCHAR(100) NOT NULL,
  `date_of_birth` DATE,
  `email` VARCHAR(255) UNIQUE NOT NULL,
  `phone_number` VARCHAR(20),
  `address_line1` VARCHAR(255),
  `address_line2` VARCHAR(255),
  `city` VARCHAR(100),
  `state` VARCHAR(100),
  `zip_code` VARCHAR(20),
  `country` VARCHAR(100),
  `loyalty_points` INT
);

CREATE TABLE `Seller` (
  `seller_id` INT PRIMARY KEY,
  `first_name` VARCHAR(100) NOT NULL,
  `last_name` VARCHAR(100) NOT NULL,
  `contact_number` VARCHAR(20) NOT NULL,
  `email` VARCHAR(255),
  `commission_rate` DECIMAL(5,2),
  `date_of_registration` DATE
);

CREATE TABLE `Inventory` (
  `item_id` INT PRIMARY KEY,
  `product_name` VARCHAR(255) NOT NULL,
  `category_id` INT,
  `brand_id` INT,
  `color_id` INT,
  `size_id` INT,
  `quantity_on_hand` INT NOT NULL,
  `reorder_level` INT NOT NULL,
  `last_received_date` DATE,
  `supplier_id` INT
);

CREATE TABLE `Sales` (
  `sale_id` INT PRIMARY KEY,
  `employee_id` INT,
  `customer_id` INT,
  `sale_date` DATE NOT NULL,
  `store_location_id` INT,
  `total_amount` DECIMAL(10,2) NOT NULL,
  `payment_method` VARCHAR(50),
  `discount_amount` DECIMAL(10,2)
);

ALTER TABLE `Employee` ADD FOREIGN KEY (`department_id`) REFERENCES `Department` (`department_id`);

ALTER TABLE `Employee` ADD FOREIGN KEY (`store_location_id`) REFERENCES `StoreLocation` (`store_location_id`);

ALTER TABLE `Employee` ADD FOREIGN KEY (`manager_id`) REFERENCES `Employee` (`employee_id`);

ALTER TABLE `Inventory` ADD FOREIGN KEY (`category_id`) REFERENCES `Category` (`category_id`);

ALTER TABLE `Inventory` ADD FOREIGN KEY (`brand_id`) REFERENCES `Brand` (`brand_id`);

ALTER TABLE `Inventory` ADD FOREIGN KEY (`color_id`) REFERENCES `Color` (`color_id`);

ALTER TABLE `Inventory` ADD FOREIGN KEY (`size_id`) REFERENCES `Size` (`size_id`);

ALTER TABLE `Inventory` ADD FOREIGN KEY (`supplier_id`) REFERENCES `Supplier` (`supplier_id`);

ALTER TABLE `Sales` ADD FOREIGN KEY (`employee_id`) REFERENCES `Employee` (`employee_id`);

ALTER TABLE `Sales` ADD FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`customer_id`);

ALTER TABLE `Sales` ADD FOREIGN KEY (`store_location_id`) REFERENCES `StoreLocation` (`store_location_id`);
