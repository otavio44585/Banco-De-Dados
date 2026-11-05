-- Turno: faixa de horário. Horários em TEXT no formato HH:MM
CREATE TABLE turno (
    id_turno      INTEGER PRIMARY KEY AUTOINCREMENT,
    nome          TEXT    NOT NULL UNIQUE,
    hora_inicio   TEXT    NOT NULL,
    hora_fim      TEXT    NOT NULL,
    duracao_horas INTEGER NOT NULL CHECK (duracao_horas > 0)
);
