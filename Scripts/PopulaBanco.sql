
-- Popula tabela de contratos
INSERT INTO contrato (id, descricao) VALUES ('1', 'Banco do Brasil');

-- Popula tabela de acessos
INSERT INTO acesso (id, descricao) VALUES ('1', 'Gestor');
INSERT INTO acesso (id, descricao) VALUES ('2', 'Admin');
INSERT INTO acesso (id, descricao) VALUES ('3', 'Colaborador');

-- Popula tabela de usuários
INSERT INTO usuario (id, nome, email, cpf, senha, codigo_re, codigo_bb, 
                    empresa, demanda, celular, nascimento, status, fk_contrato, fk_acesso) 
    VALUES ('1', 'Edson de sousa silva', 'edson.sousa@qintess.com', '02918066192', '123456', 
                're039648', '451351', 'Qintess', '114279', '61995106096', '1999-08-23', 'ATIVO', 1, 1);

