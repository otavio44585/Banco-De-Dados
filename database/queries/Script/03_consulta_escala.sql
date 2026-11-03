-- A pergunta central: Em qual prédio e departamento o médico X está no dia Y, turno Z?
SELECT 
    m.nome AS medico,
    esp.nome AS especialidade,
    a.dia_semana,
    t.nome AS turno,
    p.nome AS predio,
    d.nome AS departamento
FROM alocacao a
JOIN medico m ON a.id_medico = m.id_medico
JOIN especialidade esp ON m.id_especialidade = esp.id_especialidade
JOIN departamento d ON a.id_departamento = d.id_departamento
JOIN predio p ON d.id_predio = p.id_predio
JOIN turno t ON a.id_turno = t.id_turno
WHERE m.nome = 'Ana Ribeiro'; -- Pode substituir pelo nome do médico que deseja pesquisar
