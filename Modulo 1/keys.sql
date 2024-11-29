CREATE TABLE curso
(
    id   INTEGER PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

INSERT INTO curso (id, nome)
VALUES (1, 'HTML');
INSERT INTO curso (id, nome)
VALUES (2, 'Javascript');

SELECT *
FROM curso;

CREATE TABLE aluno_KEYS
(
    id   SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

INSERT INTO aluno_KEYS (nome)
VALUES ('Leonardo');
INSERT INTO aluno_KEYS (nome)
VALUES ('Carolina');
INSERT INTO aluno_KEYS (nome)
VALUES ('Lana');

CREATE TABLE aluno_curso
(
    aluno_id INTEGER,
    curso_id INTEGER,
    PRIMARY KEY (aluno_id, curso_id),

    FOREIGN KEY (aluno_id)
        REFERENCES aluno_KEYS (id),

    FOREIGN KEY (curso_id)
        REFERENCES curso (id)

);

INSERT INTO aluno_curso (aluno_id, curso_id)
VALUES (1, 1);
INSERT INTO aluno_curso (aluno_id, curso_id)
VALUES (2, 1);
INSERT INTO aluno_curso (aluno_id, curso_id)
VALUES (3, 1);

SELECT *
FROM aluno_curso;

-- Consultas com relacionamento

SELECT *
FROM aluno_KEYS
         JOIN aluno_curso ON aluno_curso.aluno_id = aluno_KEYS.id;

SELECT aluno_KEYS.nome as aluno,
       curso.nome      as curso
FROM aluno_KEYS
         JOIN aluno_curso ON aluno_curso.aluno_id = aluno_KEYS.id
         JOIN curso ON curso.id = aluno_curso.curso_id;

SELECT aluno_KEYS.nome as "Nome do Aluno",
       curso.nome as "Nome do Curso"
FROM aluno_KEYS
         JOIN aluno_curso ON aluno_curso.aluno_id = aluno_KEYS.id
         JOIN curso ON curso.id = aluno_curso.curso_id;

SELECT aluno_KEYS.nome as "Nome do Aluno",
       curso.nome as "Nome do Curso"
FROM aluno_KEYS
         LEFT JOIN aluno_curso ON aluno_curso.aluno_id = aluno_KEYS.id
         LEFT JOIN curso ON curso.id = aluno_curso.curso_id;

SELECT aluno_KEYS.nome as "Nome do Aluno",
       curso.nome as "Nome do Curso"
FROM aluno_KEYS
         FULL JOIN aluno_curso ON aluno_curso.aluno_id = aluno_KEYS.id
         FULL JOIN curso ON curso.id = aluno_curso.curso_id;

SELECT aluno_KEYS.nome as "Nome do Aluno",
       curso.nome as "Nome do Curso"
FROM aluno_KEYS
         CROSS JOIN curso;

