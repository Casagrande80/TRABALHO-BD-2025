SELECT * FROM pacientes;

SELECT 
    IFNULL(cv.nome, 'Particular') AS convenio,
    COUNT(p.id) AS total_pacientes
FROM pacientes p
LEFT JOIN convenios cv ON p.convenio_id = cv.id
GROUP BY convenio;

SELECT 
    m.nome AS medico,
    COUNT(c.id) AS total_consultas,
    SUM(pg.valor) AS total_recebido
FROM medicos m
LEFT JOIN consultas c ON m.id = c.medico_id
LEFT JOIN pagamentos pg ON c.id = pg.consulta_id AND pg.status = 'pago'
GROUP BY m.id;