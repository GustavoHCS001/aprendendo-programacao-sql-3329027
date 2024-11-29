-- Desenvolva uma consulta para a tabela "customers" que retorne apenas 10 linhas
SELECT
CustomerId AS id,
FirstName AS Nome,
Country AS Pais
FROM
customers
LIMIT 10;

-- Usando a consulta anterior, ordene a coluna "Country" de forma crescente e "FirstName" de forma decrescente
SELECT
CustomerId AS id,
FirstName AS Nome,
Country AS Pais
FROM
customers
LIMIT 10 OFFSET 3;

-- Continue usando a consulta anterior, dessa vez retorne 10 resultados, no entando ignore as 3 primeiras linhas
SELECT
CustomerId AS id,
FirstName AS Nome,
Country AS Pais
FROM
customers
ORDER BY
Pais ASC
LIMIT 10 OFFSET 3;

--
SELECT
CustomerId AS id,
FirstName AS Nome,
Country AS Pais
FROM
customers
ORDER BY
Pais ASC
Nome DESC 
LIMIT 10;
