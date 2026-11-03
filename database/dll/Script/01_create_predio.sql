-- Tabela predio: Bloco, prédio ou unidade física
CREATE TABLE predio (
    id_predio INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL UNIQUE
);
