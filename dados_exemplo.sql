-- Inserindo clientes

INSERT INTO cliente (nome, email, telefone, endereco) VALUES
('Ana Souza', 'ana@email.com', '11999999999', 'São Paulo'),
('Carlos Lima', 'carlos@email.com', '11888888888', 'Campinas');


-- Inserindo vendedores

INSERT INTO vendedor (nome, email, telefone) VALUES
('Loja Tech', 'contato@lojatech.com', '11977777777'),
('Mega Store', 'vendas@megastore.com', '11966666666');


-- Inserindo categorias

INSERT INTO categoria (nome, descricao) VALUES
('Eletrônicos', 'Produtos eletrônicos'),
('Acessórios', 'Acessórios diversos');


-- Inserindo produtos

INSERT INTO produto (nome, preco, estoque, id_vendedor, id_categoria) VALUES
('Mouse Gamer', 120.00, 50, 1, 2),
('Teclado Mecânico', 350.00, 30, 1, 2);
