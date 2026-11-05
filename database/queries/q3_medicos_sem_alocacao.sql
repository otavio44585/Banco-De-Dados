-- Q3: médicos sem nenhuma alocação na semana
SELECT m.id_medico, m.nome, e.nome AS especialidade
FROM medico m
JOIN especialidade e USING (id_especialidade)
LEFT JOIN alocacao a USING (id_medico)
WHERE a.id_alocacao IS NULL
ORDER BY m.nome;
