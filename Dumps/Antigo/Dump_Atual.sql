-- MySQL Script generated by MySQL Workbench
-- Mon Sep 26 17:10:12 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema gerdemandadb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema gerdemandadb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `gerdemandadb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `gerdemandadb` ;

-- -----------------------------------------------------
-- Table `gerdemandadb`.`bu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gerdemandadb`.`bu` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `gerdemandadb`.`cargo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gerdemandadb`.`cargo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 24
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `gerdemandadb`.`tipo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gerdemandadb`.`tipo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `gerdemandadb`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gerdemandadb`.`usuario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NULL DEFAULT NULL,
  `cpf` VARCHAR(12) NULL DEFAULT NULL,
  `rg` VARCHAR(10) NULL DEFAULT NULL,
  `org_emissor` VARCHAR(45) NULL DEFAULT NULL,
  `data_emissao` DATE NULL DEFAULT NULL,
  `data_nascimento` DATE NULL DEFAULT NULL,
  `endereco` VARCHAR(45) NULL DEFAULT NULL,
  `cidade` VARCHAR(45) NULL DEFAULT NULL,
  `numero` VARCHAR(45) NULL DEFAULT NULL,
  `complemento` VARCHAR(45) NULL DEFAULT NULL,
  `cep` VARCHAR(45) NULL DEFAULT NULL,
  `uf` VARCHAR(45) NULL DEFAULT NULL,
  `celular` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(80) NULL DEFAULT NULL,
  `codigo_re` VARCHAR(100) NULL DEFAULT NULL,
  `status` VARCHAR(12) NULL DEFAULT NULL,
  `fk_tipo` INT NULL DEFAULT NULL,
  `fk_bu` INT NULL DEFAULT NULL,
  `fk_cargo` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC) VISIBLE,
  INDEX `fk_usuario_tipo1_idx` (`fk_tipo` ASC) VISIBLE,
  INDEX `fk_usuario_bu1_idx` (`fk_bu` ASC) VISIBLE,
  INDEX `fk_usuario_cargo1_idx` (`fk_cargo` ASC) VISIBLE,
  CONSTRAINT `fk_usuario_bu1`
    FOREIGN KEY (`fk_bu`)
    REFERENCES `gerdemandadb`.`bu` (`id`),
  CONSTRAINT `fk_usuario_cargo1`
    FOREIGN KEY (`fk_cargo`)
    REFERENCES `gerdemandadb`.`cargo` (`id`),
  CONSTRAINT `fk_usuario_tipo1`
    FOREIGN KEY (`fk_tipo`)
    REFERENCES `gerdemandadb`.`tipo` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 72
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `gerdemandadb`.`historico_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gerdemandadb`.`historico_usuario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `data_inicio` DATETIME NULL DEFAULT NULL,
  `data_final` DATETIME NULL DEFAULT NULL,
  `vigente` VARCHAR(45) NULL DEFAULT NULL,
  `fk_cargo` INT NOT NULL,
  `fk_usuario` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_cargo` (`fk_cargo` ASC) VISIBLE,
  INDEX `fk_usuario` (`fk_usuario` ASC) VISIBLE,
  CONSTRAINT `fk_cargo`
    FOREIGN KEY (`fk_cargo`)
    REFERENCES `gerdemandadb`.`cargo` (`id`),
  CONSTRAINT `fk_usuario`
    FOREIGN KEY (`fk_usuario`)
    REFERENCES `gerdemandadb`.`usuario` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 131
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
