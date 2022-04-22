-- Atividade 1

-- 1- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos colaboradores desta empresa.
CREATE DATABASE db_rh;
USE db_rh;

-- 2- Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.
CREATE TABLE tb_info_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
cpf VARCHAR(11),
telefone VARCHAR(15),
idade INT,
salario DECIMAL(6,2),

PRIMARY KEY (id)
);

-- 3- Insira nesta tabela no mínimo 5 dados (registros).
INSERT INTO tb_info_colaboradores(nome, cpf, telefone, idade, salario)
VALUES("Boris","06359261202","98446782",30,5800.50);

INSERT INTO tb_info_colaboradores(nome, cpf, telefone, idade, salario)
VALUES("Bart","05259233301","92336188",25,1900.00);

INSERT INTO tb_info_colaboradores(nome, cpf, telefone, idade, salario)
VALUES("Tesla","09259552303","97946782",18,1500.00);

INSERT INTO tb_info_colaboradores(nome, cpf, telefone, idade, salario)
VALUES("Naruto","07359236601","94574467",35,2600.00);

INSERT INTO tb_info_colaboradores(nome, cpf, telefone, idade, salario)
VALUES("Kyra","07779232602","93435749",33,5000.00);

SELECT * FROM tb_info_colaboradores;

-- 4- Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
SELECT * FROM tb_info_colaboradores WHERE salario > 2000;

-- 5- Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
SELECT * FROM tb_info_colaboradores WHERE salario < 2000;

-- 6- Ao término atualize um registro desta tabela através de uma query de atualização.
UPDATE tb_info_colaboradores SET salario = 7000.00 WHERE id=1;

/* 7- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal,
 no repositório que você criou sobre Banco de dados.*/
 
-- _______________________________________________________________________

-- Atividade 2

-- 1- Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce.
CREATE DATABASE db_ecommerce;
USE db_ecommerce;

-- 2- Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT, 
tipo VARCHAR(50),
garantia VARCHAR(10),
quantidade BIGINT,
avaliacao DECIMAL(6,1),
valor DECIMAL(6,2),

PRIMARY KEY (id)
);

-- 3- Insira nesta tabela no mínimo 8 dados (registros).
INSERT INTO tb_produtos(tipo, garantia, quantidade, avaliacao, valor)
VALUES("Celular","1 ano",30,4.8,3000.00);

INSERT INTO tb_produtos(tipo, garantia, quantidade, avaliacao, valor)
VALUES("Computador","2 anos",32,4.5,2500.80);

INSERT INTO tb_produtos(tipo, garantia, quantidade, avaliacao, valor)
VALUES("TV","3 anos",50,4.9,5000.00);

INSERT INTO tb_produtos(tipo, garantia, quantidade, avaliacao, valor)
VALUES("Geladeira","2 anos",10,5.0,7500.00);

INSERT INTO tb_produtos(tipo, garantia, quantidade, avaliacao, valor)
VALUES("Cafeteira","6 meses",25,4.3,200.50);

INSERT INTO tb_produtos(tipo, garantia, quantidade, avaliacao, valor)
VALUES("Secador","8 meses",77,4.5,350.99);

INSERT INTO tb_produtos(tipo, garantia, quantidade, avaliacao, valor)
VALUES("Fone","1 ano",50,4.8,450.60);

INSERT INTO tb_produtos(tipo, garantia, quantidade, avaliacao, valor)
VALUES("Monitor","2 anos",07,4.9,2600.00);

SELECT * FROM tb_produtos;

-- 4- Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
SELECT * FROM tb_produtos WHERE valor > 500;

-- 5- Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
SELECT * FROM tb_produtos WHERE valor < 500;

-- 6- Ao término atualize um registro desta tabela através de uma query de atualização.
UPDATE tb_produtos SET quantidade = 55 WHERE id = 4;

/*7- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal,
 no repositório que você criou sobre Banco de dados.*/

-- _______________________________________________________________________

-- Atividade 3

-- 1- Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola.
CREATE DATABASE db_escola;
USE db_escola;

-- 2- Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
CREATE TABLE tb_estudantes(
    id BIGINT AUTO_INCREMENT, 
    nome_do_estudante VARCHAR(200),
    ano_letivo VARCHAR(3),
    idade INT,
    periodo_de_aula VARCHAR(10),
    nota_geral DECIMAL(6,1),
    
    PRIMARY KEY(id)
);

-- 3- Insira nesta tabela no mínimo 8 dados (registros).
INSERT INTO tb_estudantes (nome_do_estudante, ano_letivo, idade, periodo_de_aula, nota_geral)
VALUES("Boris Pran","9ªA",13,"Noturno",9.5);

INSERT INTO tb_estudantes (nome_do_estudante, ano_letivo, idade, periodo_de_aula, nota_geral)
VALUES("Maria Paula","9ªB",13,"Noturno",10.0);

INSERT INTO tb_estudantes (nome_do_estudante, ano_letivo, idade, periodo_de_aula, nota_geral)
VALUES("Tesla Dini","6ªA",10,"Matutino",6.0);

INSERT INTO tb_estudantes (nome_do_estudante, ano_letivo, idade, periodo_de_aula, nota_geral)
VALUES("Naruto Garcia","5ªB",09,"Matutino",6.5);

INSERT INTO tb_estudantes (nome_do_estudante, ano_letivo, idade, periodo_de_aula, nota_geral)
VALUES("Bart Gomes","8ªC",12,"Vespertino",6.0);

INSERT INTO tb_estudantes (nome_do_estudante, ano_letivo, idade, periodo_de_aula, nota_geral)
VALUES("Kyra Linda","7ªC",11,"Vespertino",10.0);

INSERT INTO tb_estudantes (nome_do_estudante, ano_letivo, idade, periodo_de_aula, nota_geral)
VALUES("Filomena Amada","9ªA",13,"Integral",9.5);

INSERT INTO tb_estudantes (nome_do_estudante, ano_letivo, idade, periodo_de_aula, nota_geral)
VALUES("Lola Lolita","6ªB",10,"Integral",6.9);

SELECT * FROM tb_estudantes;

-- 4- Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.
SELECT * FROM tb_estudantes WHERE nota_geral > 7.0;

-- 5- Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
SELECT * FROM tb_estudantes WHERE nota_geral < 7.0;

-- 6- Ao término atualize um registro desta tabela através de uma query de atualização.
UPDATE tb_estudantes SET nota_geral = 6.5 WHERE id = 3;

/* 7- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal,
no repositório que você criou sobre Banco de dados.
*/