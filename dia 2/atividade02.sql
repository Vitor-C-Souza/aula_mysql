CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255)
);

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
sabor VARCHAR(255) NOT NULL,
borda VARCHAR(255) NOT NULL,
preco DECIMAL(5,2),
categoriaid BIGINT NOT NULL,
CONSTRAINT fk_categoria_pizza FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Tradicional', 'Sabores clássicos e populares'),
('Especial', 'Ingredientes diferenciados e receitas exclusivas'),
('Doce', 'Pizzas com sabores adocicados'),
('Vegana', 'Sem ingredientes de origem animal'),
('Premium', 'Pizzas gourmet com ingredientes sofisticados');

INSERT INTO tb_pizzas (nome, sabor, borda, preco, categoriaid) VALUES
('Calabresa', 'Calabresa com cebola e azeitonas', 'Recheada de queijo', 34.90, 1),
('Marguerita', 'Tomate, manjericão e muçarela', 'Tradicional', 39.90, 1),
('Quatro Queijos', 'Muçarela, provolone, parmesão, gorgonzola', 'Recheada de catupiry', 42.90, 2),
('Frango com Catupiry', 'Frango desfiado e catupiry', 'Recheada de catupiry', 46.00, 2),
('Chocolate', 'Cobertura de chocolate ao leite', 'Tradicional', 28.90, 3),
('Banana com Canela', 'Banana, canela e açúcar', 'Tradicional', 32.90, 3),
('Veggie', 'Tomate seco, rúcula e azeitonas', 'Sem borda', 36.90, 4),
('Trufa Negra', 'Trufas negras com parmesão e azeite trufado', 'Recheada de gorgonzola', 59.90, 5);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id WHERE tb_categorias.id = 3;
