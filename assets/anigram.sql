-- MySQL Script generated by MySQL Workbench
-- 01/03/16 10:15:35
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`User` (
  `User_ID` INT NOT NULL AUTO_INCREMENT,
  `User_Name` VARCHAR(45) NULL,
  `User_Username` VARCHAR(45) NULL,
  `User_Password` VARCHAR(500) NULL,
  PRIMARY KEY (`User_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Dictionary`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Dictionary` (
  `D_ID` INT NOT NULL AUTO_INCREMENT,
  `D_Name` VARCHAR(45) NULL,
  `D_User` INT NOT NULL,
  PRIMARY KEY (`D_ID`),
  INDEX `fk_Dictionary_User_idx` (`D_User` ASC),
  CONSTRAINT `fk_Dictionary_User`
    FOREIGN KEY (`D_User`)
    REFERENCES `mydb`.`User` (`User_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Word`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Word` (
  `W_ID` INT NOT NULL AUTO_INCREMENT,
  `W_Name` VARCHAR(45) NULL,
  `W_Pro` VARCHAR(100) NULL,
  `W_Pro_Audio` VARCHAR(150) NULL,
  `W_Part` VARCHAR(1) NULL,
  `W_Means` MEDIUMTEXT NULL,
  `W_Dictionary` INT NOT NULL,
  PRIMARY KEY (`W_ID`),
  INDEX `fk_Word_Dictionary1_idx` (`W_Dictionary` ASC),
  CONSTRAINT `fk_Word_Dictionary1`
    FOREIGN KEY (`W_Dictionary`)
    REFERENCES `mydb`.`Dictionary` (`D_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Synonym`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Synonym` (
  `S_ID` INT NOT NULL AUTO_INCREMENT,
  `S_Word1` INT NOT NULL,
  `S_Word2` INT NOT NULL,
  PRIMARY KEY (`S_ID`),
  INDEX `fk_Synonym_Word1_idx` (`S_Word1` ASC),
  INDEX `fk_Synonym_Word2_idx` (`S_Word2` ASC),
  CONSTRAINT `fk_Synonym_Word1`
    FOREIGN KEY (`S_Word1`)
    REFERENCES `mydb`.`Word` (`W_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Synonym_Word2`
    FOREIGN KEY (`S_Word2`)
    REFERENCES `mydb`.`Word` (`W_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Antonym`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Antonym` (
  `A_ID` INT NOT NULL AUTO_INCREMENT,
  `A_Word1` INT NOT NULL,
  `A_Word2` INT NOT NULL,
  PRIMARY KEY (`A_ID`),
  INDEX `fk_Antonym_Word1_idx` (`A_Word1` ASC),
  INDEX `fk_Antonym_Word2_idx` (`A_Word2` ASC),
  CONSTRAINT `fk_Antonym_Word1`
    FOREIGN KEY (`A_Word1`)
    REFERENCES `mydb`.`Word` (`W_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Antonym_Word2`
    FOREIGN KEY (`A_Word2`)
    REFERENCES `mydb`.`Word` (`W_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;