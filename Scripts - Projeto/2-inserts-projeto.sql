INSERT INTO Funcionario (cod_func, nome, cargo) VALUES (1011, 'João Luiz Ramos', 'Gerente');
INSERT INTO Funcionario (cod_func, nome, cargo) VALUES (1012, 'Maria Eduarda', 'Balconista');
INSERT INTO Funcionario (cod_func, nome, cargo) VALUES (1013, 'Milena Santos', 'Contadora');
INSERT INTO Funcionario (cod_func, nome, cargo) VALUES (1014, 'Cláudia Soares', 'Gestora de RH');

INSERT INTO endereco_funcionario (numero, rua, bairro, cidade, cod_func) VALUES (49, 'Rua Barão de Sirinhaém', 'Vila Rica', 'Ribeirão', 1011);
INSERT INTO endereco_funcionario (numero, rua, bairro, cidade, cod_func) VALUES (37, 'Rua Castro Alves', 'Ferroviária', 'Ribeirão', 1012);
INSERT INTO endereco_funcionario (numero, rua, bairro, cidade, cod_func) VALUES (120, 'Rua Dom Casmurro', 'Centro', 'Escada', 1013);
INSERT INTO endereco_funcionario (numero, rua, bairro, cidade, cod_func) VALUES (21, 'Rua Abdias Santos', 'Cohab', 'Palmares', 1014);

INSERT INTO Cliente (nome, sexo, telefone, email, CPF) VALUES ('Silvio Almeida', 'M', '08140028922', 'silvio_almeida@email.com', 123456789);
INSERT INTO Cliente (nome, sexo, telefone, email, CPF) VALUES ('Jéssica Luana', 'F', '08195847285', 'jessica_luana40@email.com', 987654321);
INSERT INTO Cliente (nome, sexo, telefone, email, CPF) VALUES ('Marcos Andrade', 'M', '08143242353', 'andrade-marcos@email.com', 398273859);

INSERT INTO endereco_cliente (numero, rua, bairro, cidade, CPF) VALUES (19, 'Rua Dona Fortunata', 'Centro', 'Ribeirão', 123456789);
INSERT INTO endereco_cliente (numero, rua, bairro, cidade, CPF) VALUES (35, 'Rua Benedito Brasil', 'Eldorado', 'Ribeirão', 987654321);
INSERT INTO endereco_cliente (numero, rua, bairro, cidade, CPF) VALUES (49, 'Travessa Buenos Aires', 'Novo Horizonte', 'Palmares', 398273859);

INSERT INTO Item (cod_item, tamanho, titulo, marca, estado, valor_diario) VALUES (4023, 'M', 'Moletom', 'Adidas', 'Bom', 34.99);
INSERT INTO Item (cod_item, tamanho, titulo, marca, estado, valor_diario) VALUES (4024, 'P', 'Vestido', 'Prada', 'Bom', 39.99);
INSERT INTO Item (cod_item, tamanho, titulo, marca, estado, valor_diario) VALUES (4025, 'G', 'Smoking', 'Moschino', 'Ótimo', 109.99);

INSERT INTO Aluguel (data_alug, cod_func, cod_item, CPF, estado) VALUES ('2020-08-07 15:00:00', 1012, 4023, 123456789, "Bom");
INSERT INTO Aluguel (data_alug, cod_func, cod_item, CPF, estado) VALUES ('2020-08-08 09:00:00', 1012, 4024, 987654321, "Bom");
INSERT INTO Aluguel (data_alug, cod_func, cod_item, CPF, estado) VALUES ('2020-08-05 11:00:00', 1012, 4025, 398273859, "Ótimo");

INSERT INTO Entrega (cod_item, dias_alug, CPF, estado, cod_func, data_ent) VALUES (4023, 7, 123456789, 'Bom', 1012, '2020-08-14 15:00:00');
INSERT INTO Entrega (cod_item, dias_alug, CPF, estado, cod_func, data_ent) VALUES (4024, 1, 987654321, 'Bom', 1012, '2020-08-09 09:00:00');
INSERT INTO Entrega (cod_item, dias_alug, CPF, estado, cod_func, data_ent) VALUES (4024, 5, 398273859, 'Ótimo', 1012, '2020-08-10 11:00:00');