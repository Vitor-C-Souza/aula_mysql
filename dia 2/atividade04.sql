CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL,
tipo_carne VARCHAR(255) NOT NULL,
preco DECIMAL(5,2),
categoriaid BIGINT NOT NULL,
CONSTRAINT fk_categoria_produto FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Carnes Bovinas', 'Carnes provenientes de gado bovino, como picanha, alcatra, etc.'),
('Carnes Suínas', 'Carnes provenientes de suínos, como costela, pernil, etc.'),
('Carnes de Aves', 'Carnes provenientes de frangos, perus, etc.'),
('Carnes Exóticas', 'Carnes de animais menos convencionais, como cordeiro, javali, etc.'),
('Cortes Especiais', 'Cortes de carnes com técnicas especiais de preparo e maturação.');

INSERT INTO tb_produtos (nome, descricao, tipo_carne, preco, categoriaid) VALUES
('Picanha Premium', 'Picanha bovina de alta qualidade', 'Bovina', 119.90, 1),
('Costela Suína', 'Costela suína com tempero especial', 'Suína', 45.90, 2),
('Coxinha da Asa', 'Coxinha da asa de frango marinada', 'Aves', 29.90, 3),
('Cordeiro Inteiro', 'Cordeiro inteiro para assado', 'Exótica', 179.90, 4),
('Costela de Javali', 'Costela de javali defumada', 'Exótica', 169.90, 4),
('Filé Mignon', 'Filé mignon bovino', 'Bovina', 199.90, 1),
('Bife de Alcatra', 'Bife macio de alcatra', 'Bovina', 79.90, 1),
('Coxas de Frango', 'Coxas de frango assadas', 'Aves', 29.90, 3);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id WHERE tb_categorias.id = 4;

