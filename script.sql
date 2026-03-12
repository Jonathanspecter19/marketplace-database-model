CREATE DATABASE marketplace;
USE marketplace;

-- CLIENTE
CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20),
    endereco VARCHAR(200)
);

-- VENDEDOR
CREATE TABLE vendedor (
    id_vendedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20)
);

-- CATEGORIA (NOVA)
CREATE TABLE categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    descricao VARCHAR(200)
);

-- PRODUTO
CREATE TABLE produto (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    estoque INT,
    id_vendedor INT,
    id_categoria INT,
    
    FOREIGN KEY (id_vendedor) REFERENCES vendedor(id_vendedor),
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);

-- PEDIDO
CREATE TABLE pedido (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE,
    status VARCHAR(50),
    
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-- PEDIDO ITEM
CREATE TABLE pedido_item (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_produto INT,
    quantidade INT,
    preco_unitario DECIMAL(10,2),
    
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);

-- PAGAMENTO
CREATE TABLE pagamento (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    valor DECIMAL(10,2),
    metodo VARCHAR(50),
    status VARCHAR(50),
    
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido)
);

-- ENTREGA (NOVA EVOLUÇÃO)
CREATE TABLE entrega (
    id_entrega INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    endereco VARCHAR(200),
    status VARCHAR(50),
    data_envio DATE,
    data_entrega DATE,
    
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido)
);

-- AVALIACAO (NOVA EVOLUÇÃO)
CREATE TABLE avaliacao (
    id_avaliacao INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_produto INT,
    nota INT,
    comentario VARCHAR(300),
    data_avaliacao DATE,
    
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);