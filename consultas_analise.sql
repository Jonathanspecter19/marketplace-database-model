-- Total de vendas por vendedor

SELECT v.nome_vendedor,
SUM(pi.quantidade * pi.preco_unitario) AS total_vendas
FROM vendedor v
JOIN produto p ON v.id_vendedor = p.id_vendedor
JOIN pedido_item pi ON p.id_produto = pi.id_produto
GROUP BY v.nome_vendedor;


-- Produtos mais vendidos

SELECT p.nome_produto,
SUM(pi.quantidade) AS total_vendido
FROM produto p
JOIN pedido_item pi ON p.id_produto = pi.id_produto
GROUP BY p.nome_produto
ORDER BY total_vendido DESC;


-- Total de pedidos por cliente

SELECT c.nome_cliente,
COUNT(p.id_pedido) AS total_pedidos
FROM cliente c
JOIN pedido p ON c.id_cliente = p.id_cliente
GROUP BY c.nome_cliente;
