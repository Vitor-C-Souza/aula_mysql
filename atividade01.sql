CREATE DATABASE db_empresaex01;

use db_empresaex01;

CREATE TABLE Funcionario (
    id INT AUTO_INCREMENT PRIMARY KEY,    
    nome VARCHAR(100) NOT NULL,              
    cargo VARCHAR(50) NOT NULL,              
    salario DECIMAL(10, 2) NOT NULL,         
    data_de_contrato DATE NOT NULL              
);

INSERT INTO tb_funcionario (nome, cargo, salario, data_de_Contrato) VALUES
('Vítor', 'Analista de RH', 4500.00, '2022-03-15'),
('Ana', 'Gerente de Projetos', 8500.00, '2020-07-10'),
('Mariana', 'Assistente Administrativo', 3200.00, '2023-01-05'),
('Arthur', 'Desenvolvedor Back-end', 6000.00, '2021-09-12'),
('Sthefany', 'Diretora de Recursos Humanos', 12000.00, '2019-04-01');

SELECT * FROM tb_funcionario WHERE salario > 2000;

SELECT * FROM tb_funcionario WHERE salario < 2000;

UPDATE Funcionario SET nome = "Marcela" WHERE id = 5;


