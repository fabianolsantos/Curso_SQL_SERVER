/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Fun��o Escalares */
CREATE FUNCTION
	nota_media (
	@nome VARCHAR(30))
RETURN
	Real
AS
	BEGIN
		DECLARE
			@media Real
				SELECT
					@media = (
					nota1 + nota2 + nota3 + nota4) / 5.00
				FROM
					tbl_alunos
				WHERE
					nome_aluno = @nome
				RETURN
					@media
	END
GO

/* Chamando uma Fun��o */
SELECT
	dbo.nota_media (
	'R�mulo')
GO