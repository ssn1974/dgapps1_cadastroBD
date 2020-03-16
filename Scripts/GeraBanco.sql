SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Table `perfil`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `perfil` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(12) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `disciplina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `disciplina` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NULL,
  `fk_perfil` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_disciplina_perfil_idx` (`fk_perfil` ASC) VISIBLE,
  CONSTRAINT `fk_disciplina_perfil`
    FOREIGN KEY (`fk_perfil`)
    REFERENCES `perfil` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `complex_guia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `complex_guia` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `uni_medida`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `uni_medida` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(200) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tarefa_guia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tarefa_guia` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(2000) NULL,
  `plataforma` VARCHAR(200) NULL,
  `tarefa` VARCHAR(45) NULL,
  `fk_disciplina` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tarefa_guia_disciplina1_idx` (`fk_disciplina` ASC) VISIBLE,
  CONSTRAINT `fk_tarefa_guia_disciplina1`
    FOREIGN KEY (`fk_disciplina`)
    REFERENCES `disciplina` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `item_guia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `item_guia` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `componente` VARCHAR(200) NULL,
  `limite_itens` INT NULL,
  `valor` DOUBLE NULL,
  `descricao` VARCHAR(2000) NULL,
  `descricao_complex` VARCHAR(2000) NULL,
  `fk_uni_medida` INT NOT NULL,
  `fk_tarefa_guia` INT NOT NULL,
  `fk_complex_guia` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_item_guia_uni_medida1_idx` (`fk_uni_medida` ASC) VISIBLE,
  INDEX `fk_item_guia_tarefa_guia1_idx` (`fk_tarefa_guia` ASC) VISIBLE,
  INDEX `fk_item_guia_complex_guia1_idx` (`fk_complex_guia` ASC) VISIBLE,
  CONSTRAINT `fk_item_guia_uni_medida1`
    FOREIGN KEY (`fk_uni_medida`)
    REFERENCES `uni_medida` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_item_guia_tarefa_guia1`
    FOREIGN KEY (`fk_tarefa_guia`)
    REFERENCES `tarefa_guia` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_item_guia_complex_guia1`
    FOREIGN KEY (`fk_complex_guia`)
    REFERENCES `complex_guia` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sigla`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sigla` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(12) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `situacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `situacao` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(40) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `ordem_forn`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ordem_forn` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `numero_OF` VARCHAR(12) NULL DEFAULT NULL,
  `numero_OF_genti` VARCHAR(12) NULL DEFAULT NULL,
  `fabrica` VARCHAR(12) NULL DEFAULT NULL,
  `tema` VARCHAR(45) NULL DEFAULT NULL,
  `agil` INT NULL DEFAULT NULL,
  `usti_bb` DOUBLE NULL DEFAULT NULL,
  `uor` VARCHAR(80) NULL DEFAULT NULL,
  `demanda` VARCHAR(12) NULL DEFAULT NULL,
  `acao` VARCHAR(12) NULL DEFAULT NULL,
  `tipo` VARCHAR(20) NULL DEFAULT NULL,
  `cd_ti` VARCHAR(12) NULL DEFAULT NULL,
  `dt_abertura` DATETIME NULL DEFAULT NULL,
  `dt_previsao` DATETIME NULL DEFAULT NULL,
  `dt_entrega` DATETIME NULL DEFAULT NULL,
  `dt_devolvida` DATETIME NULL DEFAULT NULL,
  `dt_recusa` DATETIME NULL DEFAULT NULL,
  `dt_aceite` DATETIME NULL DEFAULT NULL,
  `fk_sigla` INT NULL DEFAULT NULL,
  `fk_situacao_genti` INT NULL DEFAULT NULL,
  `fk_situacao_usu` INT NULL DEFAULT NULL,
  `responsavel_t` VARCHAR(80) NULL DEFAULT NULL,
  `gerente_t` VARCHAR(80) NULL DEFAULT NULL,
  `referencia` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_ordem_forn_Sigla1_idx` (`fk_sigla` ASC) VISIBLE,
  INDEX `fk_ordem_forn_Situacao1` (`fk_situacao_genti` ASC) VISIBLE,
  INDEX `fk_ordem_forn_Situacao2` (`fk_situacao_usu` ASC) VISIBLE,
  CONSTRAINT `fk_ordem_forn_Sigla1`
    FOREIGN KEY (`fk_sigla`)
    REFERENCES `sigla` (`id`),
  CONSTRAINT `fk_ordem_forn_Situacao1`
    FOREIGN KEY (`fk_situacao_genti`)
    REFERENCES `situacao` (`id`),
  CONSTRAINT `fk_ordem_forn_Situacao2`
    FOREIGN KEY (`fk_situacao_usu`)
    REFERENCES `situacao` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `contrato`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `contrato` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cargo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cargo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(12) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NULL DEFAULT NULL,
  `email` VARCHAR(80) NULL DEFAULT NULL,
  `cpf` VARCHAR(12) NULL DEFAULT NULL,
  `senha` VARCHAR(80) NULL DEFAULT NULL,
  `codigo_re` VARCHAR(12) NULL DEFAULT NULL,
  `codigo_bb` VARCHAR(12) NULL DEFAULT NULL,
  `empresa` VARCHAR(25) NULL DEFAULT NULL,
  `demanda` VARCHAR(45) NULL DEFAULT NULL,
  `celular` VARCHAR(25) NULL DEFAULT NULL,
  `nascimento` DATE NULL DEFAULT NULL,
  `status` VARCHAR(12) NULL DEFAULT NULL,
  `fk_contrato` INT NOT NULL,
  `fk_cargo` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Colaborador_Contrato1_idx` (`fk_contrato` ASC) VISIBLE,
  INDEX `fk_Usuario_Acesso1_idx` (`fk_cargo` ASC) VISIBLE,
  CONSTRAINT `fk_Colaborador_Contrato1`
    FOREIGN KEY (`fk_contrato`)
    REFERENCES `contrato` (`id`),
  CONSTRAINT `fk_Usuario_Acesso1`
    FOREIGN KEY (`fk_cargo`)
    REFERENCES `cargo` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `usuario_x_of`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `usuario_x_of` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `dt_criacao` DATETIME NULL DEFAULT NULL,
  `fk_ordem_forn` INT NOT NULL,
  `fk_usuario` INT NOT NULL,
  `dt_exclusao` DATETIME NULL DEFAULT NULL,
  `status` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_historico_OF_ordem_forn1_idx` (`fk_ordem_forn` ASC) VISIBLE,
  INDEX `fk_historico_OF_Usuario1_idx` (`fk_usuario` ASC) VISIBLE,
  CONSTRAINT `fk_historico_OF_ordem_forn1`
    FOREIGN KEY (`fk_ordem_forn`)
    REFERENCES `ordem_forn` (`id`),
  CONSTRAINT `fk_historico_OF_Usuario1`
    FOREIGN KEY (`fk_usuario`)
    REFERENCES `usuario` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `tarefa_of`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tarefa_of` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `historia` VARCHAR(45) NULL,
  `sprint` VARCHAR(45) NULL,
  `dt_inclusao` DATETIME NULL,
  `dt_alteracao` DATETIME NULL,
  `quantidade` INT NULL,
  `artefato` VARCHAR(200) NULL,
  `num_tarefa` VARCHAR(45) NULL,
  `perfil` VARCHAR(45) NULL,
  `fk_situacao` INT NOT NULL,
  `fk_item_guia` INT NOT NULL,
  `fk_of_usuario` INT NOT NULL,
  INDEX `fk_tarefa_of_usuario_x_of1_idx` (`fk_of_usuario` ASC) VISIBLE,
  INDEX `fk_tarefa_of_item_guia1_idx` (`fk_item_guia` ASC) VISIBLE,
  INDEX `fk_tarefa_of_situacao1_idx` (`fk_situacao` ASC) VISIBLE,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_tarefa_of_usuario_x_of1`
    FOREIGN KEY (`fk_of_usuario`)
    REFERENCES `usuario_x_of` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tarefa_of_item_guia1`
    FOREIGN KEY (`fk_item_guia`)
    REFERENCES `item_guia` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tarefa_of_situacao1`
    FOREIGN KEY (`fk_situacao`)
    REFERENCES `situacao` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `teste` ;

-- -----------------------------------------------------
-- Table `mensagem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mensagem` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `corpo` VARCHAR(500) NULL DEFAULT NULL,
  `dt_criacao` DATETIME NULL DEFAULT NULL,
  `dt_expiracao` DATETIME NULL DEFAULT NULL,
  `tp_mensagem` VARCHAR(20) NULL DEFAULT NULL,
  `status` INT NULL DEFAULT NULL,
  `fk_responsavel` INT NULL DEFAULT NULL,
  `titulo` VARCHAR(45) NULL DEFAULT NULL,
  `fk_sigla` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_mensagem_usuario1_idx` (`fk_responsavel` ASC) VISIBLE,
  INDEX `fk_sigla_idx` (`fk_sigla` ASC) VISIBLE,
  CONSTRAINT `fk_mensagem_usuario1`
    FOREIGN KEY (`fk_responsavel`)
    REFERENCES `usuario` (`id`),
  CONSTRAINT `fk_sigla`
    FOREIGN KEY (`fk_sigla`)
    REFERENCES `sigla` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `usuario_x_mensagem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `usuario_x_mensagem` (
  `fk_usuario` INT NULL DEFAULT NULL,
  `fk_mensagem` INT NULL DEFAULT NULL,
  `dt_leitura` DATETIME NULL DEFAULT NULL,
  `id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  INDEX `fk_usuario_has_mensagem_mensagem1_idx` (`fk_mensagem` ASC) VISIBLE,
  INDEX `fk_usuario_has_mensagem_usuario1_idx` (`fk_usuario` ASC) VISIBLE,
  CONSTRAINT `fk_usuario_has_mensagem_mensagem1`
    FOREIGN KEY (`fk_mensagem`)
    REFERENCES `mensagem` (`id`),
  CONSTRAINT `fk_usuario_has_mensagem_usuario1`
    FOREIGN KEY (`fk_usuario`)
    REFERENCES `usuario` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `usuario_x_perfil`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `usuario_x_perfil` (
  `fk_usuario` INT NOT NULL,
  `fk_perfil` INT NOT NULL,
  `status` INT NULL DEFAULT NULL,
  `dt_criacao` DATE NULL DEFAULT NULL,
  `dt_exclusao` DATE NULL DEFAULT NULL,
  `id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  INDEX `fk_Colaborador_has_Perfil_Perfil1_idx` (`fk_perfil` ASC) VISIBLE,
  INDEX `fk_Colaborador_has_Perfil_Colaborador1_idx` (`fk_usuario` ASC) VISIBLE,
  CONSTRAINT `fk_Colaborador_has_Perfil_Colaborador1`
    FOREIGN KEY (`fk_usuario`)
    REFERENCES `usuario` (`id`),
  CONSTRAINT `fk_Colaborador_has_Perfil_Perfil1`
    FOREIGN KEY (`fk_perfil`)
    REFERENCES `perfil` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `usuario_x_sigla`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `usuario_x_sigla` (
  `fk_usuario` INT NOT NULL,
  `fk_sigla` INT NOT NULL,
  `status` INT NULL DEFAULT NULL,
  `dt_criacao` DATETIME NULL DEFAULT NULL,
  `dt_exclusao` DATETIME NULL DEFAULT NULL,
  `id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  INDEX `fk_usuario_has_sigla_sigla1_idx` (`fk_sigla` ASC) VISIBLE,
  INDEX `fk_usuario_has_sigla_usuario1_idx` (`fk_usuario` ASC) VISIBLE,
  CONSTRAINT `fk_usuario_has_sigla_sigla1`
    FOREIGN KEY (`fk_sigla`)
    REFERENCES `sigla` (`id`),
  CONSTRAINT `fk_usuario_has_sigla_usuario1`
    FOREIGN KEY (`fk_usuario`)
    REFERENCES `usuario` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
