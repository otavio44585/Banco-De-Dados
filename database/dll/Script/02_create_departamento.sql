-- Tabela departamento: Setor dentro de um prédio
-- RN05: Todo departamento pertence a exatamente um prédio (FK NOT NULL)
CREATE TABLE departamento (
    id_departamento INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    id_predio INTEGER NOT NULL REFERENCES predio(id_predio)
);
