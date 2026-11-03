-- Tabela turno: Faixas de horário
-- Adaptada para facilitar o cálculo de horas (RN03)
CREATE TABLE turno (
    id_turno INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL UNIQUE,
    horas INTEGER NOT NULL
);
