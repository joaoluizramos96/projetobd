create database Projeto_Aluguel_Vestuario;
USE Projeto_Aluguel_Vestuario;

CREATE TABLE Cliente (
	nome VARCHAR(50),
	sexo CHAR(1),
	telefone VARCHAR(11),
	telefone1 VARCHAR(11),
	telefone2 VARCHAR(11),
	telefone3 VARCHAR(11),
	telefone4 VARCHAR(11),
	email VARCHAR(30),
	CPF INTEGER PRIMARY KEY
);

CREATE TABLE Funcionario (
	cod_func INTEGER PRIMARY KEY,
	nome VARCHAR(60),
	cargo VARCHAR(20)
);


CREATE TABLE Aluguel (
	data_alug DATETIME PRIMARY KEY,
	cod_func INTEGER,
	cod_item INTEGER,
	CPF INTEGER,
	estado VARCHAR(15),
	FOREIGN KEY(cod_func) REFERENCES Funcionario (cod_func),
	FOREIGN KEY(CPF) REFERENCES Cliente (CPF)
);

CREATE TABLE Entrega (
	cod_item INTEGER,
	CPF INTEGER,
	estado VARCHAR(15),
	cod_func INTEGER,
	data_ent DATETIME PRIMARY KEY,
    dias_alug int,
	FOREIGN KEY(cod_func) REFERENCES Funcionario (cod_func),
	FOREIGN KEY(CPF) REFERENCES Cliente (CPF)
);

CREATE TABLE Item (
	cod_item INTEGER PRIMARY KEY,
	tamanho VARCHAR(2),
	titulo VARCHAR(10),
	marca VARCHAR(15),
	estado VARCHAR(15),
    valor_diario DOUBLE
);

CREATE TABLE endereco_cliente (
	numero INTEGER,
	rua VARCHAR(60),
	bairro VARCHAR(30),
	cidade VARCHAR(30),
	CPF INTEGER,
	FOREIGN KEY(CPF) REFERENCES Cliente (CPF)
);

CREATE TABLE endereco_funcionario (
	numero INTEGER,
	rua VARCHAR(60),
	bairro VARCHAR(30),
	cidade VARCHAR(30),
	cod_func INTEGER,
	FOREIGN KEY(cod_func) REFERENCES Funcionario (cod_func)
);
