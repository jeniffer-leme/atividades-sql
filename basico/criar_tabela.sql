--Criar uma tabela simples (CREATE TABLE) com 3 colunas
CREATE DATABASE LOJA;

USE LOJA;

CREATE TABLE Cliente
(
    idCliente INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL, 
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    PRIMARY KEY(idCliente)
);

CREATE TABLE Produto
(
    idProduto INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    PRIMARY KEY(idProduto)
);

CREATE TABLE Pedido
(
    idPedido INT AUTO_INCREMENT,
    dataPedido DATE NOT NULL,
    total DECIMAL(10,2),
    idCliente INT,
    PRIMARY KEY(idPedido),
    CONSTRAINT fk_cliente_pedido
        FOREIGN KEY (idCliente)
        REFERENCES Cliente(idCliente)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
