-- Categorias de Produtos mais Lucrativas

SELECT 
    pr.categoria as "Categoria",
    ROUND(SUM(ip.quantidade * pr.preco_unitario), 2) AS "Faturamento"
FROM itens_pedido ip
JOIN produtos pr ON pr.id = ip.id_produto
GROUP BY pr.categoria
ORDER BY "Faturamento" DESC;

