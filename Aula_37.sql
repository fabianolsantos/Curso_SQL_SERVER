/* Utilizando um Banco de Dados */
USE
	db_Biblioteca
GO

/* Convers�o de Tipos de Dados com a Fun��o CAST */
SELECT
	'O pre�o do Livro ' + 
	Nome_Livro +
	' � de R$ ' +
CAST (
	Preco_Livro AS VARCHAR(6)) AS Item
FROM
	tbl_Livro
WHERE
	ID_Autor = 2
GO

/* Convers�o de Tipos de Dados com a Fun��o CONVERT */
SELECT
	'O pre�o do Livro ' +
	Nome_Livro +
	' � de R$ '+
CONVERT (
	VARCHAR(6),
	Preco_Livro)
FROM
	tbl_Livro
GO

/* Sem Alterar o Estilo da Data */
SELECT
	'A data de publica��o ' +
CONVERT (
	VARCHAR(19),
	Data_Pub)
FROM
	tbl_Livro
WHERE
	ID_Livro = 102
GO

/* Convertendo Data com a Fun��o CONVERT */
SELECT
	'A data de publica��o ' +
CONVERT (
	VARCHAR(19),
	Data_Pub,
	103)
FROM
	tbl_Livro
WHERE
	ID_Livro = 102
GO