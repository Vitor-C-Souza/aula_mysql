CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255)
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
ataque INTEGER NOT NULL,
defesa INTEGER NOT NULL,
raca VARCHAR(255),
classeid BIGINT NOT NULL,
CONSTRAINT fk_classe_personagem FOREIGN KEY (classeid) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, descricao) VALUES
('Guerreiro', 'Especialista em combate corpo a corpo'),
('Mago', 'Usuário de magias poderosas'),
('Arqueiro', 'Especialista em ataques à distância'),
('Paladino', 'Defensor com habilidades divinas'),
('Assassino', 'Especialista em furtividade e ataques críticos');

INSERT INTO tb_personagens (nome, ataque, defesa, raca, classeid) VALUES
('Aragorn', 4500, 3800, 'Humano', 1),
('Gandalf', 1900, 500, 'Maia', 2),
('Legolas', 3000, 1700, 'Elfo', 3),
('Tirion', 1200, 4800, 'Humano', 4),
('Altair', 3500, 1000, 'Humano', 5),
('Boromir', 800, 1500, 'Humano', 1),
('Elrond', 4800, 4500, 'Elfo', 2),
('Cedric', 2200, 3100, 'Humano', 3);



SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT * FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classeid = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classeid = tb_classes.id WHERE tb_classes.nome = "Arqueiro";