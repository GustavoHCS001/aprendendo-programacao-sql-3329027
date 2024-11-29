-- Para a tabela "invoices", crie uma consulta que retorne o país e a soma das compras realizadas nele, bem como o valor da compra mínima e máxima, a quantidade de compras realizadas e o ticket médio de cada compra.
SELECT
BillingCountry as País,
SUM(Total) as 'Soma Compras',
COUNT(Total) as 'Quantidade Compras Realizadas',
MIN(Total) as 'Menor Compra',
MAX(Total) as 'Maior Compra',
ROUND(AVG(Total),2) as Média
FROM
invoices
WHERE 
BillingCountry = 'Austria';