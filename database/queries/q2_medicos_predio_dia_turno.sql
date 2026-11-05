-- Q2: médicos presentes em um prédio na quarta-feira à tarde
SELECT m.nome, e.nome AS especialidade, d.nome AS departamento
FROM alocacao a
JOIN medico        m USING (id_medico)
JOIN especialidade e USING (id_especialidade)
JOIN departamento  d USING (id_departamento)
JOIN predio        p USING (id_predio)
JOIN turno         t USING (id_turno)
WHERE p.nome = 'Bloco C' AND a.dia_semana = 3 AND t.nome = 'Tarde'
ORDER BY d.nome, m.nome;
