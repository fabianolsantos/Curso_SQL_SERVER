/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Criando um �ndice */
CREATE INDEX
	indice_nome_livro
ON
	tbl_Livro (Nome_Livro)
GO