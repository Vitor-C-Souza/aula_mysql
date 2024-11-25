CREATE DATABASE db_escola;

use db_escola;

CREATE TABLE tb_aluno (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    serie VARCHAR(20) NOT NULL,
    nota DECIMAL(4, 2) NOT NULL
);

INSERT INTO tb_aluno (nome, idade, serie, nota) VALUES
('Lucas', 15, '9º Ano', 8.5),
('Vítor', 13, '6º Ano', 9.0),
('Emerson', 12, '6º Ano', 7.8),
('Rodigo', 8, '2º Ano', 8.2),
('Sthefany', 9, '3º Ano', 7.5),
('Pedro', 10, '4º Ano', 3),
('Naiara', 13, '8º Ano', 10),
('Arthur', 13, '8º Ano', 6);

SELECT * FROM tb_aluno WHERE nota > 7;

SELECT * FROM tb_aluno WHERE nota < 7;

UPDATE tb_aluno SET nota = 1 WHERE id = 1;