CREATE TABLE Receita(
   codigo INT GENERATED ALWAYS AS IDENTITY,
   nome VARCHAR(50) NULL,
   PRIMARY KEY(codigo)
);

CREATE TABLE Ingrediente
(
    codigo INT GENERATED ALWAYS AS IDENTITY,
    nome VARCHAR(50) NULL,
    CONSTRAINT ingrediente_pkey PRIMARY KEY (codigo)
);

CREATE TABLE ReceitaIngrediente
(
    codigo INT GENERATED ALWAYS AS IDENTITY,
    codigo_receita integer,
    codigo_ingrediente integer,
	quantidade integer,
	unidade VARCHAR(50) NULL,
	CONSTRAINT fk_receita_codigo 
		FOREIGN KEY(codigo_receita) 
			REFERENCES Receita(codigo),
	CONSTRAINT fk_ingrediente_codigo 
		FOREIGN KEY(codigo_ingrediente) 
			REFERENCES Ingrediente(codigo)
);

-- Insert Receitas
INSERT INTO receita(nome) VALUES ('Feijoada');
INSERT INTO receita(nome) VALUES ('Pudim');
INSERT INTO receita(nome) VALUES ('Bolo de Fuba');
INSERT INTO receita(nome) VALUES ('Moqueca de Peixe');

-- Insert Ingredientes
INSERT INTO ingrediente(nome) VALUES ('Feijão');
INSERT INTO ingrediente(nome) VALUES ('Carne Seca');
INSERT INTO ingrediente(nome) VALUES ('Lombo Porco');
INSERT INTO ingrediente(nome) VALUES ('Linguiça Calabresa');
INSERT INTO ingrediente(nome) VALUES ('Leite Condensado');
INSERT INTO ingrediente(nome) VALUES ('Leite');
INSERT INTO ingrediente(nome) VALUES ('Ovos');
INSERT INTO ingrediente(nome) VALUES ('Açucar');
INSERT INTO ingrediente(nome) VALUES ('Fubá');
INSERT INTO ingrediente(nome) VALUES ('Óleo');
INSERT INTO ingrediente(nome) VALUES ('Fermento em pó');
INSERT INTO ingrediente(nome) VALUES ('Cação');
INSERT INTO ingrediente(nome) VALUES ('Limão');
INSERT INTO ingrediente(nome) VALUES ('Pimentão Vermelho');
INSERT INTO ingrediente(nome) VALUES ('Pimentão Amarelo');
INSERT INTO ingrediente(nome) VALUES ('Tomates');
INSERT INTO ingrediente(nome) VALUES ('Azeite de dendê');
INSERT INTO ingrediente(nome) VALUES ('Leite de coco');

-- Feijoada
INSERT INTO receitaingrediente(codigo_receita, codigo_ingrediente, quantidade, unidade)
VALUES (1, 1, 1, 'Kg');
INSERT INTO receitaingrediente(codigo_receita, codigo_ingrediente, quantidade, unidade)
VALUES (1, 2, 100, 'Gramas');
INSERT INTO receitaingrediente(codigo_receita, codigo_ingrediente, quantidade, unidade)
VALUES (1, 3, 200, 'Gramas');
INSERT INTO receitaingrediente(codigo_receita, codigo_ingrediente, quantidade, unidade)
VALUES (1, 4, 150, 'Gramas');

-- Pudim
INSERT INTO receitaingrediente(codigo_receita, codigo_ingrediente, quantidade, unidade)
VALUES (2, 5, 1, 'Lata');
INSERT INTO receitaingrediente(codigo_receita, codigo_ingrediente, quantidade, unidade)
VALUES (2, 6, 1, 'Litro');
INSERT INTO receitaingrediente(codigo_receita, codigo_ingrediente, quantidade, unidade)
VALUES (2, 7, 3, 'Unidade');

-- Bolo de Fubá
INSERT INTO receitaingrediente(codigo_receita, codigo_ingrediente, quantidade, unidade)
VALUES (3, 8, 3, 'Unidade');
INSERT INTO receitaingrediente(codigo_receita, codigo_ingrediente, quantidade, unidade)
VALUES (3, 8, 2, 'Xícaras');
INSERT INTO receitaingrediente(codigo_receita, codigo_ingrediente, quantidade, unidade)
VALUES (3, 9, 2, 'Xícaras');
INSERT INTO receitaingrediente(codigo_receita, codigo_ingrediente, quantidade, unidade)
VALUES (3, 10, 4, 'Colher');
INSERT INTO receitaingrediente(codigo_receita, codigo_ingrediente, quantidade, unidade)
VALUES (3, 11, 2, 'Colher');

-- Moqueca de Peixe
INSERT INTO receitaingrediente(codigo_receita, codigo_ingrediente, quantidade, unidade)
VALUES (4, 12, 4, 'Postas');
INSERT INTO receitaingrediente(codigo_receita, codigo_ingrediente, quantidade, unidade)
VALUES (4, 13, 100, 'Mililitros');
INSERT INTO receitaingrediente(codigo_receita, codigo_ingrediente, quantidade, unidade)
VALUES (4, 14, 1, 'Unidade');
INSERT INTO receitaingrediente(codigo_receita, codigo_ingrediente, quantidade, unidade)
VALUES (4, 15, 1, 'Unidade');
INSERT INTO receitaingrediente(codigo_receita, codigo_ingrediente, quantidade, unidade)
VALUES (4, 16, 2, 'Unidade');
INSERT INTO receitaingrediente(codigo_receita, codigo_ingrediente, quantidade, unidade)
VALUES (4, 17, 1, 'Colher');

SELECT * FROM Receita

SELECT * FROM Ingrediente

SELECT * FROM ReceitaIngrediente

