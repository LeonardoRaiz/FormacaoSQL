CREATE DATABASE teste; -- Criar um banco de dados

DROP DATABASE teste; -- Excluir banco de dados

-----------------------------------------------------------------------

CREATE DATABASE MeuBanco;
CREATE SCHEMA MeuEsquema;
SHOW search_path;
ALTER DATABASE meubanco SET search_path = novoesquema, public;
DROP DATABASE MeuBanco;


CREATE TABLE aluno (
    id SERIAL,
    nome VARCHAR(255),
    cpf CHAR(11),
    observacao TEXT,
    idade INTEGER,
    dinheiro NUMERIC(10, 2),
    altura REAL,
    ativo BOOLEAN,
    data_nascimento DATE,
    hora_aula TIME,
    matriculado_em TIMESTAMP
); -- Criar Tabela

SELECT * FROM aluno; -- Selecionar todas as colunas da tabela