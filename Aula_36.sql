/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Criando Vari�veis */
DECLARE
	@valor INT,
	@texto VARCHAR(40),
	@data_nasc DATE,
	@nada MONEY
GO

/* Atribuindo Valores nas Vari�veis */
SET
	@valor = 50
SET
	@texto = 'R�mulo'
SET
	@data_nasc = GETDATE()
GO

/* Selecionado as Vari�veis */
SELECT
	@valor AS Valor,
	@texto AS Texto,
	@data_nasc AS Data_de_Nascimento,
	@nada AS Sal�rio
GO

/* Atribuindo Valores em uma Vari�vel Utilizando o Select */
DECLARE
	@Livros VARCHAR (30)
SELECT
	@Livros = nome_livro
FROM
	tbl_Livro
WHERE
	ID_Livro = 101
SELECT
	@Livros AS Nome_do_Livro
GO

/* Atribuindo Valores em uma Vari�vel Utilizando o Select */
DECLARE
	@preco MONEY,
	@quantidade INT,
	@nome VARCHAR(30)
SET
	@quantidade = 5

SELECT
	@preco = Preco_Livro,
	@nome = Nome_Livro
FROM
	tbl_Livro
WHERE
	ID_Livro = 101

SELECT
	@nome AS Nome_do_Livro,
	@preco * @quantidade AS Pre�o_dos_Livros
GO