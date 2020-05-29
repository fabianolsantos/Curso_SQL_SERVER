/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Contando Dados de uma Tabela */
SELECT
	COUNT(*) AS Contagem
FROM
	tbl_Autores
GO

/* Selecionando o Valor M�ximo em uma Tabela */
SELECT
	MAX(Preco_Livro) AS Pre�o_M�ximo
FROM
	tbl_Livro
GO

/* Selecionando o Valor M�nimo em uma Tabela */
SELECT
	MIN(Preco_Livro) AS Pre�o_M�nimo
FROM
	tbl_Livro
GO

/* Calculando a M�dia dos Valores de uma Tabela */
SELECT
	AVG(Preco_Livro) AS M�dia
FROM
	tbl_Livro
GO

/* Somando Valores de uma Tabela */
SELECT
	SUM(Preco_Livro) AS Pre�o_Total
FROM
	tbl_Livro
GO