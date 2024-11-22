CREATE DATABASE db_ecommerce;

use db_ecommerce;

CREATE TABLE Produto (
    id INT AUTO_INCREMENT PRIMARY KEY,    
    nome VARCHAR(100) NOT NULL,             
    descricao TEXT NOT NULL,                
    preco DECIMAL(6, 2) NOT NULL,          
    estoque INT NOT NULL                    
);

INSERT INTO tb_produto (nome, descricao, preco, estoque) VALUES
('Galaxy S22', 'Smartphone da Samsung.', 4500.00, 25),
('Notebook Dell', 'Notebook', 6500.00, 15),
('Fone de Ouvido Bluetooth GT1 PRO', 'Fone de ouvido sem fio da haylou.', 350.00, 50),
('Smart TV', 'Smart TV 4K com 55 polegadas.', 3200.00, 10),
('Mouse Gamer Logitech', 'Mouse gamer com 11 botões programáveis e iluminação RGB.', 250.00, 100),
('Teclado Mecanico', 'Teclado Mecanico hyperx switch grey', 500.00, 100),
('Monitor AOC', 'Monitor 60hz FullHD', 700.00, 100),
('Nobreak SMS', 'Nobreak SMS 600w', 600.00, 20);


SELECT * FROM tb_produto WHERE preco > 500;

SELECT * FROM tb_produto WHERE preco < 500;

UPDATE Produto SET preco = 100 WHERE id = 3;