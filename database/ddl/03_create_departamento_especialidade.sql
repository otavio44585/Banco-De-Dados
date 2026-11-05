-- N:N entre departamento e especialidade (tabela da base fornecida)
CREATE TABLE departamento_especialidade (
    id_departamento  INTEGER NOT NULL REFERENCES departamento (id_departamento),
    id_especialidade INTEGER NOT NULL REFERENCES especialidade (id_especialidade),
    PRIMARY KEY (id_departamento, id_especialidade)
);
