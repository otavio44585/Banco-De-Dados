-- Tabela departamento_especialidade: Relacionamento N:N entre departamentos e especialidades
CREATE TABLE departamento_especialidade (
    id_departamento INTEGER NOT NULL REFERENCES departamento(id_departamento),
    id_especialidade INTEGER NOT NULL REFERENCES especialidade(id_especialidade),
    PRIMARY KEY (id_departamento, id_especialidade)
);
