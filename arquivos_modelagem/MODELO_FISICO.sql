-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

CREATE DATABASE exemplo;

USE exemplo;

CREATE TABLE produtos (
id_produto int PRIMARY KEY AUTO_INCREMENT,
preco_produto decimal(10,2),
nome_produto varchar(255),
id_tipo int
);

CREATE TABLE tipo_produtos (
id_tipo int PRIMARY KEY AUTO_INCREMENT,
tipo_produto varchar(255)
);

ALTER TABLE produtos ADD FOREIGN KEY(id_tipo) REFERENCES tipo_produtos (id_tipo);
