CREATE FUNCTION primeira_pl() RETURNS INTEGER AS
$$ SELECT 1;
$$
    LANGUAGE plpgsql;

DROP FUNCTION primeira_pl;

CREATE FUNCTION primeira_pl() RETURNS INTEGER AS
$$
BEGIN
    SELECT 1;
END
$$
    LANGUAGE plpgsql;


SELECT primeira_pl();

CREATE
    OR REPLACE FUNCTION primeira_pl() RETURNS INTEGER AS
$$
BEGIN
    -- Vários comandos em SQL
    RETURN 1;
END
$$
    LANGUAGE plpgsql;

CREATE
    OR REPLACE FUNCTION primeira_pl() RETURNS INTEGER AS
$$
DECLARE
    primeira_variavel INTEGER DEFAULT 3;
BEGIN
    -- Vários comandos em SQL
    RETURN primeira_variavel;
END
$$
    LANGUAGE plpgsql;


SELECT primeira_pl();


CREATE
    OR REPLACE FUNCTION primeira_pl() RETURNS INTEGER AS
$$
DECLARE
    primeira_variavel INTEGER DEFAULT 3;
BEGIN
    primeira_variavel
        := primeira_variavel * 2;
    -- Vários comandos em SQL
    RETURN primeira_variavel;
END
$$
    LANGUAGE plpgsql;


SELECT primeira_pl();


CREATE
    OR REPLACE FUNCTION primeira_pl() RETURNS INTEGER AS
$$
DECLARE
    primeira_variavel INTEGER = 3;
BEGIN
    primeira_variavel
        = primeira_variavel * 2;
    -- Vários comandos em SQL
    RETURN primeira_variavel;
END
$$
    LANGUAGE plpgsql;

SELECT primeira_pl();


CREATE
    OR REPLACE FUNCTION primeira_pl() RETURNS INTEGER AS
$$
DECLARE
    primeira_variavel INTEGER DEFAULT 3;
BEGIN
    primeira_variavel
        := primeira_variavel * 2;
    -- Vários comandos em SQL
    RETURN primeira_variavel;
END
$$
    LANGUAGE plpgsql;

CREATE
    OR REPLACE FUNCTION primeira_pl() RETURNS INTEGER AS
$$
DECLARE
    primeira_variavel INTEGER DEFAULT 3;
BEGIN
    primeira_variavel
        := primeira_variavel * 2;

    DECLARE
        primeira_variavel INTEGER;
    BEGIN
        primeira_variavel
            := 7;
    END;

    RETURN primeira_variavel;
END
$$
    LANGUAGE plpgsql;


SELECT primeira_pl();


CREATE
    OR REPLACE FUNCTION primeira_pl() RETURNS INTEGER AS
$$
DECLARE
    primeira_variavel INTEGER DEFAULT 3;
BEGIN
    primeira_variavel
        := primeira_variavel * 2;

    BEGIN
        primeira_variavel
            := 7;
    END;

    RETURN primeira_variavel;
END
$$
    LANGUAGE plpgsql;


SELECT primeira_pl();
