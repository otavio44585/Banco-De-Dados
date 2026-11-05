-- Alocação: médico em um departamento, num dia da semana e turno
-- RN01: UNIQUE (id_medico, dia_semana, id_turno)
-- RN04: dia_semana de 1 (segunda) a 7 (domingo), padrão ISO 8601
-- RN06: FKs para medico, departamento e turno
CREATE TABLE alocacao (
    id_alocacao     INTEGER PRIMARY KEY AUTOINCREMENT,
    id_medico       INTEGER NOT NULL REFERENCES medico (id_medico),
    id_departamento INTEGER NOT NULL REFERENCES departamento (id_departamento),
    id_turno        INTEGER NOT NULL REFERENCES turno (id_turno),
    dia_semana      INTEGER NOT NULL CHECK (dia_semana BETWEEN 1 AND 7),
    UNIQUE (id_medico, dia_semana, id_turno)
);

CREATE INDEX idx_alocacao_departamento_dia ON alocacao (id_departamento, dia_semana);
