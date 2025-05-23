-- Campeões de Vendas vs Faturamento

SELECT 
    pr.nome AS "Produto",
    SUM(ip.quantidade) AS "Total Vendido",
	SUM(pr.preco_unitario) AS "Faturamento"
FROM itens_pedido ip
JOIN produtos pr ON pr.id = ip.id_produto
GROUP BY "Produto"
ORDER BY "Total Vendido" DESC
LIMIT 5;

