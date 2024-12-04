CREATE
OR REPLACE FUNCTION tabuada (numero INTEGER) RETURNS SETOF INTEGER AS $$
    DECLARE
BEGIN
        RETURN
NEXT numero * 1;
        RETURN
NEXT numero * 2;
        RETURN
NEXT numero * 3;
        RETURN
NEXT numero * 4;
        RETURN
NEXT numero * 5;
        RETURN
NEXT numero * 6;
        RETURN
NEXT numero * 7;
        RETURN
NEXT numero * 8;
        RETURN
NEXT numero * 9;
END;

$$
LANGUAGE plpgsql;

SELECT tabuada(2);

CREATE
OR REPLACE FUNCTION tabuada (numero INTEGER) RETURNS SETOF INTEGER AS $$
    DECLARE
multiplicador INTEGER DEFAULT 1;
BEGIN
    -- multiplicador que começa com 1 e vai até <10
    -- numero * multiplicador
    -- multiplicador := multiplicador +1

    LOOP
RETURN NEXT numero * multiplicador;

        multiplicador
:= multiplicador + 1;

        EXIT
WHEN multiplicador = 10;
END LOOP;
END;
$$
LANGUAGE plpgsql;


CREATE
OR REPLACE FUNCTION tabuada (numero INTEGER) RETURNS SETOF INTEGER AS $$
    DECLARE
multiplicador INTEGER DEFAULT 1;
BEGIN
    LOOP
RETURN NEXT numero * multiplicador;
        multiplicador
:= multiplicador + 1;
        EXIT
WHEN multiplicador = 10;
END LOOP;
END;
$$
LANGUAGE plpgsql;


CREATE
OR REPLACE FUNCTION tabuada (numero INTEGER) RETURNS SETOF VARCHAR AS $$
    DECLARE
multiplicador INTEGER DEFAULT 1;
BEGIN
    LOOP
        -- 9 x 1 = 9
RETURN NEXT numero || ' x ' || multiplicador || ' = ' || numero * multiplicador;
        multiplicador
:= multiplicador + 1;
        EXIT
WHEN multiplicador = 10;
END LOOP;
END;
$$
LANGUAGE plpgsql;


SELECT tabuada(9);

CREATE
OR REPLACE FUNCTION tabuada (numero INTEGER) RETURNS SETOF VARCHAR AS $$
    DECLARE
multiplicador INTEGER DEFAULT 1;
BEGIN
        WHILE
multiplicador < 10 LOOP
            RETURN NEXT numero || ' x ' || multiplicador || ' = ' || numero * multiplicador;
            multiplicador
:= multiplicador + 1;
END LOOP;
END;
$$
LANGUAGE plpgsql;


SELECT tabuada(9);

CREATE
OR REPLACE FUNCTION tabuada (numero INTEGER) RETURNS SETOF VARCHAR AS $$
BEGIN
FOR multiplicador IN 1..9 LOOP
            RETURN NEXT numero || ' x ' || multiplicador || ' = ' || numero * multiplicador;
END LOOP;
END;
$$
LANGUAGE plpgsql;


SELECT tabuada(9);

DROP FUNCTION instrutor_com_salario;
CREATE FUNCTION instrutor_com_salario(OUT nome VARCHAR, OUT salario_ok VARCHAR) RETURNS SETOF record AS $$
DECLARE
instrutor instrutor;
BEGIN
FOR instrutor IN
SELECT *
FROM instrutor LOOP nome := instrutor.id;
salario_ok
= salario_ok(instrutor.id);

            RETURN
NEXT;
END LOOP;
END;
$$
LANGUAGE plpgsql;

