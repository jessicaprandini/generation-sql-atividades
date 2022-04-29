-- 1- Crie um banco de dados para um serviço de uma quitanda, onde o sistema trabalhará com as informações dos produtos desta empresa.
CREATE DATABASE db_quitanda;
USE db_quitanda;

-- 2- Crie uma tabela de produtos e determine 5 atributos relevantes para se trabalhar com o serviço desta quitanda.
CREATE TABLE tb_produtos(
    id_produto bigint auto_increment primary key,
    nome varchar(255),
    qtd bigint,
    valor decimal(6,2),
    avaliacao double,
    id_categoria bigint
);

-- 3- Crie uma tabela de categorias para esses produtos.
CREATE TABLE tb_categoria(
    id_categoria bigint auto_increment primary key,
    nome_categoria varchar(255)
);

-- 4- Faça o relacionamento de categorias na tabela de produto através da foreign key (id_categoria).
ALTER TABLE tb_produtos ADD CONSTRAINT id_fk_categoria
FOREIGN KEY(id_categoria) REFERENCES tb_categoria (id_categoria);

-- 5- Insira nestas tabelas no mínimo 5 dados (registros).
INSERT tb_categoria(nome_categoria)
VALUES("Legume");

INSERT tb_categoria(nome_categoria)
VALUES("Fruta");

INSERT tb_categoria(nome_categoria)
VALUES("Massa");

INSERT tb_categoria(nome_categoria)
VALUES("Grãos");

INSERT tb_categoria(nome_categoria)
VALUES("Bebida");
-- ______________________________________________________________________________
INSERT tb_produtos(nome, qtd, valor, avaliacao, id_categoria)
VALUES("Abobrinha",40,2.99,4.5,1);

INSERT tb_produtos(nome, qtd, valor, avaliacao, id_categoria)
VALUES("Manga",50,5.0,4.0,2);

INSERT tb_produtos(nome, qtd, valor, avaliacao, id_categoria)
VALUES("Macarrao",20,10.60,4.9,3);

INSERT tb_produtos(nome, qtd, valor, avaliacao, id_categoria)
VALUES("Aveia",25,51.00,4.5,4);

INSERT tb_produtos(nome, qtd, valor, avaliacao, id_categoria)
VALUES("Cerveja",99,55.70,5.0,5);

-- 6- Faça um SELECT que retorne todos os produtos.
SELECT * FROM tb_produtos;

-- 7- Faça um SELECT que retorne todas as categorias.
SELECT * FROM tb_categoria;

-- 8- Faça um SELECT que retorne todas as categorias com produtos de valor maior do que 50.
SELECT * FROM tb_categoria INNER JOIN tb_produtos ON  tb_categoria.id_categoria = 
tb_produtos.id_categoria WHERE tb_produtos.valor > 50.00;

-- 9- Faça um SELECT que retorne todos os produtos que contém a letra %a%.
SELECT * FROM tb_produtos WHERE nome LIKE "%a%";

-- 10- Ao término atualize um registro desta tabela através de uma query de atualização.
UPDATE tb_produtos SET nome = "Macarrao" WHERE id_produto = 3;

/* 11- Salve todas as queries para cada um dos requisitos do exercício em um único script 
(arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre 
Banco de dados. */