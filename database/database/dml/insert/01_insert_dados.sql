-- 1. Inserir prédios
INSERT INTO predio (nome) VALUES ('Bloco B');
INSERT INTO predio (nome) VALUES ('Bloco A');

-- 2. Inserir departamentos (usando subconsultas para garantir o ID correto)
INSERT INTO departamento (nome, id_predio) 
VALUES ('Ambulatório de Ortopedia', (SELECT id_predio FROM predio WHERE nome = 'Bloco B'));

INSERT INTO departamento (nome, id_predio) 
VALUES ('UTI Geral', (SELECT id_predio FROM predio WHERE nome = 'Bloco A'));

-- 3. Inserir turnos com as respetivas horas
INSERT INTO turno (nome, horas) VALUES ('Manhã', 6);
INSERT INTO turno (nome, horas) VALUES ('Tarde', 6);
INSERT INTO turno (nome, horas) VALUES ('Noite', 12);

-- 4. Associar especialidades aos departamentos (Ex: Ambulatório de Ortopedia aceita a especialidade Ortopedia)
INSERT INTO departamento_especialidade (id_departamento, id_especialidade)
VALUES (
    (SELECT id_departamento FROM departamento WHERE nome = 'Ambulatório de Ortopedia'),
    (SELECT id_especialidade FROM especialidade WHERE nome = 'Ortopedia')
);

-- 5. Inserir a alocação de exemplo da médica Ana Ribeiro
-- RN04 dita que 1 = Segunda-feira
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana)
VALUES (
    (SELECT id_medico FROM medico WHERE nome = 'Ana Ribeiro'),
    (SELECT id_departamento FROM departamento WHERE nome = 'Ambulatório de Ortopedia'),
    (SELECT id_turno FROM turno WHERE nome = 'Manhã'),
    1
);
