-- Insira 3 classes salariais na tabela salario_classe
INSERT INTO salario_classe(id_salario, salario, nivel)
VALUES
(8500, 'gerencia'),
(107000, 'coordenação');

-- Insira 1 nova classe salarial, sem declarar o atributo id_salario
INSERT INTO salario_classe(salario, nivel)
VALUES
(6700, 'plena');