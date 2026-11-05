-- Prédio: unidade física do hospital
CREATE TABLE predio (
    id_predio INTEGER PRIMARY KEY AUTOINCREMENT,
    nome      TEXT    NOT NULL UNIQUE,
    endereco  TEXT
);
