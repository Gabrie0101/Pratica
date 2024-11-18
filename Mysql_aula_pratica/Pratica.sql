CREATE DATABASE pratica_gabriel;

USE pratica_gabriel;

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(200) NOT NULL,
    email_cliente VARCHAR(200) NOT NULL,
    telefone_cliente VARCHAR(20)
);

CREATE TABLE colaboradores (
    id_colaborador INT PRIMARY KEY AUTO_INCREMENT,
    nome_colaborador VARCHAR(200) NOT NULL,
    email_colaborador VARCHAR(200) NOT NULL
);

CREATE TABLE chamados (
    id_chamado INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    id_colaborador INT,
    descricao_chamado VARCHAR (200) NOT NULL ,
    criticidade_chamados ENUM('baixa', 'media', 'alta'),
    status_chamados ENUM('aberto', 'em_andamento', 'resolvido') DEFAULT 'aberto',
    data_abertura_chamados DATE,
    id_colaborador_chamados INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_colaborador) REFERENCES colaboradores(id_colaborador)
);