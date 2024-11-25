CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL,
material VARCHAR(255) NOT NULL,
preco DECIMAL(5,2),
categoriaid BIGINT NOT NULL,
CONSTRAINT fk_categoria_produto FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Materiais de Construção', 'Itens essenciais para a construção civil, como cimento, areia, etc.'),
('Ferramentas e Equipamentos', 'Ferramentas e equipamentos utilizados na construção e reparos.'),
('Decoração e Acabamento', 'Produtos de acabamento e decoração para imóveis, como pisos e tintas.'),
('Móveis e Utensílios', 'Móveis para casa e utensílios para uso no dia a dia na construção.'),
('Eletrônicos e Automação', 'Produtos eletrônicos e de automação para otimização de construções.');

INSERT INTO tb_produtos (nome, descricao, material, preco, categoriaid) VALUES
('Cimento Portland', 'Cimento para construção civil, utilizado em diversas obras.', 'Cimento', 45.90, 1), 
('Cadeira de Alumínio', 'Cadeira leve e resistente para uso em construção e camping.', 'Alumínio', 139.90, 4), 
('Caixa d\'Água', 'Caixa d\'água de polietileno para armazenamento de água.', 'Plástico', 120.00, 1),
('Cortador de Grama', 'Cortador de grama elétrico para jardins e espaços ao ar livre.', 'Plástico e metal', 189.90, 2), 
('Chave Inglesa', 'Chave inglesa ajustável para apertar e soltar porcas e parafusos.', 'Aço', 49.90, 2),
('Cano PVC', 'Cano de PVC para condução de água e esgoto em construções.', 'PVC', 35.90, 1),
('Cortina de Tecido', 'Cortina de tecido para decoração de janelas.', 'Tecido', 79.90, 3),
('Cadeira de Escritório', 'Cadeira ergonômica de escritório, confortável para longas horas.', 'Espuma e tecido', 149.90, 4);

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id WHERE tb_categorias.id = 4;