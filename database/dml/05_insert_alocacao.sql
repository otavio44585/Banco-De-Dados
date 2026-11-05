-- Escala semanal de 10 médicos (RN01 a RN06 respeitadas)
-- dia_semana: 1=segunda ... 7=domingo | turno: 1=Manhã(6h) 2=Tarde(6h) 3=Noite(12h)

-- Ana Ribeiro | Ortopedia | Parcial 30h (30h) | total alocado: 30h
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '169194-SP'), 4, 1, 1);
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '169194-SP'), 1, 1, 2);
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '169194-SP'), 1, 2, 2);
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '169194-SP'), 1, 1, 4);
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '169194-SP'), 8, 1, 5);

-- Bruno Carvalho | Neurologia | Parcial 20h (20h) | total alocado: 18h
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '152842-SP'), 1, 1, 2);
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '152842-SP'), 8, 2, 3);
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '152842-SP'), 1, 1, 5);

-- Camila Nogueira | Cardiologia | Parcial 30h (30h) | total alocado: 30h
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '120758-SP'), 7, 1, 1);
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '120758-SP'), 1, 2, 2);
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '120758-SP'), 5, 1, 4);
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '120758-SP'), 7, 1, 5);
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '120758-SP'), 7, 2, 5);

-- Daniel Moreira | Radiologia | Integral 40h (40h) | total alocado: 36h
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '136443-SP'), 3, 1, 1);
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '136443-SP'), 3, 2, 1);
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '136443-SP'), 3, 1, 2);
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '136443-SP'), 3, 2, 2);
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '136443-SP'), 3, 2, 3);
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '136443-SP'), 3, 1, 5);

-- Eduarda Pacheco | Dermatologia | Parcial 30h (30h) | total alocado: 30h
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '168236-SP'), 5, 1, 1);
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '168236-SP'), 5, 2, 1);
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '168236-SP'), 5, 1, 4);
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '168236-SP'), 5, 2, 4);
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '168236-SP'), 5, 1, 5);

-- Felipe Teixeira | Cirurgia Geral | Plantonista 24h (24h) | total alocado: 24h
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '106793-SP'), 8, 3, 2);
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '106793-SP'), 8, 3, 4);

-- Henrique Batista | Medicina Intensiva | Plantonista 24h (24h) | total alocado: 24h
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '179595-SP'), 7, 3, 5);
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '179595-SP'), 7, 3, 7);

-- Isabela Fontes | Anestesiologia | Plantonista 24h (24h) | total alocado: 24h
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '105353-SP'), 8, 3, 5);
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '105353-SP'), 8, 3, 7);

-- Olívia Rezende | Pediatria | Parcial 20h (20h) | total alocado: 18h
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '220568-SP'), 9, 1, 2);
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '220568-SP'), 2, 2, 3);
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '220568-SP'), 2, 2, 5);

-- Renata Guimarães | Ginecologia e Obstetrícia | Integral 40h (40h) | total alocado: 36h
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '179230-SP'), 6, 1, 3);
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '179230-SP'), 9, 2, 3);
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '179230-SP'), 9, 1, 4);
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '179230-SP'), 9, 2, 4);
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '179230-SP'), 9, 1, 5);
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES ((SELECT id_medico FROM medico WHERE crm = '179230-SP'), 9, 2, 5);
