# Sistema de Gestão Clínica Médica

🏥 MedControl - Banco de dados para gestão integrada de clínicas médicas

### Descrição do Problema Modelado
Problemas resolvidos:

📅 Agendamentos conflitantes de consultas

📊 Falta de visibilidade sobre pacientes e convênios

💰 Controle financeiro inadequado de pagamentos

🏥 Dificuldade em gerar relatórios por especialidade

### Explicação das Entidades e Relacionamentos
Principais Tabelas:

-pacientes-	Cadastro de pacientes	Pertence a 1 convênio

-medicos-	Corpo clínico	Possui 1 especialidade

-consultas-	Agenda médica	Relaciona paciente e médico

<img width="766" height="571" alt="Captura de tela 2025-08-04 075022" src="https://github.com/user-attachments/assets/6cb21403-cc80-460f-ac6e-1cb21281e5c5" />

### Diagrama Simplificado:

<img width="854" height="774" alt="Captura de tela 2025-08-04 073944" src="https://github.com/user-attachments/assets/04ddb1d4-9b42-4c3c-b3a5-7508bfc29e99" />

### Exemplos de Consultas Realizadas
1. Pacientes por Convênio

SELECT 

    IFNULL(cv.nome, 'Particular') AS convenio,

    COUNT(p.id) AS total_pacientes
    
    FROM pacientes p

    LEFT JOIN convenios cv ON p.convenio_id = cv.id

    GROUP BY convenio;

 Resultado:
 
<img width="554" height="529" alt="image" src="https://github.com/user-attachments/assets/b48400ed-1ff2-4e50-a175-abcee6efd6a4" />


### 📝 Licença
MIT License © [Amanda Simão Casagrande]

### Repositório: https://github.com/Casagrande80/TRABALHO-BD-2025.git

