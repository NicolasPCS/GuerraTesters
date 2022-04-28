-- -----------------------------------------------------
-- Schema compras
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `compras`;

CREATE SCHEMA `compras`;
USE `compras` ;

-- -----------------------------------------------------
-- Table `compras`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `compras`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `compras`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `compras`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
  `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------

INSERT INTO product_category(category_name) VALUES ('MEDICAMENTOS');

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('AMOXICILINA-MED-1000', 'AMOXICILINA', 'AMOXICILINA, 250mg/5m','assproductets/images/products/placeholder.png',1,100,19.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('ATORVASTATINA-MED-1001', 'ATORVASTATINA', 'ATORVASTATINA (como sal cálcia), 20 mg','assets/images/products/placeholder.png',1,100,29.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('AZITROMICINA-MED-1002', 'AZITROMICINA', 'AZITROMICINA, 500mg','assets/images/products/placeholder.png',1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('CAPTOPRIL-MED-1003', 'CAPTOPRIL', 'CAPTOPRIL, 25 mg','assets/images/products/placeholder.png',1,100,29.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('CEFALEXINA-MED-1004', 'CEFALEXINA', 'CEFALEXINA, 250mg/5mL','assets/images/products/placeholder.png',1,100,24.99,1, NOW());
