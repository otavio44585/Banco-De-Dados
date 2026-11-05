-- Q6: quantidade de médicos por departamento em cada dia da semana
SELECT d.nome AS departamento, a.dia_semana, COUNT(DISTINCT a.id_medico) AS medicos
FROM alocacao a
JOIN departamento d USING (id_departamento)
GROUP BY d.id_departamento, a.dia_semana
ORDER BY d.nome, a.dia_semana;
