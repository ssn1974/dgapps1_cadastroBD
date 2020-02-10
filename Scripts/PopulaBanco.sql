/*
    Esse Script popula as seguintes tabelas:
    -> Contratos
    -> Cargos
    -> Perfil
    -> Siglas
    -> Usuario
    -> Usuario_x_Perfil
    -> usuario_x_sigla
    -> Situação

*/


-- Popula tabela de contratos
INSERT INTO contrato (descricao) VALUES ('Banco do Brasil');

-- Popula tabela de cargos
INSERT INTO cargo (descricao) VALUES ('Gestor');
INSERT INTO cargo (descricao) VALUES ('Admin');
INSERT INTO cargo (descricao) VALUES ('Colaborador');

-- Popula tabela de Perfil
INSERT INTO PERFIL(descricao) VALUES('Operacao');
INSERT INTO PERFIL(descricao) VALUES('Baixa');
INSERT INTO PERFIL(descricao) VALUES('Alta');
INSERT INTO PERFIL(descricao) VALUES('Mobile');
INSERT INTO PERFIL(descricao) VALUES('UX');

-- Popula tabela de siglas

INSERT INTO SIGLA(descricao) VALUES('OBR');
INSERT INTO SIGLA(descricao) VALUES('AFO');
INSERT INTO SIGLA(descricao) VALUES('IAT');
INSERT INTO SIGLA(descricao) VALUES('DEB');
INSERT INTO SIGLA(descricao) VALUES('SOL');
INSERT INTO SIGLA(descricao) VALUES('STO');
INSERT INTO SIGLA(descricao) VALUES('CBR');
INSERT INTO SIGLA(descricao) VALUES('GAP');
INSERT INTO SIGLA(descricao) VALUES('ACC');
INSERT INTO SIGLA(descricao) VALUES('CNL');
INSERT INTO SIGLA(descricao) VALUES('GRL');
INSERT INTO SIGLA(descricao) VALUES('GAB');
INSERT INTO SIGLA(descricao) VALUES('TFA');
INSERT INTO SIGLA(descricao) VALUES('DSH');
INSERT INTO SIGLA(descricao) VALUES('CRS');
INSERT INTO SIGLA(descricao) VALUES('DPO');
INSERT INTO SIGLA(descricao) VALUES('GCO');
INSERT INTO SIGLA(descricao) VALUES('CRB');
INSERT INTO SIGLA(descricao) VALUES('HBK');
INSERT INTO SIGLA(descricao) VALUES('RCA');
INSERT INTO SIGLA(descricao) VALUES('DSP');
INSERT INTO SIGLA(descricao) VALUES('ICC');
INSERT INTO SIGLA(descricao) VALUES('EFN');
INSERT INTO SIGLA(descricao) VALUES('ACH');
INSERT INTO SIGLA(descricao) VALUES('CBO');
INSERT INTO SIGLA(descricao) VALUES('CMN');
INSERT INTO SIGLA(descricao) VALUES('MTN');
INSERT INTO SIGLA(descricao) VALUES('PLG');
INSERT INTO SIGLA(descricao) VALUES('OnBoarding');
INSERT INTO SIGLA(descricao) VALUES('HK');
INSERT INTO SIGLA(descricao) VALUES('TFO');

-- Popula tabela de Usuários e Perfil


INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('ALYSSON SANTOS VIEIRA', 'alysson.vieira@resourceit.com', '00349878196', sha2('RE037079', 256), 'RE037079', 'C1249858', 'Resource', '114279', '(61) 98595-3579', '1988-04-17', 'Ativo', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (1,3,1,curdate(), null);
INSERT INTO usuario_x_sigla(fk_usuario, fk_sigla, status, dt_criacao, dt_exclusao) values (1, 9, 1,curdate(), null);
INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('ANA CLAUDIA DE SOUZA', 'ana.souza@resourceit.com', '00530006170', sha2('RE037259', 256), 'RE037259', 'C1294105', 'Resource', '114285', '(61) 98599-5645', '1983-03-21', 'Ativo', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (2,2,1,curdate(), null);
INSERT INTO usuario_x_sigla(fk_usuario, fk_sigla, status, dt_criacao, dt_exclusao) values (2, 13, 1,curdate(), null);
INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('BRUNO AURELIO TEIXEIRA MARTINS', 'bruno.martins@resourceit.com', '92327338700', sha2('RE036949', 256), 'RE036949', 'C1000480', 'Resource', '114280', '(61) 98170-4299', '1968-10-23', 'Ativo', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (3,3,1,curdate(), null);
INSERT INTO usuario_x_sigla(fk_usuario, fk_sigla, status, dt_criacao, dt_exclusao) values (3, 4, 1,curdate(), null);
INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('BRYAN DE HOLANDA FERNANDES', 'bryan.fernandes@resourceit.com', '03732220176', sha2('RE037146', 256), 'RE037146', 'C1297795', 'Resource', '114279', '(61) 98511-6393', '1991-10-29', 'Ativo', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (4,4,1,curdate(), null);
INSERT INTO usuario_x_sigla(fk_usuario, fk_sigla, status, dt_criacao, dt_exclusao) values (4, 28, 1,curdate(), null);
INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('CAMILA BEZERRA GUALBERTO', 'camila.gualberto@resourceit.com', '32577682816', sha2('RE033567', 256), 'RE033567', 'C1139468', 'Resource', '999999', '(11) 97049-6266', '1984-07-21', 'Ativo', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (5,1,1,curdate(), null);

INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('CARLOS HENRIQUE MORAIS DE OLIVEIRA', 'carlos.oliveira@resourceit.com', '04395753116', sha2('RE039579', 256), 'RE039579', 'C1291391', 'Resource', '114281', '(61)98160-2844', '1996-02-13', 'Ativo', 1, 3);

INSERT INTO usuario_x_sigla(fk_usuario, fk_sigla, status, dt_criacao, dt_exclusao) values (6, 26, 1,curdate(), null);
INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('ANA CLAUDIA GUILHERME DIAS SILVA', 'ana.dias@resourceit.com', '77041607100', sha2('RE039598', 256), 'RE039598', 'C1312548', 'Resource', '999999', '(61)98447-1330', '1980-01-26', 'Ativo', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (7,1,1,curdate(), null);

INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('CLEBER CANDIDO LOPES', 'cleber.lopes@resourceit.com', '81754051634', sha2('RE037147', 256), 'RE037147', 'C1209278', 'Resource', '114281', '(61) 99216-0002', '1971-03-25', 'Ativo', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (8,3,1,curdate(), null);
INSERT INTO usuario_x_sigla(fk_usuario, fk_sigla, status, dt_criacao, dt_exclusao) values (8, 26, 1,curdate(), null);
INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('CLEIFANE PAULINA DA CRUZ', 'cleifane.cruz@resourceit.com', '01201630630', sha2('RE037285', 256), 'RE037285', 'C1000481', 'Resource', '114286', '(61) 98116-3343', '1976-08-12', 'Ativo', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (9,3,1,curdate(), null);
INSERT INTO usuario_x_sigla(fk_usuario, fk_sigla, status, dt_criacao, dt_exclusao) values (9, 1, 1,curdate(), null);
INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('MARIA CRISTINA COSTA CORREA', 'maria.correa@resourceit.com', '37685929953', sha2('RE036948', 256), 'RE036948', 'C1241891', 'Resource', '114282', '(48) 99974-0309', '1957-04-11', 'Ativo', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (10,3,1,curdate(), null);
INSERT INTO usuario_x_sigla(fk_usuario, fk_sigla, status, dt_criacao, dt_exclusao) values (10, 12, 1,curdate(), null);
INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('DANIEL EDUARDO VERISSIMO DE CASTRO SANCHES DABADIA', '', '', sha2('RE037107', 256), 'RE037107', 'C1293020', 'Resource', '', '', '2222-01-22','Desligado', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (11,4,1,curdate(), null);

INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('ERIKA ALMEIDA DE ESPINDOLA', 'erika.espindola@resourceit.com', '06464496131', sha2('RE037148', 256), 'RE037148', 'C1297814', 'Resource', '114282', '(61) 99906-1910', '1997-11-01', 'Ativo', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (12,2,1,curdate(), null);
INSERT INTO usuario_x_sigla(fk_usuario, fk_sigla, status, dt_criacao, dt_exclusao) values (12, 9, 1,curdate(), null);
INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('FRANCISCO EVERARDO SOUSA DE OLIVEIRA', 'francisco.oliveira@resourceit.com', '06810606467', sha2('RE037267', 256), 'RE037267', 'C1294032', 'Resource', '114279', '(61) 98604-5251', '1986-01-21', 'Ativo', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (13,2,1,curdate(), null);
INSERT INTO usuario_x_sigla(fk_usuario, fk_sigla, status, dt_criacao, dt_exclusao) values (13, 30, 1,curdate(), null);
INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('GERSON LUIZ STANDKE', 'gerson.standke@resourceit.com', '60411198904', sha2('RE030911', 256), 'RE030911', 'C1310568', 'Resource', '114280', '(61)98374-3333', '1966-07-04', 'Ativo', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (14,3,1,curdate(), null);
INSERT INTO usuario_x_sigla(fk_usuario, fk_sigla, status, dt_criacao, dt_exclusao) values (14, 9, 1,curdate(), null);
INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('GUILHERME HENRIQUE MARTINS DA CRUZ', 'guilherme.cruz@resourceit.com', '38628040110', sha2('RE037265', 256), 'RE037265', 'C1277428', 'Resource', '114280', '(61) 98205-5571', '1985-12-18', 'Desligado', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (15,2,1,curdate(), null);
INSERT INTO usuario_x_sigla(fk_usuario, fk_sigla, status, dt_criacao, dt_exclusao) values (15, 5, 1,curdate(), null);
INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('HELENA MARIA DE SOUZA', 'helena.souza@resourceit.com', '38628040110', sha2('RE037142', 256), 'RE037142', 'C1147250', 'Resource', '114286', '(61) 99962-6588', '1966-04-29', 'Ativo', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (16,3,1,curdate(), null);
INSERT INTO usuario_x_sigla(fk_usuario, fk_sigla, status, dt_criacao, dt_exclusao) values (16, 26, 1,curdate(), null);
INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('CARLOS HENRICO AMARAL DE ASSIS', '', '', sha2('RE037983', 256), 'RE037983', 'C1299702', 'Resource', '', '', '2222-01-22','Desligado', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (17,5,1,curdate(), null);

INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('MARCOS HUMBERTO ALVES FELIPE', 'marcos.felipe@resourceit.com', '', sha2('RE039614', 256), 'RE039614', '', 'Resource', '114287', '', '2222-01-22','Ativo', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (18,2,1,curdate(), null);

INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('JOÃO GALVÃO FILHO', 'joao.galvao@resourceit.com>', '51655675168', sha2('RE037009', 256), 'RE037009', 'C1059121', 'Resource', '114287', '(61) 98117-9613', '1970-01-13', 'Ativo', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (19,2,1,curdate(), null);
INSERT INTO usuario_x_sigla(fk_usuario, fk_sigla, status, dt_criacao, dt_exclusao) values (19, 1, 1,curdate(), null);
INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('JORGE PEREIRA SILVA', 'jorge.pereira@resourceit.com', '27422879220', sha2('RE036950', 256), 'RE036950', 'C1154157', 'Resource', '114282', '(61) 99666-5672', '1964-07-24', 'Ativo', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (20,3,1,curdate(), null);
INSERT INTO usuario_x_sigla(fk_usuario, fk_sigla, status, dt_criacao, dt_exclusao) values (20, 25, 1,curdate(), null);
INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('LAURA RAMOS PIMENTEL PINHO', '', '', sha2('RE038271', 256), 'RE038271', 'C1300374', 'Resource', '', '', '2222-01-22','Desligado', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (21,5,1,curdate(), null);

INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('LEONARDO PEREIRA DA SILVA', 'leonardo.silva@resource.com', '06082748107', sha2('RE039447', 256), 'RE039447', 'C1297929', 'Resource', '114282', '(61)98100-0093', '1997-04-29', 'Ativo', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (22,2,1,curdate(), null);
INSERT INTO usuario_x_sigla(fk_usuario, fk_sigla, status, dt_criacao, dt_exclusao) values (22, 12, 1,curdate(), null);
INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('LUCAS SAVIO DOS SANTOS', 'lucas.savio@resourceit.com', '01307952160', sha2('RE037044', 256), 'RE037044', 'C1278101', 'Resource', '114287', '(61) 99509-442', '1987-01-23', 'Ativo', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (23,2,1,curdate(), null);
INSERT INTO usuario_x_sigla(fk_usuario, fk_sigla, status, dt_criacao, dt_exclusao) values (23, 29, 1,curdate(), null);
INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('LUKAS PEREIRA DE ALMEIDA', 'lukas.almeida@resourceit.com', '03971292119', sha2('RE037145', 256), 'RE037145', 'C1297671', 'Resource', '114285', '(61) 98519-4193', '1997-11-17', 'Ativo', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (24,2,1,curdate(), null);
INSERT INTO usuario_x_sigla(fk_usuario, fk_sigla, status, dt_criacao, dt_exclusao) values (24, 13, 1,curdate(), null);
INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('MARCIA RODRIGUES DE CARVALHO', '', '', sha2('RE035862', 256), 'RE035862', 'C1297452', 'Resource', '', '', '2222-01-22','Desligado', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (25,3,1,curdate(), null);

INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('MARCOS RAMOS DE SOUSA JUNIOR', 'marcos.sousa@resourceit.com', '93701900159', sha2('RE037145', 256), 'RE037145', 'C1278147', 'Resource', '114279', '(61) 99213-5148', '1980-10-10', 'Ativo', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (26,3,1,curdate(), null);
INSERT INTO usuario_x_sigla(fk_usuario, fk_sigla, status, dt_criacao, dt_exclusao) values (26, 9, 1,curdate(), null);
INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('MAYARA VERONICA OLIVEIRA SILVA', 'mayara.silva@resource.com', '03524435106', sha2('RE039596', 256), 'RE039596', 'C1281963', 'Resource', '115634', '(61)982250387', '1988-01-23', 'Ativo', 1, 3);

INSERT INTO usuario_x_sigla(fk_usuario, fk_sigla, status, dt_criacao, dt_exclusao) values (27, 7, 1,curdate(), null);
INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('NAIARA MOURA PIRES', 'naiara.pires@resourceit.com', '03704476110', sha2('RE039418', 256), 'RE039418', 'C1292832', 'Resource', '114279', '(61)98202-5652', '1991-11-16', 'Ativo', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (28,2,1,curdate(), null);
INSERT INTO usuario_x_sigla(fk_usuario, fk_sigla, status, dt_criacao, dt_exclusao) values (28, 9, 1,curdate(), null);
INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('ANTONIO CARLOS MORO PALAZZO', 'antonio.palazzo@resourceit.com', '20736630015', sha2('RE037583', 256), 'RE037583', 'C1098313', 'Resource', '114282', '(61) 9557-9529', '1956-01-14', 'Ativo', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (29,3,1,curdate(), null);
INSERT INTO usuario_x_sigla(fk_usuario, fk_sigla, status, dt_criacao, dt_exclusao) values (29, 30, 1,curdate(), null);
INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('DANIEL DE SOUZA PEIXOTO', 'daniel.peixoto@resourceit.com', '71593926120', sha2('RE037083', 256), 'RE037083', 'C1241390', 'Resource', '114279', '(61) 98440-2006', '1982-09-28', 'Ativo', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (30,3,1,curdate(), null);
INSERT INTO usuario_x_sigla(fk_usuario, fk_sigla, status, dt_criacao, dt_exclusao) values (30, 9, 1,curdate(), null);
INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('RICARDO PIANOWSKI DE MORAES', 'ricardo.pianowski@resourceit.com', '32190034949', sha2('RE037040', 256), 'RE037040', 'C1115007', 'Resource', '114281', '(61) 98166-5212', '1959-07-25', 'Ativo', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (31,3,1,curdate(), null);
INSERT INTO usuario_x_sigla(fk_usuario, fk_sigla, status, dt_criacao, dt_exclusao) values (31, 26, 1,curdate(), null);
INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('RICARDO LUIZ GUIMARAES', 'ricardo.guimaraes@resourceit.com', '39177157672', sha2('RE038441', 256), 'RE038441', 'C1101744', 'Resource', '114280', '(31) 98468-9920', '1961-05-13', 'Ativo', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (32,3,1,curdate(), null);
INSERT INTO usuario_x_sigla(fk_usuario, fk_sigla, status, dt_criacao, dt_exclusao) values (32, 5, 1,curdate(), null);
INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('SIDNEY SERGIO LEITE DO NASCIMENTO', 'sidney.nascimento@resourceit.com', '55980350144', sha2('RE037098', 256), 'RE037098', 'C1153211', 'Resource', '999999', '(61) 98450-6653', '1974-11-19', 'Ativo', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (33,1,1,curdate(), null);

INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('THIAGO VAZ DE ALMEIDA', 'thiago.vaz@resourceit.com', '00481015086', sha2('RE037108', 256), 'RE037108', 'C1233178', 'Resource', '114281', '(61) 99977-1558', '1990-03-04', 'Ativo', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (34,3,1,curdate(), null);
INSERT INTO usuario_x_sigla(fk_usuario, fk_sigla, status, dt_criacao, dt_exclusao) values (34, 26, 1,curdate(), null);
INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('THIERRI SANTANA MARTINS', 'thierri.martins@resourceit.com', '06038345159', sha2('RE039399', 256), 'RE039399', 'C1311280', 'Resource', '115634', '(61)92000-3040', '1996-05-30', 'Ativo', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (35,2,1,curdate(), null);
INSERT INTO usuario_x_sigla(fk_usuario, fk_sigla, status, dt_criacao, dt_exclusao) values (35, 17, 1,curdate(), null);
INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES('YUJI MOTOSHIMA', 'yuji.motoshima@resourceit.com', '02636243151', sha2('RE039398', 256), 'RE039398', 'C1283755', 'Resource', '114280', '(61) 98268-0230', '1995-04-22', 'Ativo', 1, 3);
INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values (36,3,1,curdate(), null);
INSERT INTO usuario_x_sigla(fk_usuario, fk_sigla, status, dt_criacao, dt_exclusao) values (36, 5, 1,curdate(), null);

-- Popula tabela de situações
INSERT INTO Situacao(descricao) VALUES('Conformidade Pagamento');
INSERT INTO Situacao(descricao) VALUES('Cancelada');
INSERT INTO Situacao(descricao) VALUES('Aceita');
INSERT INTO Situacao(descricao) VALUES('Entregue');
INSERT INTO Situacao(descricao) VALUES('Devolvida pela Fábrica');
INSERT INTO Situacao(descricao) VALUES('Em Execução');
INSERT INTO Situacao(descricao) VALUES('Entrega Validada');
INSERT INTO Situacao(descricao) VALUES('Concluída');


