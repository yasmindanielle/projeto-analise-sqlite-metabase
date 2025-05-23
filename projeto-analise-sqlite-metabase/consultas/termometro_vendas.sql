-- Termômetro de Vendas

SELECT 
   SUM(ip.quantidade) AS Faturamento
FROM pedidos p
JOIN itens_pedido ip ON p.id = ip.id_pedido
JOIN produtos pr ON pr.id = ip.id_produto
