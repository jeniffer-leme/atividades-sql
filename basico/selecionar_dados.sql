--Fazer uma consulta SELECT * FROM tabela.
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



INSERT INTO Cliente(nome, email, telefone) VALUES
("Adriana", "adriana@email.com", "99754-7412"),
("Rafael", "rafael@email.com", "99648-2489"),
("Fábio", "fabio@email.com", "99732-4512");

INSERT INTO Produto(nome, preco, estoque) VALUES
("Sabão", 14.7, 25),
("Refrigerante", 9.5, 18),
("Arroz", 24.3, 32),
("Chocolate", 6.7, 12);

INSERT INTO Pedido(dataPedido, total, idCliente) VALUES
('2025-07-02', 52.3, 1),
('2025-02-26', 112.6, 2);


SELECT * FROM Cliente;

SELECT * FROM Produto WHERE preco > 20;

SELECT * FROM Pedido WHERE idCliente = 1;
