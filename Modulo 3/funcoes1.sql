CREATE TABLE instrutor
(
    id      SERIAL PRIMARY KEY,
    nome    VARCHAR(255) NOT NULL,
    salario DECIMAL(10, 2),
);

INSERT INTO instrutor (nome, salario)
VALUES ('Leonardo Raiz', 100);


CREATE FUNCTION dobro_do_salario(instrutor) RETURNS DECIMAL AS $$
SELECT $1.salario * 2 AS dobro;
$$
LANGUAGE SQL;

SELECT nome, dobro_do_salario(instrutor.*)
FROM instrutor;

CREATE FUNCTION cria_instrutor_falso() RETURNS instrutor AS $$
SELECT 22,
       'Nome falso',
       200
           $$ LANGUAGE SQL;


SELECT 22 AS id, 'Nome falso' AS nome, 200 AS salario;


CREATE FUNCTION cria_instrutor_falso() RETURNS instrutor AS $$
SELECT 22 AS id, 'Nome falso' AS nome, 200.0 AS salario;
$$
LANGUAGE SQL;



CREATE
OR REPLACE FUNCTION cria_instrutor_falso() RETURNS instrutor AS $$
SELECT 22 AS id, 'Nome falso' AS nome, 200::DECIMAL AS salario;
$$
LANGUAGE SQL;


CREATE
OR REPLACE FUNCTION cria_instrutor_falso() RETURNS instrutor AS $$
SELECT 22, 'Nome falso', 200::DECIMAL;
$$
LANGUAGE SQL;


SELECT cria_instrutor_falso();


SELECT *
FROM cria_instrutor_falso();


SELECT id, salario
FROM cria_instrutor_falso();


INSERT INTO instrutor (nome, salario)
VALUES ('Diogo Mascarenha', 200);
INSERT INTO instrutor (nome, salario)
VALUES ('Nico Steppat', 300);
INSERT INTO instrutor (nome, salario)
VALUES ('Juliana', 400);
INSERT INTO instrutor (nome, salario)
VALUES ('Priscila', 500);



CREATE FUNCTION instrutores_bem_pagos(valor_salario DECIMAL) RETURNS instrutor AS $$
SELECT *
FROM instrutor
WHERE salario > valor_salario;
$$
LANGUAGE SQL;


SELECT *
FROM instrutores_bem_pagos(300);

DROP FUNCTION instrutores_bem_pagos;
CREATE FUNCTION instrutores_bem_pagos(valor_salario DECIMAL) RETURNS SETOF instrutor AS $$
SELECT *
FROM instrutor
WHERE salario > valor_salario;
$$
LANGUAGE SQL;

DROP FUNCTION instrutores_bem_pagos;
CREATE FUNCTION instrutores_bem_pagos(valor_salario DECIMAL)
    RETURNS TABLE
            (
                id      INTEGER,
                nome    VARCHAR,
                salario DECIMAL
            ) AS $$
SELECT *
FROM instrutor
WHERE salario > valor_salario;
$$
LANGUAGE SQL;

SELECT *
FROM instrutores_bem_pagos(300);


DROP FUNCTION instrutores_bem_pagos;
CREATE FUNCTION instrutores_bem_pagos(valor_salario DECIMAL) RETURNS SETOF record AS $$
SELECT *
FROM instrutor
WHERE salario > valor_salario;
$$
LANGUAGE SQL;

SELECT *
FROM instrutores_bem_pagos(300);


DROP FUNCTION instrutores_bem_pagos;
CREATE FUNCTION instrutores_bem_pagos(valor_salario DECIMAL) RETURNS SETOF instrutor AS $$
SELECT *
FROM instrutor
WHERE salario > valor_salario;
$$
LANGUAGE SQL;

SELECT *
FROM instrutores_bem_pagos(300);

CREATE FUNCTION soma_e_produto(numero_1 INTEGER, numero_2 INTEGER) RETURNS ??? AS $$
SELECT numero_1 + numero_2 AS soma, numero_1 * numero_2 AS produto;
$$
LANGUAGE SQL;

CREATE FUNCTION soma_e_produto(numero_1 INTEGER, numero_2 INTEGER, OUT soma INTEGER, OUT produto INTEGER) AS $$
SELECT numero_1 + numero_2 AS soma, numero_1 * numero_2 AS produto;
$$
LANGUAGE SQL;


SELECT *
FROM soma_e_produto(3, 3);


CREATE TYPE dois_valores AS (soma INTEGER, produto INTEGER)

DROP FUNCTION soma_e_produto;
CREATE FUNCTION soma_e_produto(IN numero_1 INTEGER, IN numero_2 INTEGER) RETURNS dois_valores AS $$
SELECT numero_1 + numero_2 AS soma, numero_1 * numero_2 AS produto;
$$
LANGUAGE SQL;


DROP FUNCTION instrutores_bem_pagos;
CREATE FUNCTION instrutores_bem_pagos(valor_salario DECIMAL, OUT nome VARCHAR, OUT salario DECIMAL) RETURNS SETOF record AS $$
SELECT nome, salario
FROM instrutor
WHERE salario > valor_salario;
$$
LANGUAGE SQL;

SELECT *
FROM instrutores_bem_pagos(300);