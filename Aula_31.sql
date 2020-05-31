/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Ver as Op��es de Agrupamento Dispon�veis */
SElECT
	*
FROM
	fn_helpcollations()
GO

/* Ver o Esquema de Cola��o Usado Atualmente pelo Servidor */
SELECT
	SERVERPROPERTY (
	'Collation')
AS
	Cola��o_Usada
GO

/* Alterar o Esquema de Agrupamento de um Banco de Dados */
ALTER DATABASE
	db_Biblioteca
COLLATE
	Greek_CI_AI
GO

/* Verificar o Esquema de Agrupamento de um Banco de Dados */
SELECT DATABASEPROPERTYEX (
	'db_Biblioteca',
	'Collation')
AS
Cole��o
GO

/* Alterar o Tipo de Agrupamento em uma Coluna */
SELECT
	*
FROM
	tbl_Livro
ORDER BY
	Nome_Livro
COLLATE
	Icelandic_CI_AI
GO