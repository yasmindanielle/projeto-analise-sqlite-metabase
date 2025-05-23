-- Faturamento Mensal

SELECT 
    strftime('%Y-%m', p.data_pedido) AS "Mês",
    ROUND(SUM(ip.quantidade * pr.preco_unitario), 2) AS Faturamento
FROM pedidos p
JOIN itens_pedido ip ON p.id = ip.id_pedido
JOIN produtos pr ON pr.id = ip.id_produto
GROUP BY "Mês"
ORDER BY "Mês";

