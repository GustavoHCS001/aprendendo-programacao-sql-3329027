-- Crie uma consulta usando as tabelas "invoices" e "customers" cujo o resultado seja o total de gastos por cliente
SELECT 
cus.CustomerId AS id_cliente,
cus.FirstName AS nome,
SUM(inv.Total) AS 'Total gasto'
FROM
invoices AS inv
INNER JOIN customers AS cus ON inv.CustomerId = cus.CustomerId
GROUP BY id_cliente;
-- Na consulta anterior, insira um filtro para que apresente apenas os clientes que gastaram mais de R$30
SELECT 
cus.CustomerId AS id_cliente,
cus.FirstName AS nome,
SUM(inv.Total) AS 'Total gasto'
FROM
invoices AS inv
INNER JOIN customers AS cus ON inv.CustomerId = cus.CustomerId
GROUP BY id_cliente
HAVING SUM(inv.Total) >=40;
-- Na consulta anteri
SELECT 
cus.CustomerId AS id_cliente,
cus.FirstName AS nome,
SUM(inv.Total) AS 'Total gasto',
COUNT(inv.Total) AS 'Quantidade Compras'
FROM
invoices AS inv
INNER JOIN customers AS cus ON inv.CustomerId = cus.CustomerId
GROUP BY id_cliente
HAVING SUM(inv.Total) >=40;

-- Na consulta anterior, insira uma coluna que informe a compra de maior valor feita por cada cliente
