
-- Inserir Valores
INSERT INTO aluno (nome, cpf, observacao, idade, dinheiro, altura, ativo, data_nascimento, hora_aula, matriculado_em)
VALUES ('Leonardo',
        '22222222222',
        'asdasdasdasdjkfajfjafj',
        34,
        100.50,
        1.93,
        TRUE,
        '1989-12-11',
        '09:30:00',
        '2024-11-29 12:32:45');

-- Selecionar Valores
SELECT *
FROM aluno;

-- Upgrade Valores
UPDATE aluno
SET nome            = 'Lana',
    cpf             = '10987654321',
    observacao      = 'Teste',
    idade           = 38,
    dinheiro        = 15.23,
    altura          = 1.90,
    ativo           = FALSE,
    data_nascimento = '1980-01-15',
    hora_aula       = '13:00:00',
    matriculado_em  = '2020-01-02 15:00:00'
WHERE id = 1;

-- Deletar da tabela

DELETE FROM aluno WHERE id = 1;

INSERT INTO aluno (nome) VALUES ('Vinícius Dias');
INSERT INTO aluno (nome) VALUES ('Nico Steppat');
INSERT INTO aluno (nome) VALUES ('João Roberto');
INSERT INTO aluno (nome) VALUES ('Diego');