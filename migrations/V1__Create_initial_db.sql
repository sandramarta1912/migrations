USE `admin`;

CREATE TABLE `admin`.`Partners` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `is_ssp` TINYINT NOT NULL,
   `is_dsp` TINYINT NOT NULL,
   `name` VARCHAR(45) NOT NULL,
   `timeout` INT NOT NULL,
   `url` VARCHAR(45) NOT NULL,
   `method` VARCHAR(45) NOT NULL,
   PRIMARY KEY (`id`),
   UNIQUE INDEX `id_UNIQUE` (`id` ASC));

CREATE TABLE `admin`.`Bids` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `partner_id` VARCHAR(100) NOT NULL,
  `url` VARCHAR(45) NOT NULL,
  `value` FLOAT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC));

CREATE TABLE `admin`.`Managers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC));