-- Departamento: setor dentro de um prédio (RN05)
CREATE TABLE departamento (
    id_departamento INTEGER PRIMARY KEY AUTOINCREMENT,
    nome            TEXT    NOT NULL,
    id_predio       INTEGER NOT NULL REFERENCES predio (id_predio),
    UNIQUE (nome, id_predio)
);
