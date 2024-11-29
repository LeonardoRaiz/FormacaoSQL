CREATE TABLE funcionarios
(
    id        SERIAL PRIMARY KEY,
    matricula VARCHAR(10),
    nome      VARCHAR(255),
    sobrenome VARCHAR(255)
);

INSERT INTO funcionarios (matricula, nome, sobrenome)
VALUES ('M001', 'Diogo', 'Mascarenhas');
INSERT INTO funcionarios (matricula, nome, sobrenome)
VALUES ('M002', 'Vinícius', 'Dias');
INSERT INTO funcionarios (matricula, nome, sobrenome)
VALUES ('M003', 'Nico', 'Steppat');
INSERT INTO funcionarios (matricula, nome, sobrenome)
VALUES ('M004', 'João', 'Roberto');
INSERT INTO funcionarios (matricula, nome, sobrenome)
VALUES ('M005', 'Diogo', 'Mascarenhas');
INSERT INTO funcionarios (matricula, nome, sobrenome)
VALUES ('M006', 'Alberto', 'Martins');

SELECT *
FROM funcionarios
ORDER BY nome;

SELECT *
FROM funcionarios
ORDER BY 3, 4, 2;

SELECT *
FROM funcionarios
ORDER BY 4 DESC, nome DESC, 2;

SELECT *
FROM funcionarios
ORDER BY nome
LIMIT 5;

SELECT *
FROM funcionarios
ORDER BY id
LIMIT 5 OFFSET 1;

SELECT COUNT(id)
FROM funcionarios;

SELECT COUNT(id),
       SUM(id),
       MAX(id),
       MIN(id),
       ROUND(AVG(id), 0)
FROM funcionarios;

SELECT DISTINCT nome
FROM funcionarios
ORDER BY nome;

SELECT nome,
       sobrenome,
       COUNT(*)
FROM funcionarios
GROUP BY nome, sobrenome
ORDER BY nome;

SELECT nome
    FROM funcionarios
    GROUP BY nome
    HAVING COUNT(id) > 1;

SELECT nome,
       COUNT(id)
    FROM funcionarios
    GROUP BY nome
    HAVING COUNT(id) > 1;