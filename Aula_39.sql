/* Selecionando um Banco de Dados */
USE
	db_Biblioteca
GO

/* Utilizando a Estrutura de Repeti��o While */
DECLARE
	@valor INT
SET
	@valor = 0
WHILE
	@valor < 10
	BEGIN
		PRINT
			'N�mero: ' +
			CAST(
				@valor AS VARCHAR(2))
		SET
			@valor = @valor + 1
	END;
GO

/* Selecionando Dados Utilizando While */
DECLARE
	@codigo INT
SET
	@codigo = 100
WHILE
	@codigo < 106
	BEGIN
		SELECT
			ID_Livro AS ID,
			Nome_Livro AS Livro,
			Preco_Livro AS Pre�o
		FROM
			tbl_Livro
		WHERE
			ID_Livro = @codigo
		SET
			@codigo = @codigo + 1
	END;
GO