-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema bd_equipos
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bd_equipos
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bd_equipos` DEFAULT CHARACTER SET utf8 ;
USE `bd_equipos` ;

-- -----------------------------------------------------
-- Table `bd_equipos`.`equipo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_equipos`.`equipo` (
  `idequipo` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `codigo` VARCHAR(45) NOT NULL,
  `marca` VARCHAR(45) NOT NULL,
  `modelo` VARCHAR(45) NOT NULL,
  `nserie` VARCHAR(45) NOT NULL,
  `ubicacion` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  `equipocol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idequipo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_equipos`.`mantenimiento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_equipos`.`mantenimiento` (
  `idmantenimiento` INT NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  `fecha_inicio` VARCHAR(45) NOT NULL,
  `fecha_fin` VARCHAR(45) NOT NULL,
  `id_usuario` VARCHAR(45) NOT NULL,
  `equipo_idequipo` INT NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idmantenimiento`),
  INDEX `fk_mantenimiento_equipo_idx` (`equipo_idequipo` ASC) VISIBLE,
  CONSTRAINT `fk_mantenimiento_equipo`
    FOREIGN KEY (`equipo_idequipo`)
    REFERENCES `bd_equipos`.`equipo` (`idequipo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;