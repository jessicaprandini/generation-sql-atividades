/*ATIVIDADE 01

Crie um banco de dados para um serviço de um Games Online.
O nome do Banco de dados deverá ter o seguinte nome db_generation_game_online.
O sistema trabalhará com as informações dos personagens do jogo. 
O sistema trabalhará com 2 tabelas tb_personagens e tb_classes, que deverão estar relacionadas.*/
 
CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;
 
-- 1- Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os personagens do Game Online.
CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(100),
    poder VARCHAR(255),
	PRIMARY KEY(id)
);

-- 2- Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, relevantes aos personagens do Game Online.
-- 3- Não esqueça de criar a Foreign Key da tabela tb_classes na tabela tb_personagens.
CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100),
    ataque DECIMAL(6,2),
    cura DECIMAL(6,2),
    defesa DECIMAL(6,2),
    fk_classe BIGINT,
    PRIMARY KEY(id),
	FOREIGN KEY(fk_classe) REFERENCES tb_classes(id)
); 

-- 4- Insira 5 registros na tabela tb_classes.
INSERT INTO tb_classes(nome, poder)
VALUES("Ninja","Vento Forte");
INSERT INTO tb_classes(nome, poder)
VALUES("Gato","Olhar Fofo");
INSERT INTO tb_classes(nome, poder)
VALUES("Doguinho","Super Latido");
INSERT INTO tb_classes(nome, poder)
VALUES("Boneca","Assustar");
INSERT INTO tb_classes(nome, poder)
VALUES("Passarinho","Canto Encantador");
										
-- 5- Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_classes.
INSERT INTO tb_personagens(nome, ataque, cura, defesa, fk_classe) 
VALUES("Mulan",2000.5,99.2,200.55,1);
INSERT INTO tb_personagens(nome, ataque, cura, defesa, fk_classe)
VALUES("Miau",99.15,2400.53,1640.25,2);
INSERT INTO tb_personagens(nome, ataque, cura, defesa, fk_classe) 
VALUES("Naruto", 100.99,900.50,1050.00,3);                                      
INSERT INTO tb_personagens(nome, ataque, cura, defesa, fk_classe) 
VALUES("Bart",98.45,2000.55,500.00,3);
INSERT INTO tb_personagens(nome, ataque, cura, defesa, fk_classe) 
VALUES("Tesla",200.25, 1500.99,222.54,5);
INSERT INTO tb_personagens(nome, ataque, cura, defesa, fk_classe) 
VALUES("Melanie",15.50,322.99,1100.10,4);
INSERT INTO tb_personagens(nome, ataque, cura, defesa, fk_classe) 
VALUES("Boris",1000.22,664.66,2446.23,2);
INSERT INTO tb_personagens(nome, ataque, cura, defesa, fk_classe) 
VALUES("Candy",100.77,3500.30,3000.99,4);

-- 6- Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
SELECT * FROM tb_personagens WHERE ataque > 2000;

-- 7- Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
SELECT * FROM tb_personagens WHERE defesa > 1000 AND defesa < 2000;

-- 8- Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

-- 9- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
SELECT * FROM tb_personagens INNER JOIN tb_classes ON fk_classe = tb_classes.id;

-- 10- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, 
-- onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros)
SELECT * FROM tb_personagens INNER JOIN tb_classes ON fk_classe = tb_classes.id WHERE tb_classes.nome = "Ninja";

-- 11- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, 
-- no repositório que você criou sobre Banco de dados.

-- ----------------------------------------------------------------------------------------------------------------------------------------

/*ATIVIDADE 02

Crie um banco de dados para um serviço de uma Pizzaria. 
O nome do Banco de dados deverá ter o seguinte nome db_pizzaria_legal.
O sistema trabalhará com as informações dos produtos comercializados pela empresa.
O sistema trabalhará com 2 tabelas tb_pizzas e tb_categorias, que deverão estar relacionadas.*/

CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

-- 1- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar as pizzas.
CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    sabor VARCHAR(150),
    quantidade_pizzas INT,
    PRIMARY KEY(id)
);

-- 2- Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria.
-- 3- Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas.
CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT,
    sabor VARCHAR(150),
    tamanho VARCHAR(150),
    ingredientes VARCHAR(255),
    preco DECIMAL(6,2),
	fk_categoria BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY(fk_categoria) REFERENCES tb_categorias(id)
);

-- 4- Insira 5 registros na tabela tb_categorias.
INSERT INTO tb_categorias(sabor, quantidade_pizzas)
VALUES("Salgadas",20);
INSERT INTO tb_categorias(sabor, quantidade_pizzas)
VALUES("Doces",10);
INSERT INTO tb_categorias(sabor, quantidade_pizzas)
VALUES("Especiais",5);
INSERT INTO tb_categorias(sabor, quantidade_pizzas)
VALUES("Supreme",5);
INSERT INTO tb_categorias(sabor, quantidade_pizzas)
VALUES("Especial Supreme",3);

-- 5- Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
INSERT INTO tb_pizzas(sabor, tamanho, ingredientes, preco, fk_categoria)
VALUES("Bacon", "Média", "Queijo, Bacon, Orégano",41.90,1);
INSERT INTO tb_pizzas(sabor, tamanho, ingredientes, preco, fk_categoria)
VALUES("Escarola com bacon", "Média", "Escarola, Bacon, Queijo",45.90,3);
INSERT INTO tb_pizzas(sabor, tamanho, ingredientes, preco, fk_categoria)
VALUES("Chocolate Branco", "Pequena", "Chocolate Branco",38.50,2);
INSERT INTO tb_pizzas(sabor, tamanho, ingredientes, preco, fk_categoria)
VALUES("Calabresa", "Grande", "Calabresa, Queijo, Cebola",45.90,1);
INSERT INTO tb_pizzas(sabor, tamanho, ingredientes, preco, fk_categoria)
VALUES("Pepperoni", "Grande", "Pepperoni, Queijo",60.50,4);
INSERT INTO tb_pizzas(sabor, tamanho, ingredientes, preco, fk_categoria)
VALUES("Camarão", "Média", "Camarão, Queijo, Temperos Verdes, Pimentão",70.50,5);
INSERT INTO tb_pizzas(sabor, tamanho, ingredientes, preco, fk_categoria)
VALUES("M&M's", "Pequena", "M&M's, Chocolate Preto",38.50,2);
INSERT INTO tb_pizzas(sabor, tamanho, ingredientes, preco, fk_categoria)
VALUES("Frango Caipira", "Pequena", "Frango e Milho",38.50,4);

-- 6- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
SELECT * FROM tb_pizzas WHERE preco > 45;

-- 7- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_pizzas WHERE preco > 50 and preco < 100;

-- 8- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";

-- 9- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
SELECT * FROM tb_pizzas INNER JOIN tb_categorias on tb_pizzas.fk_categoria = tb_categorias.id;

-- 10- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas
-- as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).
SELECT * FROM tb_pizzas INNER JOIN tb_categorias on tb_pizzas.fk_categoria = tb_categorias.id WHERE tb_categorias.sabor = "Doces";

-- 11- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, 
-- no repositório que você criou sobre Banco de dados.

-- ----------------------------------------------------------------------------------------------------------------------------------------

/*ATIVIDADE 03

Crie um banco de dados para um serviço de uma Farmácia.
O nome do Banco de dados deverá ter o seguinte nome db_farmacia_bem_estar.
O sistema trabalhará com as informações dos produtos comercializados pela empresa. 
O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas.*/

CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

-- 1- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
CREATE TABLE tb_categorias(
	id_categoria BIGINT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(150),
    tarja VARCHAR(100)
);

-- 2- Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
-- 3- Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.
CREATE TABLE tb_produtos(
	id_produto BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150),
    marca VARCHAR(150),
    tarja VARCHAR(100),
    preco DECIMAL(6,2),
    fk_categoria BIGINT,
    FOREIGN KEY(fk_categoria) REFERENCES tb_categorias(id_categoria)
);

-- 4- Insira 5 registros na tabela tb_categorias.
INSERT INTO tb_categorias(tipo, tarja)
VALUES("Cosméticos", "Uso livre");
INSERT INTO tb_categorias(tipo, tarja)
VALUES("Psicotrópicos", "Preta");
INSERT INTO tb_categorias(tipo, tarja)
VALUES("Fitoterapicos", "Uso livre");
INSERT INTO tb_categorias(tipo, tarja)
VALUES("Antibióticos", "Vermelha");
INSERT INTO tb_categorias(tipo, tarja)
VALUES("Clínicos", "Preta");

-- 5- Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
INSERT INTO tb_produtos(nome, marca, tarja, preco, fk_categoria)
VALUES("Base", "Rubi", "Uso livre",50.50,1);
INSERT INTO tb_produtos(nome, marca, tarja, preco, fk_categoria)
VALUES("Baton", "Natural", "Uso livre",60.90,1);
INSERT INTO tb_produtos(nome, marca, tarja, preco, fk_categoria)
VALUES("Zolpidem", "Dormir", "Preta",35.99,2);
INSERT INTO tb_produtos(nome, marca, tarja, preco, fk_categoria)
VALUES("Carbollitum", "Estab", "Preta",70.50,2);
INSERT INTO tb_produtos(nome, marca, tarja, preco, fk_categoria)
VALUES("Maracugina", "Maracujá", "Uso Livre",25.55,3);
INSERT INTO tb_produtos(nome, marca, tarja, preco, fk_categoria)
VALUES("Floral", "Floratti", "Uso Livre",30.55,3);
INSERT INTO tb_produtos(nome, marca, tarja, preco, fk_categoria)
VALUES("Amoxicilina", "Lina", "Vermelha",42.90,4);
INSERT INTO tb_produtos(nome, marca, tarja, preco, fk_categoria)
VALUES("Dipirona", "Dipi", "Amarela",10.25,5);

-- 6- Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- 7- Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.
SELECT * FROM tb_produtos WHERE preco > 5.00 and preco < 60.00;

-- 8-  Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

-- 9- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
SELECT * FROM tb_produtos INNER JOIN tb_categorias on fk_categoria = id_categoria;

-- 10- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, 
-- onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria cosméticos).
SELECT * FROM tb_produtos INNER JOIN tb_categorias on fk_categoria = id_categoria WHERE id_categoria = 4;

-- 11- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, 
-- no repositório que você criou sobre Banco de dados.

-- ----------------------------------------------------------------------------------------------------------------------------------------

/*ATIVIDADE 04

Crie um banco de dados para um serviço de um Açougue ou de um Hortifruti.
O nome do Banco de dados deverá ter o seguinte nome db_cidade_das_carnes ou cidade_dos_vegetais.
O sistema trabalhará com as informações dos produtos comercializados pela empresa.
O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas.*/

CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

-- 1- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
CREATE TABLE tb_categorias(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150),
    ponto boolean
);

-- 2- Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
-- 3- Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.
CREATE TABLE tb_produtos(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150),
    marca VARCHAR(150),
    preco DECIMAL(6,2),
    fk_categoria BIGINT,
    FOREIGN KEY(fk_categoria) REFERENCES tb_categorias(id)
);

-- 4- Insira 5 registros na tabela tb_categorias.
INSERT INTO tb_categorias(nome, ponto)
VALUES("Ao Ponto", true);
INSERT INTO tb_categorias(nome, ponto)
VALUES("Bem Assada", true);
INSERT INTO tb_categorias(nome, ponto)
VALUES("Mal Passada", false);
INSERT INTO tb_categorias(nome, ponto)
VALUES("Ao Ponto Mais", false);
INSERT INTO tb_categorias(nome, ponto)
VALUES("Ao Ponto Menos", true);

-- 5- Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
INSERT INTO tb_produtos(nome, marca, preco, fk_categoria)
VALUES("Picanha", "Friboi",80.50,1);
INSERT INTO tb_produtos(nome, marca, preco, fk_categoria)
VALUES("Coxão Mole", "CM",35.00,2);
INSERT INTO tb_produtos(nome, marca, preco, fk_categoria)
VALUES("Filé Mion", "Badid",100.55,3);
INSERT INTO tb_produtos(nome, marca, preco, fk_categoria)
VALUES("Alcatra", "Alca",45.60,5);
INSERT INTO tb_produtos(nome, marca, preco, fk_categoria)
VALUES("Frango", "Frigo",30.95,2);
INSERT INTO tb_produtos(nome, marca, preco, fk_categoria)
VALUES("Pernil", "Bom",32.95,2);
INSERT INTO tb_produtos(nome, marca, preco, fk_categoria)
VALUES("Coxão Duro", "Carne",30.99,2);
INSERT INTO tb_produtos(nome, marca, preco, fk_categoria)
VALUES("Fraldinha", "Frald",35.95,2);

-- 6- Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- 7- Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 50,00 e R$ 150,00.
SELECT * FROM tb_produtos WHERE preco > 50.00 and preco < 150.00;

-- 8- Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

-- 9- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
SELECT * FROM tb_produtos INNER JOIN tb_categorias on fk_categoria = id;

-- 10- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias,
-- onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria aves ou frutas).
SELECT * FROM tb_produtos INNER JOIN tb_categorias on fk_categoria = id WHERE id = 1;

-- 11- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal,
-- no repositório que você criou sobre Banco de dados.

-- ----------------------------------------------------------------------------------------------------------------------------------------

/*ATIVIDADE 05

Crie um banco de dados para um serviço de uma loja de Material de Construção.
O nome do Banco de dados deverá ter o seguinte nome db_construindo_vidas.
O sistema trabalhará com as informações dos produtos comercializados pela empresa.
O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas.*/

CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

-- 1- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
CREATE TABLE tb_categorias(
	id_categoria BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    tipo VARCHAR(100)
);

-- 2- Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
-- 3- Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.
CREATE TABLE tb_produtos(
	id_produto BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    marca VARCHAR(100),
    preco DECIMAL(6,2),
    fk_categoria BIGINT,
    FOREIGN KEY(fk_categoria) REFERENCES tb_categorias(id_categoria)
);

-- 4- Insira 5 registros na tabela tb_categorias.
INSERT INTO tb_categorias(nome, tipo)
VALUES("Tintas", "Pinturas");
INSERT INTO tb_categorias(nome, tipo)
VALUES("Civil", "Casas");
INSERT INTO tb_categorias(nome, tipo)
VALUES("Tubulações", "Pesado");
INSERT INTO tb_categorias(nome, tipo)
VALUES("Vidraçaria", "Rígidas");
INSERT INTO tb_categorias(nome, tipo)
VALUES("Coberturas", "Leve");

-- 5- Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
INSERT INTO tb_produtos(nome, marca, preco, fk_categoria)
VALUES("Tinta", "Suvinil",75.50,1);
INSERT INTO tb_produtos(nome, marca, preco, fk_categoria)
VALUES("Cimento", "Ciment",40.00,2);
INSERT INTO tb_produtos(nome, marca, preco, fk_categoria)
VALUES("Telhas", "Amanco",200.99,5);
INSERT INTO tb_produtos(nome, marca, preco, fk_categoria)
VALUES("Tubo", "Tigre",55.00,3);
INSERT INTO tb_produtos(nome, marca, preco, fk_categoria)
VALUES("Vidro", "Vidru",65.99,4);
INSERT INTO tb_produtos(nome, marca, preco, fk_categoria)
VALUES("Verniz", "Suvinil",20.99,1);
INSERT INTO tb_produtos(nome, marca, preco, fk_categoria)
VALUES("Vidro Temperado", "Vidrus",60.99,4);
INSERT INTO tb_produtos(nome, marca, preco, fk_categoria)
VALUES("Cola para Tubulações", "Cola",5.99,3);

-- 6- Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 100,00.
SELECT * FROM tb_produtos WHERE preco > 100.00;

-- 7- Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 70,00 e R$ 150,00.
SELECT * FROM tb_produtos WHERE preco > 70.00 and preco < 150.00;

-- 8- Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

-- 9- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
SELECT * FROM tb_produtos INNER JOIN tb_categorias on fk_categoria = id_categoria;

-- 10- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da
-- tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria hidráulica).
SELECT * FROM tb_produtos INNER JOIN tb_categorias on fk_categoria = id_categoria WHERE id_categoria = 4

-- 11- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, 
-- no repositório que você criou sobre Banco de dados.

-- ----------------------------------------------------------------------------------------------------------------------------------------

/*ATIVIDADE 06

Crie um banco de dados para uma plataforma de Cursos Online (EAD).
O nome do Banco de dados deverá ter o seguinte nome db_curso_da_minha_vida.
O sistema trabalhará com as informações dos produtos comercializados pela empresa.
O sistema trabalhará com 2 tabelas tb_cursos e tb_categorias, que deverão estar relacionadas.*/

CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

-- 1- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
CREATE TABLE tb_categorias(
	id_categoria BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    periodo VARCHAR(255)
);

-- 2- Crie a tabela tb_cursos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
-- 3- Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_cursos.
CREATE TABLE tb_cursos (
	id_produto BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    qtde_Vagas INT,
    modelo VARCHAR(255),
    preco DECIMAL(10,2),
    fk_categoria BIGINT,
    FOREIGN KEY(fk_categoria) REFERENCES tb_categorias(id_categoria)
);

-- 4- Insira 5 registros na tabela tb_categorias.
INSERT INTO tb_categorias(nome, periodo)
VALUES("UX/UI", "Vespertino");
INSERT INTO tb_categorias(nome, periodo)
VALUES("Técnologia", "Vespertino");
INSERT INTO tb_categorias(nome, periodo)
VALUES("Design", "Noturno");
INSERT INTO tb_categorias(nome, periodo)
VALUES("Programação Java", "Matutino");
INSERT INTO tb_categorias(nome, periodo)
VALUES("Banco de Dados", "Matutino");

-- 5- Insira 8 registros na tabela tb_cursos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
INSERT INTO tb_cursos(nome, qtde_Vagas, modelo, preco, fk_categoria)
VALUES("UX/UI",35, "EAD",300.50,1);
INSERT INTO tb_cursos(nome, qtde_Vagas, modelo, preco, fk_categoria)
VALUES("Java",40, "EAD",820.50,4);
INSERT INTO tb_cursos(nome, qtde_Vagas, modelo, preco, fk_categoria)
VALUES("JS",10, "EAD",510.90,2);
INSERT INTO tb_cursos(nome, qtde_Vagas, modelo, preco, fk_categoria)
VALUES("Lógica de Programação",30, "EAD",615.99,2);
INSERT INTO tb_cursos(nome, qtde_Vagas, modelo, preco, fk_categoria)
VALUES("Inglês",90, "EAD",1000.00,2);
INSERT INTO tb_cursos(nome, qtde_Vagas, modelo, preco, fk_categoria)
VALUES("Linux",45, "Presencial",159.60,2);
INSERT INTO tb_cursos(nome, qtde_Vagas, modelo, preco, fk_categoria)
VALUES("HTML e CSS",65, "Presencial",270.99,2);
INSERT INTO tb_cursos(nome, qtde_Vagas, modelo, preco, fk_categoria)
VALUES("MySQL",45, "EAD",390.00,5);

-- 6- Faça um SELECT que retorne todes os cursos cujo valor seja maior do que R$ 500,00.
SELECT * FROM tb_cursos WHERE preco > 500.00;

-- 7- Faça um SELECT que retorne todes os cursos cujo valor esteja no intervalo R$ 600,00 e R$ 1000,00.
SELECT * FROM tb_cursos WHERE preco > 600.00 and preco < 1000.00;

-- 8- Faça um SELECT utilizando o operador LIKE, buscando todes os cursos que possuam a letra J no atributo nome.
SELECT * FROM tb_cursos WHERE nome LIKE "%J%";

-- 9- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias.
SELECT * FROM tb_cursos INNER JOIN tb_categorias on fk_categoria = id_categoria;

-- 10- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias, 
-- onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os cursos que pertencem a categoria Java).
SELECT * FROM tb_cursos INNER JOIN tb_categorias on fk_categoria = id_categoria WHERE id_categoria = 4;

-- 11- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal,
-- no repositório que você criou sobre Banco de dados.
