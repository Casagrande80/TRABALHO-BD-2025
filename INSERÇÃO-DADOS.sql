INSERT INTO convenios (nome, cobertura) VALUES 
('Unimed', 80.00),
('Amil', 70.00),
('Bradesco Saúde', 85.00),
('SulAmérica', 90.00),
('Hapvida', 75.00);

INSERT INTO especialidades (nome) VALUES
('Cardiologia'),
('Dermatologia'),
('Pediatria'),
('Ortopedia'),
('Ginecologia');

INSERT INTO pacientes (nome, cpf, telefone, data_nascimento, convenio_id) VALUES
('João Silva', '123.456.789-01', '(11) 9999-8888', '1980-05-15', 1),
('Maria Oliveira', '987.654.321-02', '(11) 7777-6666', '1992-08-22', 2),
('Carlos Santos', '456.789.123-03', '(21) 5555-4444', '1975-11-30', NULL),
('Ana Pereira', '789.123.456-04', '(31) 3333-2222', '1988-03-10', 3),
('Pedro Costa', '321.654.987-05', '(41) 1111-0000', '1995-07-18', 4);

INSERT INTO medicos (nome, crm, especialidade_id) VALUES
('Dr. Roberto Almeida', 'CRM/SP 12345', 1),
('Dra. Fernanda Lima', 'CRM/SP 54321', 2),
('Dr. Marcelo Castro', 'CRM/RJ 67890', 3),
('Dra. Patricia Rocha', 'CRM/MG 09876', 4),
('Dr. Tiago Nunes', 'CRM/PR 13579', 5);

INSERT INTO consultas (data_hora, status, paciente_id, medico_id) VALUES
('2023-12-01 09:00:00', 'agendada', 1, 1),
('2023-12-02 10:30:00', 'agendada', 2, 2),
('2023-12-03 14:00:00', 'realizada', 3, 3),
('2023-11-15 16:30:00', 'realizada', 4, 4),
('2023-11-10 08:00:00', 'cancelada', 5, 5);

INSERT INTO pagamentos (valor, data_pagamento, status, consulta_id) VALUES
(250.00, '2023-11-16', 'pago', 3),
(180.00, NULL, 'pendente', 1),
(300.00, '2023-11-17', 'pago', 4),
(200.00, NULL, 'cancelado', 5),
(150.00, NULL, 'pendente', 2);