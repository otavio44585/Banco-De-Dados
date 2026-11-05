-- Especialidades buscadas pelo nome para não depender dos IDs da base
INSERT INTO departamento_especialidade (id_departamento, id_especialidade)
    SELECT 1, id_especialidade FROM especialidade WHERE nome = 'Clínica Médica';  -- Pronto-Socorro Adulto
INSERT INTO departamento_especialidade (id_departamento, id_especialidade)
    SELECT 1, id_especialidade FROM especialidade WHERE nome = 'Cirurgia Geral';  -- Pronto-Socorro Adulto
INSERT INTO departamento_especialidade (id_departamento, id_especialidade)
    SELECT 1, id_especialidade FROM especialidade WHERE nome = 'Ortopedia';  -- Pronto-Socorro Adulto
INSERT INTO departamento_especialidade (id_departamento, id_especialidade)
    SELECT 1, id_especialidade FROM especialidade WHERE nome = 'Cardiologia';  -- Pronto-Socorro Adulto
INSERT INTO departamento_especialidade (id_departamento, id_especialidade)
    SELECT 1, id_especialidade FROM especialidade WHERE nome = 'Neurologia';  -- Pronto-Socorro Adulto
INSERT INTO departamento_especialidade (id_departamento, id_especialidade)
    SELECT 2, id_especialidade FROM especialidade WHERE nome = 'Pediatria';  -- Pronto-Socorro Infantil
INSERT INTO departamento_especialidade (id_departamento, id_especialidade)
    SELECT 3, id_especialidade FROM especialidade WHERE nome = 'Radiologia';  -- Radiologia e Imagem
INSERT INTO departamento_especialidade (id_departamento, id_especialidade)
    SELECT 4, id_especialidade FROM especialidade WHERE nome = 'Ortopedia';  -- Ambulatório de Ortopedia
INSERT INTO departamento_especialidade (id_departamento, id_especialidade)
    SELECT 5, id_especialidade FROM especialidade WHERE nome = 'Clínica Médica';  -- Ambulatório de Especialidades Clínicas
INSERT INTO departamento_especialidade (id_departamento, id_especialidade)
    SELECT 5, id_especialidade FROM especialidade WHERE nome = 'Cardiologia';  -- Ambulatório de Especialidades Clínicas
INSERT INTO departamento_especialidade (id_departamento, id_especialidade)
    SELECT 5, id_especialidade FROM especialidade WHERE nome = 'Neurologia';  -- Ambulatório de Especialidades Clínicas
INSERT INTO departamento_especialidade (id_departamento, id_especialidade)
    SELECT 5, id_especialidade FROM especialidade WHERE nome = 'Dermatologia';  -- Ambulatório de Especialidades Clínicas
INSERT INTO departamento_especialidade (id_departamento, id_especialidade)
    SELECT 5, id_especialidade FROM especialidade WHERE nome = 'Psiquiatria';  -- Ambulatório de Especialidades Clínicas
INSERT INTO departamento_especialidade (id_departamento, id_especialidade)
    SELECT 6, id_especialidade FROM especialidade WHERE nome = 'Ginecologia e Obstetrícia';  -- Ambulatório da Mulher
INSERT INTO departamento_especialidade (id_departamento, id_especialidade)
    SELECT 7, id_especialidade FROM especialidade WHERE nome = 'Medicina Intensiva';  -- UTI Adulto
INSERT INTO departamento_especialidade (id_departamento, id_especialidade)
    SELECT 7, id_especialidade FROM especialidade WHERE nome = 'Anestesiologia';  -- UTI Adulto
INSERT INTO departamento_especialidade (id_departamento, id_especialidade)
    SELECT 7, id_especialidade FROM especialidade WHERE nome = 'Clínica Médica';  -- UTI Adulto
INSERT INTO departamento_especialidade (id_departamento, id_especialidade)
    SELECT 7, id_especialidade FROM especialidade WHERE nome = 'Cardiologia';  -- UTI Adulto
INSERT INTO departamento_especialidade (id_departamento, id_especialidade)
    SELECT 8, id_especialidade FROM especialidade WHERE nome = 'Cirurgia Geral';  -- Centro Cirúrgico
INSERT INTO departamento_especialidade (id_departamento, id_especialidade)
    SELECT 8, id_especialidade FROM especialidade WHERE nome = 'Anestesiologia';  -- Centro Cirúrgico
INSERT INTO departamento_especialidade (id_departamento, id_especialidade)
    SELECT 8, id_especialidade FROM especialidade WHERE nome = 'Ortopedia';  -- Centro Cirúrgico
INSERT INTO departamento_especialidade (id_departamento, id_especialidade)
    SELECT 8, id_especialidade FROM especialidade WHERE nome = 'Ginecologia e Obstetrícia';  -- Centro Cirúrgico
INSERT INTO departamento_especialidade (id_departamento, id_especialidade)
    SELECT 8, id_especialidade FROM especialidade WHERE nome = 'Neurologia';  -- Centro Cirúrgico
INSERT INTO departamento_especialidade (id_departamento, id_especialidade)
    SELECT 9, id_especialidade FROM especialidade WHERE nome = 'Ginecologia e Obstetrícia';  -- Maternidade
INSERT INTO departamento_especialidade (id_departamento, id_especialidade)
    SELECT 9, id_especialidade FROM especialidade WHERE nome = 'Pediatria';  -- Maternidade
INSERT INTO departamento_especialidade (id_departamento, id_especialidade)
    SELECT 9, id_especialidade FROM especialidade WHERE nome = 'Anestesiologia';  -- Maternidade
