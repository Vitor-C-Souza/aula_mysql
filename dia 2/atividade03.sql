CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL,
estoque INTEGER NOT NULL,
preco DECIMAL(5,2),
categoriaid BIGINT NOT NULL,
CONSTRAINT fk_categoria_produto FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Medicamentos', 'Medicamentos para uso geral'),
('Higiene Pessoal', 'Produtos para higiene pessoal e cuidados com a pele'),
('Suplementos', 'Suplementos alimentares e vitaminas'),
('Cosméticos', 'Produtos cosméticos e cuidados estéticos'),
('Produtos de Bebê', 'Produtos e cuidados para bebês');

INSERT INTO tb_produtos (nome, descricao, estoque, preco, categoriaid) VALUES
('Paracetamol', 'Medicamento para alívio de dores e febre', 100, 12.90, 1),
('Aspirina', 'Aspirina 500mg, alívio de dores e inflamação', 150, 19.90, 1),
('Shampoo Antiqueda', 'Shampoo contra queda de cabelo', 50, 35.90, 2),
('Escova de Dente Elétrica', 'Escova elétrica para escovação eficiente', 80, 79.90, 2),
('Creatina', 'Suplemento alimentar para aumento de massa muscular', 40, 89.90, 3),
('Multivitamínico', 'Suplemento com vitaminas e minerais', 60, 49.90, 3),
('Creme Anti-Rugas', 'Creme facial anti-rugas para pele madura', 30, 65.00, 4),
('Protetor Solar', 'Protetor solar fator 50, pele oleosa', 120, 39.90, 4),
('Fralda Descartável', 'Fralda descartável tamanho M para bebês', 200, 35.90, 5),
('Pomada para Assaduras', 'Pomada para prevenir e tratar assaduras de bebês', 90, 55.90, 5);


SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";


SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id WHERE tb_categorias.id = 4;