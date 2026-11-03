-- Consulta para RN03 - Carga do regime
-- Devolve os médicos cuja soma das horas dos turnos alocados ultrapassa a carga horária semanal do seu regime.
SELECT 
    m.nome AS medico,
    r.carga_horaria_semanal AS limite_horas,
    SUM(t.horas) AS horas_alocadas
FROM alocacao a
JOIN medico m ON a.id_medico = m.id_medico
JOIN regime_trabalho r ON m.id_regime = r.id_regime
JOIN turno t ON a.id_turno = t.id_turno
GROUP BY m.id_medico, m.nome, r.carga_horaria_semanal
HAVING SUM(t.horas) > r.carga_horaria_semanal;
