DROP FUNCTION cria_a;

CREATE OR REPLACE FUNCTION cria_a(nome VARCHAR) RETURNS void AS
$$
BEGIN
    INSERT INTO a(nome) VALUES ('Patricia')
END;
$$ LANGUAGE plpgsql;

SELECT cria_a('Leonardo Raiz')


CREATE OR REPLACE FUNCTION cria_instrutor_falso() RETURNS instrutor AS
$$
BEGIN
    RETURN ROW (SELECT 22, 'Nome falso', 200::DECIMAL)::instrutor;
END
$$ LANGUAGE plpgsql;


SELECT id, salario
FROM cria_instrutor_falso();


CREATE OR REPLACE FUNCTION cria_instrutor_falso() RETURNS instrutor AS
$$
DECLARE
    retorno instrutor;
BEGIN
    SELECT 22, 'Nome falso', 200::DECIMAL INTO retorno;

    RETURN retorno;
END
$$ LANGUAGE plpgsql;


SELECT id, salario
FROM cria_instrutor_falso();

DROP FUNCTION instrutores_bem_pagos;

CREATE FUNCTION instrutores_bem_pagos(valor_salario DECIMAL) RETURNS SETOF instrutor AS
$$
BEGIN
    RETURN QUERY SELECT * FROM instrutor WHERE salario > valor_salario;
END;
$$ LANGUAGE plpgsql;

SELECT *
FROM instrutores_bem_pagos(300);

CREATE FUNCTION salario_ok(instrutor instrutor) RETURNS VARCHAR AS
$$
BEGIN
    -- se o salário do instrutor for maior do que 200, está ok. Senão pode aumentar
    IF instrutor.salario > 200 THEN
        RETURN 'Salário está ok.';
    ELSE
        RETURN 'Salário pode aumentar';
    END IF;
END;
$$ LANGUAGE plpgsql;

SELECT nome, salario_ok(instrutor)
FROM instrutor;

DROP FUNCTION salario_ok;
CREATE FUNCTION salario_ok(id_instrutor INTEGER) RETURNS VARCHAR AS
$$
DECLARE
    instrutor instrutor;
BEGIN
    SELECT * FROM instrutor WHERE id = id_instrutor INTO instrutor;

    -- se o salário do instrutor for maior do que 200, está ok. Senão pode aumentar
    IF instrutor.salario > 200 THEN
        RETURN 'Salário está ok.';
    ELSE
        RETURN 'Salário pode aumentar';
    END IF;
END;
$$ LANGUAGE plpgsql;


SELECT nome, salario_ok(instrutor.id)
FROM instrutor;

DROP FUNCTION salario_ok;
CREATE OR REPLACE FUNCTION salario_ok(id_instrutor INTEGER) RETURNS VARCHAR AS
$$
DECLARE
    instrutor instrutor;
BEGIN
    SELECT * FROM instrutor WHERE id = id_instrutor INTO instrutor;

    -- se o salário do instrutor for maior do que 300 reais, está ok. Se for 300 reais, então pode aumentar. Caso contrário, o salário está defasado.
    IF instrutor.salario > 300 THEN
        RETURN 'Salário está ok.';
    ELSE
        IF instrutor.salario = 300 THE
        RETURN 'Salário pode aumentar';
        ELSE
        RETURN 'Salário está defasado';
    END IF;
END;
$$ LANGUAGE plpgsql;


SELECT nome, salario_ok(instrutor.id)
FROM instrutor;

CREATE OR REPLACE FUNCTION salario_ok(id_instrutor INTEGER) RETURNS VARCHAR AS
$$
DECLARE
    instrutor instrutor;
BEGIN
    SELECT * FROM instrutor WHERE id = id_instrutor INTO instrutor;

    -- se o salário do instrutor for maior do que 300 reais, está ok. Se for 300 reais, então pode aumentar. Caso contrário, o salário está defasado.
    IF instrutor.salario > 300 THEN
        RETURN 'Salário está ok.';
    ELSEIF instrutor.salario = 300 THE
    RETURN 'Salário pode aumentar';
    ELSE
    RETURN 'Salário está defasado';
END IF; END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION salario_ok(id_instrutor INTEGER) RETURNS VARCHAR AS
$$
DECLARE
    instrutor instrutor;
BEGIN
    SELECT * FROM instrutor WHERE id = id_instrutor INTO instrutor;

    -- se o salário do instrutor for maior do que 300 reais, está ok. Se for 300 reais, então pode aumentar. Caso contrário, o salário está defasado.
    /*IF instrutor.salario > 300 THEN
        RETURN 'Salário está ok.';
    ELSEIF instrutor.salario = 300 THE
        RETURN 'Salário pode aumentar';
    ELSE
        RETURN 'Salário está defasado';
    END IF;*/
    CASE
        WHEN instrutor.salario = 100 THEN RETURN 'Salário muito baixo';
        WHEN instrutor.salario = 200 THEN RETURN 'Salário baixo';
        WHEN instrutor.salario = 300 THEN RETURN 'Salário ok';
        ELSE RETURN 'Salário ótimo';
        END CASE;
END;
$$ LANGUAGE plpgsql;

SELECT nome, salario_ok(instrutor.id)
FROM instrutor;

CREATE OR REPLACE FUNCTION salario_ok(id_instrutor INTEGER) RETURNS VARCHAR AS
$$
DECLARE
    instrutor instrutor;
BEGIN
    SELECT * FROM instrutor WHERE id = id_instrutor INTO instrutor;

    -- se o salário do instrutor for maior do que 300 reais, está ok. Se for 300 reais, então pode aumentar. Caso contrário, o salário está defasado.
    /*IF instrutor.salario > 300 THEN
        RETURN 'Salário está ok.';
    ELSEIF instrutor.salario = 300 THE
        RETURN 'Salário pode aumentar';
    ELSE
        RETURN 'Salário está defasado';
    END IF;*/
    CASE
        WHEN 100 THEN RETURN 'Salário muito baixo';
        WHEN 200 THEN RETURN 'Salário baixo';
        WHEN 300 THEN RETURN 'Salário ok';
        ELSE RETURN 'Salário ótimo';
        END CASE;
END;
$$ LANGUAGE plpgsql;