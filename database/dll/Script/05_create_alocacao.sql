-- Tabela alocacao: O coração da escala
-- Aplicação das regras RN01 (Sem conflito), RN04 (Dia 1 a 7) e RN06 (Integridade referencial)
CREATE TABLE alocacao (
    id_alocacao INTEGER PRIMARY KEY AUTOINCREMENT,
    id_medico INTEGER NOT NULL REFERENCES medico(id_medico), 
    id_departamento INTEGER NOT NULL REFERENCES departamento(id_departamento), 
    id_turno INTEGER NOT NULL REFERENCES turno(id_turno), 
    dia_semana INTEGER NOT NULL CHECK (dia_semana BETWEEN 1 AND 7), 
    UNIQUE(id_medico, dia_semana, id_turno) 
);
