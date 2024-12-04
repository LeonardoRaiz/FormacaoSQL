SELECT *
FROM instrutor;

DO
$$
    DECLARE
cursor_salarios refcursor;
        salario
DECIMAL;
        total_instrutores
INTEGER DEFAULT 0;
        instrutor_recebe_menos
INTEGER DEFAULT 0;
        percentual
DECIMAL;
BEGIN
SELECT instrutores_internos(12)
INTO cursor_salarios;
LOOP
FETCH cursor_salarios INTO salario;
            EXIT
WHEN NOT FOUND;
            total_instrutores
:= total_instrutores + 1;

            IF
600::DECIMAL > salario THEN
                instrutor_recebe_menos := instrutor_recebe_menos + 1;
END IF;
END LOOP;
        percentual
= instrutor_recebe_menos::DECIMAL / total_instrutores::DECIMAL * 100;

        RAISE
NOTICE 'Percentual: %', percentual;
END;
$$;


DO
$$
    DECLARE
cursor_salarios refcursor;
        salario
DECIMAL;
        total_instrutores
INTEGER DEFAULT 0;
        instrutor_recebe_menos
INTEGER DEFAULT 0;
        percentual
DECIMAL(5,2);
BEGIN
SELECT instrutores_internos(12)
INTO cursor_salarios;
LOOP
FETCH cursor_salarios INTO salario;
            EXIT
WHEN NOT FOUND;
            total_instrutores
:= total_instrutores + 1;

            IF
600::DECIMAL > salario THEN
                instrutor_recebe_menos := instrutor_recebe_menos + 1;
END IF;
END LOOP;
        percentual
= instrutor_recebe_menos::DECIMAL / total_instrutores::DECIMAL * 100;

        RAISE
NOTICE 'Percentual: % %%', percentual;
END;
$$;




