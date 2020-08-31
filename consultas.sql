-- Consulta geral 
SELECT r.codigo as "Cód. Rec.", r.nome as "Nome Receita", 
	   i.nome as "Nome Ingrediente", 
	   ri.quantidade as "Qtd.", ri.unidade as "Unidade" 
FROM Receita r
INNER JOIN ReceitaIngrediente ri ON ri.codigo_receita = r.codigo
INNER JOIN Ingrediente i ON ri.codigo_ingrediente = i.codigo

-- Consulta utilizando Between
SELECT r.codigo as "Cód. Rec.", r.nome as "Nome Receita", 
	   i.nome as "Nome Ingrediente", 
	   ri.quantidade as "Qtd.", ri.unidade as "Unidade" 
FROM Receita r
INNER JOIN ReceitaIngrediente ri ON ri.codigo_receita = r.codigo
INNER JOIN Ingrediente i ON ri.codigo_ingrediente = i.codigo
WHERE ri.quantidade BETWEEN 1 AND 3
AND ri.unidade = 'Colher'

-- Consulta utilizando Group By
SELECT r.nome as "Nome Receita", 
	   count(ri.quantidade) as "Ingredientes" 
FROM Receita r
INNER JOIN ReceitaIngrediente ri ON ri.codigo_receita = r.codigo
INNER JOIN Ingrediente i ON ri.codigo_ingrediente = i.codigo
GROUP BY "Nome Receita"

-- Consulta utilizando Having
SELECT r.nome as "Nome Receita", 
	   count(ri.quantidade) as "Ingredientes" 
FROM Receita r
INNER JOIN ReceitaIngrediente ri ON ri.codigo_receita = r.codigo
INNER JOIN Ingrediente i ON ri.codigo_ingrediente = i.codigo
GROUP BY "Nome Receita"
HAVING count(ri.quantidade) > 3

-- Consulta utilizando In
SELECT r.codigo as "Cód. Rec.", r.nome as "Nome Receita", 
	   i.nome as "Nome Ingrediente", 
	   ri.quantidade as "Qtd.", ri.unidade as "Unidade" 
FROM Receita r
INNER JOIN ReceitaIngrediente ri ON ri.codigo_receita = r.codigo
INNER JOIN Ingrediente i ON ri.codigo_ingrediente = i.codigo
WHERE ri.unidade IN ('Gramas', 'Litro')

-- Consulta utilizando Like
SELECT r.codigo as "Cód. Rec.", r.nome as "Nome Receita", 
	   i.nome as "Nome Ingrediente", 
	   ri.quantidade as "Qtd.", ri.unidade as "Unidade" 
FROM Receita r
INNER JOIN ReceitaIngrediente ri ON ri.codigo_receita = r.codigo
INNER JOIN Ingrediente i ON ri.codigo_ingrediente = i.codigo
WHERE i.nome LIKE 'L%'

-- Consulta utilizando Like
SELECT r.codigo as "Cód. Rec.", r.nome as "Nome Receita", 
	   i.nome as "Nome Ingrediente", 
	   ri.quantidade as "Qtd.", ri.unidade as "Unidade" 
FROM Receita r
INNER JOIN ReceitaIngrediente ri ON ri.codigo_receita = r.codigo
INNER JOIN Ingrediente i ON ri.codigo_ingrediente = i.codigo
WHERE i.nome LIKE '_om%'
