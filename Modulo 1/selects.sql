SELECT nome           AS "Nome do Aluno",
       idade,
       matriculado_em AS quando_se_matriculou
FROM aluno;


SELECT *
FROM aluno
WHERE nome = 'Diogo';

-- _ , que significa "qualquer caractere naquela posição",
SELECT *
FROM aluno
WHERE nome LIKE 'Di_go';

-- Filtros
SELECT *
FROM aluno
WHERE nome LIKE 'D%';

SELECT *
FROM aluno
WHERE nome LIKE '% %';

SELECT *
FROM aluno
WHERE nome LIKE '%i%a%';

-- Palavra chave IS
SELECT *
FROM aluno
WHERE cpf IS NULL;

SELECT *
FROM aluno
WHERE cpf IS NOT NULL;

SELECT *
FROM aluno
WHERE idade BETWEEN 10 AND 40;

-- Operadores logicos

SELECT *
FROM aluno
WHERE nome LIKE 'D%'
  AND cpf IS NOT NULL;

SELECT *
FROM aluno
WHERE nome LIKE 'Diogo'
   OR nome LIKE 'Rodrigo';

SELECT *
FROM aluno
WHERE nome LIKE 'Diogo'
  AND nome LIKE 'Nico%';

SELECT *
FROM aluno
WHERE nome LIKE 'Thiago'
   OR nome LIKE 'Miguel';