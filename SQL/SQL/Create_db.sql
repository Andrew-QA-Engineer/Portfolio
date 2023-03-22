SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema DB1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DB1` ;
USE `DB1` ;

-- -----------------------------------------------------
-- Table `DB1`.`University`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB1`.`University` (
  `id_univer` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`id_univer`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `DB1`.`Faculties`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB1`.`Faculties` (
  `id_facult` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(150) NOT NULL,
  `id_univer` INT NOT NULL,
  PRIMARY KEY (`id_facult`),
  INDEX `University _idx` (`id_univer` ASC) VISIBLE,
    FOREIGN KEY (`id_univer`)
    REFERENCES `DB1`.`University` (`id_univer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `DB1`.`Teachers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB1`.`Teachers` (
  `id_teach` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `second_name` VARCHAR(45) NOT NULL,
  `id_facult` INT NOT NULL,
  INDEX `Fuculties_idx` (`id_facult` ASC) VISIBLE,
  PRIMARY KEY (`id_teach`),
    FOREIGN KEY (`id_facult`)
    REFERENCES `DB1`.`Faculties` (`id_facult`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `DB1`.`Groups`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB1`.`Groups` (
  `id_group` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `id_fucalt` INT NOT NULL,
  PRIMARY KEY (`id_group`),
  INDEX `Faculties _idx` (`id_fucalt` ASC) VISIBLE,
    FOREIGN KEY (`id_fucalt`)
    REFERENCES `DB1`.`Faculties` (`id_facult`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `DB1`.`Students`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB1`.`Students` (
  `id_stud` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `second_name` VARCHAR(45) NOT NULL,
  `id_facult` INT NOT NULL,
  `id_group` INT NOT NULL,
  PRIMARY KEY (`id_stud`),
  INDEX `Faculties_idx` (`id_facult` ASC) VISIBLE,
  INDEX `Groups_idx` (`id_group` ASC) VISIBLE,
    FOREIGN KEY (`id_facult`)
    REFERENCES `DB1`.`Faculties` (`id_facult`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`id_group`)
    REFERENCES `DB1`.`Groups` (`id_group`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;



