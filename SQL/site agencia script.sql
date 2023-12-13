CREATE DATABASE id_siteagencia;

USE id_siteagencia;

CREATE TABLE IF NOT EXISTS cadastro (
	id_cliente SET ('1') PRIMARY KEY NOT NULL,
    nome_cliente TEXT(30) NOT NULL,
    cpf_cliente VARCHAR(11) NOT NULL,
    num_cliente INT NOT NULL,
    email_cliente TEXT NOT NULL,
    cidade_cliente TEXT NOT NULL,
    uf_cliente TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS contato (
	id_pergunta SET ('1') PRIMARY KEY,
    email_pergunta TEXT NOT NULL,
    duvida_pergunta TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS administrador (
	id_administrador SET ('1') PRIMARY KEY NOT NULL,
    id_questions VARCHAR(50) NOT NULL,
    id_email TEXT NOT NULL,
    CONSTRAINT fk_administrador_cliente FOREIGN KEY(id_administrador) REFERENCES cadastro
);

