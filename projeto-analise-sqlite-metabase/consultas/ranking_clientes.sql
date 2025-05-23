-- Ranking de Faturamento por Clientes

SELECT 
    c.nome AS "Cliente",
    ROUND(SUM(ip.quantidade * pr.preco_unitario), 2) AS "Faturamento"
FROM clientes c
JOIN pedidos p ON c.id = p.id_cliente
JOIN itens_pedido ip ON p.id = ip.id_pedido
JOIN produtos pr ON pr.id = ip.id_produto
GROUP BY "Cliente"
ORDER BY "Faturamento" DESC;
