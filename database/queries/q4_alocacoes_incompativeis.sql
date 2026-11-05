-- Q4: alocações em departamento incompatível com a especialidade (deve retornar vazio, RN02)
SELECT a.id_alocacao, m.nome, d.nome AS departamento
FROM alocacao a
JOIN medico       m USING (id_medico)
JOIN departamento d USING (id_departamento)
LEFT JOIN departamento_especialidade de
       ON de.id_departamento = a.id_departamento
      AND de.id_especialidade = m.id_especialidade
WHERE de.id_departamento IS NULL;
