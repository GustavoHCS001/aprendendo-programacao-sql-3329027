-- Escreva uma consulta que retorne o nome por extenso dos estados brasileiros
SELECT DISTINCT
Country as País,
State as Estado_sigla,
CASE
  WHEN State = 'SP' THEN 'São Paulo'
  WHEN State = 'RJ' THEN 'Rio de Janeiro'
  ELSE 'Estado desconhecido'
END AS Estado
FROM
customers
WHERE
Country LIKE 'Brazil'
