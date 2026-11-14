-- ============================================================================
-- PROJETO ESCALA MÉDICA - CONSULTAS SQL (Q1 a Q6)
-- Banco de dados: database/escala.sqlite
-- ============================================================================

-- ----------------------------------------------------------------------------
-- Q1: Escala semanal completa de um médico
-- Descrição: Lista todos os dias, turnos, prédios e departamentos onde o médico
--            com o CRM especificado está alocado.
-- ----------------------------------------------------------------------------
SELECT 
    m.nome, 
    a.dia_semana, 
    t.nome AS turno, 
    p.nome AS predio, 
    d.nome AS departamento
FROM alocacao a
JOIN medico       m USING (id_medico)
JOIN turno        t USING (id_turno)
JOIN departamento d USING (id_departamento)
JOIN predio       p USING (id_predio)
WHERE m.crm = '169194-SP'
ORDER BY a.dia_semana, t.hora_inicio;


-- ----------------------------------------------------------------------------
-- Q2: Médicos presentes em um prédio na quarta-feira à tarde
-- Descrição: Busca médicos alocados no Bloco C na quarta-feira (dia_semana = 3)
--            no turno da tarde.
-- ----------------------------------------------------------------------------
SELECT 
    m.nome, 
    e.nome AS especialidade, 
    d.nome AS departamento
FROM alocacao a
JOIN medico        m USING (id_medico)
JOIN especialidade e USING (id_especialidade)
JOIN departamento  d USING (id_departamento)
JOIN predio        p USING (id_predio)
JOIN turno         t USING (id_turno)
WHERE p.nome = 'Bloco C' 
  AND a.dia_semana = 3 
  AND t.nome = 'Tarde'
ORDER BY d.nome, m.nome;


-- ----------------------------------------------------------------------------
-- Q3: Médicos sem nenhuma alocação na semana
-- Descrição: Retorna médicos cadastrados que não têm nenhum registro na tabela
--            de alocação.
-- ----------------------------------------------------------------------------
SELECT 
    m.id_medico, 
    m.nome, 
    e.nome AS especialidade
FROM medico m
JOIN especialidade e USING (id_especialidade)
LEFT JOIN alocacao a USING (id_medico)
WHERE a.id_alocacao IS NULL
ORDER BY m.nome;


-- ----------------------------------------------------------------------------
-- Q4: Alocações em departamento incompatível com a especialidade (RN02)
-- Descrição: Valida se algum médico foi alocado em departamento que não aceita
--            sua especialidade. O resultado esperado é VAZIO (0 registros).
-- ----------------------------------------------------------------------------
SELECT 
    a.id_alocacao, 
    m.nome, 
    d.nome AS departamento
FROM alocacao a
JOIN medico       m USING (id_medico)
JOIN departamento d USING (id_departamento)
LEFT JOIN departamento_especialidade de
       ON de.id_departamento = a.id_departamento
      AND de.id_especialidade = m.id_especialidade
WHERE de.id_departamento IS NULL;


-- ----------------------------------------------------------------------------
-- Q5: Horas alocadas x carga do regime de trabalho (RN03)
-- Descrição: Compara as horas totais alocadas de cada médico com a carga semanal
--            do seu regime de trabalho, sinalizando se 'EXCEDEU' ou 'OK'.
-- ----------------------------------------------------------------------------
SELECT 
    m.nome, 
    r.descricao AS regime, 
    r.carga_horaria_semanal AS carga,
    COALESCE(SUM(t.duracao_horas), 0) AS horas_alocadas,
    CASE 
        WHEN COALESCE(SUM(t.duracao_horas), 0) > r.carga_horaria_semanal THEN 'EXCEDEU' 
        ELSE 'OK' 
    END AS situacao
FROM medico m
JOIN regime_trabalho r USING (id_regime)
LEFT JOIN alocacao a USING (id_medico)
LEFT JOIN turno    t USING (id_turno)
GROUP BY m.id_medico
ORDER BY horas_alocadas DESC, m.nome;


-- ----------------------------------------------------------------------------
-- Q6: Quantidade de médicos por departamento em cada dia da semana
-- Descrição: Agrupa a quantidade de médicos distintos atuando em cada
--            departamento por dia da semana (1 = Segunda a 7 = Domingo).
-- ----------------------------------------------------------------------------
SELECT 
    d.nome AS departamento, 
    a.dia_semana, 
    COUNT(DISTINCT a.id_medico) AS medicos
FROM alocacao a
JOIN departamento d USING (id_departamento)
GROUP BY d.id_departamento, a.dia_semana
ORDER BY d.nome, a.dia_semana;
