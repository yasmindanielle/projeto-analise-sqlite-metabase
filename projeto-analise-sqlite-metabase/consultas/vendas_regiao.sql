-- Desempenho por Região

SELECT 
    c.cidade,
	CASE 
  WHEN c.cidade = 'São Paulo' THEN 'SP'
  WHEN c.cidade = 'Rio de Janeiro' THEN 'RJ'
  WHEN c.cidade = 'Belo Horizonte' THEN 'MG'
  ELSE c.cidade
END AS cidade_sigla,
    COUNT(p.id) AS total_pedidos
FROM pedidos p
JOIN clientes c ON c.id = p.id_cliente
GROUP BY c.cidade
ORDER BY total_pedidos DESC;
