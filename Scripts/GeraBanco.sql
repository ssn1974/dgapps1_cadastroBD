-- TODO: Trocar nome da tabela Usuário para Funcionário

CREATE SCHEMA IF NOT EXISTS teste DEFAULT CHARACTER SET utf8mb4 ;
USE teste;

-- -----------------------------------------------------
-- Tabela Contrato
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Contrato (
  id INT NOT NULL,
  descricao VARCHAR(45) NULL,
  PRIMARY KEY (id))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Tabela Acesso
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Acesso (
  id INT NOT NULL,
  descricao VARCHAR(12) NULL,
  PRIMARY KEY (id))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Tabela Usuario
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Usuario (
  id INT NOT NULL,
  nome VARCHAR(80) NULL,
  email VARCHAR(80) NULL,
  cpf VARCHAR(12) NULL,
  senha VARCHAR(80) NULL,
  codigo_re VARCHAR(12) NULL,
  codigo_bb VARCHAR(12) NULL,
  empresa VARCHAR(25) NULL,
  demanda INT NULL,
  celular VARCHAR(25) NULL,
  nascimento DATE NULL,
  status VARCHAR(12) NULL,
  fk_contrato INT NOT NULL,
  fk_acesso INT NOT NULL,
  PRIMARY KEY (id),
  INDEX fk_Colaborador_Contrato1_idx (fk_contrato ASC) VISIBLE,
  INDEX fk_Usuario_Acesso1_idx (fk_acesso ASC) VISIBLE,
  CONSTRAINT fk_Colaborador_Contrato1
    FOREIGN KEY (fk_contrato)
    REFERENCES Contrato (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Usuario_Acesso1
    FOREIGN KEY (fk_acesso)
    REFERENCES Acesso (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Tabela Sigla
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Sigla (
  id INT NOT NULL,
  descricao VARCHAR(12) NULL,
  PRIMARY KEY (id))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Tabela Perfil
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Perfil (
  id INT NOT NULL,
  descricao VARCHAR(12) NULL,
  PRIMARY KEY (id))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Tabela Usuario_X_Sigla
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Usuario_X_Sigla (
  fk_usuario INT NOT NULL,
  fk_sigla INT NOT NULL,
  status INT NULL,
  dt_criacao DATE NULL,
  dt_exclusao DATE NULL,
  id INT NOT NULL,
  INDEX fk_Colaborador_has_Sigla_Sigla1_idx (fk_sigla ASC) VISIBLE,
  INDEX fk_Colaborador_has_Sigla_Colaborador1_idx (fk_usuario ASC) VISIBLE,
  PRIMARY KEY (id),
  CONSTRAINT fk_Colaborador_has_Sigla_Colaborador1
    FOREIGN KEY (fk_usuario)
    REFERENCES Usuario (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Colaborador_has_Sigla_Sigla1
    FOREIGN KEY (fk_sigla)
    REFERENCES Sigla (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Tabela Usuario_X_Perfil
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Usuario_X_Perfil (
  fk_usuario INT NOT NULL,
  fk_perfil INT NOT NULL,
  status INT NULL,
  dt_criacao DATE NULL,
  dt_exclusao DATE NULL,
  id INT NOT NULL,
  INDEX fk_Colaborador_has_Perfil_Perfil1_idx (fk_perfil ASC) VISIBLE,
  INDEX fk_Colaborador_has_Perfil_Colaborador1_idx (fk_usuario ASC) VISIBLE,
  PRIMARY KEY (id),
  CONSTRAINT fk_Colaborador_has_Perfil_Colaborador1
    FOREIGN KEY (fk_usuario)
    REFERENCES Usuario (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Colaborador_has_Perfil_Perfil1
    FOREIGN KEY (fk_perfil)
    REFERENCES Perfil (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;