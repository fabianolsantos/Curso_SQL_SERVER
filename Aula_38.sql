/* Selecionando um Banco de Dados */
USE
	db_Biblioteca
GO

/* Utilizando as Condi��es If / Else */
DECLARE
	@numero INT,
	@texto VARCHAR(10)
SET
	@numero = 20
SET
	@texto = 'Curso'

IF
	@numero = 20
	SELECT 'N�mero correto!'
IF
	@texto = 'R�mulo'
	BEGIN
		SET
			@numero = 30
		SELECT
			@numero
	END;
ELSE
	BEGIN
		SET
			@numero = 40
		SELECT
			'N�mero incorreto!'
	END;
GO

/* Utilizando as Condi��es If / Else */
DECLARE
	@NOME VARCHAR(30),
	@MEDIA REAL,
	@RESULTADO VARCHAR(10)
SELECT
	@NOME = Nome_Aluno
	@MEDIA = (tbl_alunos.nota1 + tbl_alunos.nota2 + tbl_alunos.nota3 + tbl_alunos.nota4) / 4.00
FROM
	tbl_alunos
WHERE
	nome_aluno = 'R�mulo'
	IF @MEDIA >= 7.00
	BEGIN
		SELECT 
			@RESULTADO = 'Aprovado';
	END;
	ELSE
	BEGIN
		SELECT
			@RESULTADO = 'Reprovado';
	END;

	SELECT
		' O aluno ' +
		@NOME +
		' est� ' +
		@RESULTADO + 
		' com m�dia ' +
		CAST(
			@MEDIA AS VARCHAR);
GO