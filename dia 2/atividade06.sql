CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255)
);

CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL,
tempo VARCHAR(255) NOT NULL,
preco DECIMAL(5,2),
categoriaid BIGINT NOT NULL,
CONSTRAINT fk_categoria_curso FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Tecnologia e Programação', 'Cursos relacionados ao desenvolvimento de software, sistemas e programação.'),
('Marketing Digital', 'Cursos sobre estratégias e técnicas de marketing no ambiente digital.'),
('Gestão Empresarial', 'Cursos para desenvolver habilidades de gestão e administração de empresas.'),
('Design e UX/UI', 'Cursos voltados para design gráfico e experiência de usuário em interfaces digitais.'),
('Idiomas e Comunicação', 'Cursos de idiomas e comunicação eficaz em diferentes contextos.');

INSERT INTO tb_cursos (nome, descricao, tempo, preco, categoriaid) VALUES
('Java para Iniciantes', 'Curso básico de Java, ideal para quem está começando a programar.', '3 meses', 799.90, 1),
('Jornada do Marketing Digital', 'Curso completo de marketing digital, abordando todas as etapas de campanhas online.', '6 meses', 459.90, 2),
('Gestão de Pessoas e Liderança', 'Curso para desenvolver habilidades em gestão de equipes e liderança empresarial.', '4 meses', 699.90, 3),
('Design Gráfico e Photoshop', 'Curso de design gráfico com foco no uso de ferramentas como Photoshop e Illustrator.', '5 meses', 389.90, 4),
('Jornada do Empreendedor', 'Curso para quem deseja iniciar um novo negócio e entender os conceitos de empreendedorismo.', '4 meses', 999.90, 3),
('Curso Avançado de UX/UI', 'Curso avançado em design de interfaces e experiência do usuário.', '5 meses', 899.90, 4),
('Inglês para Negócios', 'Curso de inglês voltado para a comunicação no ambiente corporativo e negócios internacionais.', '6 meses', 499.90, 5),
('JavaScript para Web', 'Curso completo de JavaScript para desenvolver aplicações web interativas.', '3 meses', 549.90, 1);

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE "%J%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoriaid = tb_categorias.id;

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoriaid = tb_categorias.id WHERE tb_categorias.id = 4;
