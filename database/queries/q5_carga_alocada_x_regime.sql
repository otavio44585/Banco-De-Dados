-- Q5: horas alocadas x carga do regime (RN03)
SELECT m.nome, r.descricao AS regime, r.carga_horaria_semanal AS carga,
       COALESCE(SUM(t.duracao_horas), 0) AS horas_alocadas,
       CASE WHEN COALESCE(SUM(t.duracao_horas), 0) > r.carga_horaria_semanal
            THEN 'EXCEDEU' ELSE 'OK' END AS situacao
FROM medico m
JOIN regime_trabalho r USING (id_regime)
LEFT JOIN alocacao a USING (id_medico)
LEFT JOIN turno    t USING (id_turno)
GROUP BY m.id_medico
ORDER BY horas_alocadas DESC, m.nome;
