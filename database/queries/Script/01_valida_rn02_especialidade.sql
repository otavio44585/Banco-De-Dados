-- Consulta para RN02 - Especialidade compatível
-- Devolve os médicos que estão alocados a um departamento que não suporta a sua especialidade.
SELECT 
    m.nome AS medico, 
    d.nome AS departamento
FROM alocacao a
JOIN medico m ON a.id_medico = m.id_medico
JOIN departamento d ON a.id_departamento = d.id_departamento
LEFT JOIN departamento_especialidade de 
    ON d.id_departamento = de.id_departamento 
    AND m.id_especialidade = de.id_especialidade
WHERE de.id_especialidade IS NULL;
