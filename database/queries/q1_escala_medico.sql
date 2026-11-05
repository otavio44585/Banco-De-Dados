-- Q1: escala semanal completa de um médico
SELECT m.nome, a.dia_semana, t.nome AS turno, p.nome AS predio, d.nome AS departamento
FROM alocacao a
JOIN medico       m USING (id_medico)
JOIN turno        t USING (id_turno)
JOIN departamento d USING (id_departamento)
JOIN predio       p USING (id_predio)
WHERE m.crm = '169194-SP'
ORDER BY a.dia_semana, t.hora_inicio;
