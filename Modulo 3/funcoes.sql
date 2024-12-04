CREATE FUNCTION clean_emp() RETURNS void AS '
    DELETE FROM emp
        WHERE salary < 0;
' LANGUAGE SQL;


CREATE FUNCTION primeira_funcao() RETURNS INTEGER AS '
    SELECT (5 - 3) * 2
' LANGUAGE SQL;


SELECT primeira_funcao();

SELECT primeira_funcao() AS numero;

CREATE FUNCTION soma_dois_numeros() RETURNS INTEGER AS'
   SELECT numero_1 + numero2
'LANGUAGE SQL;

SELECT soma_dos_numeros(2, 2);

CREATE FUNCTION soma_dois_numeros(numero_1 INTEGER, numero_2 INTEGER) RETURNS INTEGER AS'
   SELECT numero_1 + numero2
'LANGUAGE SQL;

SELECT soma_dos_numeros(2, 2);

SELECT soma_dos_numeros(3, 17);

CREATE FUNCTION soma_dois_numeros(qualquer INTEGER, coisa INTEGER) RETURNS INTEGER AS'
   SELECT numero_1 + numero2
'LANGUAGE SQL;

DROP FUNCTION soma_dos_numeros;
CREATE FUNCTION soma_dois_numeros(INTEGER, INTEGER) RETURNS INTEGER AS'
   SELECT $1 + $2
'LANGUAGE SQL;

SELECT soma_dos_numeros(3, 17);

CREATE TABLE a
(
    nome VARCHAR(255) NOT NULL
);

CREATE FUNCTION cria_a(nome VARCHAR) RETURNS VARCHAR AS'
    INSERT INTO a(nome) VALUES(cria_a.nome)
'LANGUAGE SQL;

CREATE FUNCTION cria_a(nome VARCHAR) RETURNS VARCHAR AS'
    INSERT INTO a(nome) VALUES(cria_a.nome)

    SELECT nome;
'LANGUAGE SQL;


CREATE
OR REPLACE FUNCTION cria_a( nome VARCHAR) RETURNS VARCHAR AS'
    INSERT INTO a(nome) VALUES(cria_a.nome)

    SELECT nome;
'LANGUAGE SQL;

SELECT cria_a('Leonardo Raiz')


CREATE
OR REPLACE FUNCTION cria_a( nome VARCHAR) RETURNS void AS'
    INSERT INTO a(nome) VALUES(cria_a.nome)
'LANGUAGE SQL;

DROP FUNCTION cria_a;
CREATE
OR REPLACE FUNCTION cria_a( nome VARCHAR) RETURNS void AS'
    INSERT INTO a(nome) VALUES(cria_a.nome)
'LANGUAGE SQL;

SELECT cria_a('Leonardo Raiz')


DROP FUNCTION cria_a;
CREATE
OR REPLACE FUNCTION cria_a( nome VARCHAR) RETURNS void AS $$
    INSERT INTO a(nome) VALUES('Carolina')
$$ LANGUAGE SQL;

SELECT cria_a('Leonardo Raiz')
