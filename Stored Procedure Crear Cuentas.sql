-- =============================================
-- Author:		Dayana Flroes
-- Create date: 16/12/2025
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE usp_cuentas_crear
	--  PARAMETROS DE ENTRADA
(
	@CodigoCuenta varchar(100),
	@CodigoCliente varchar (255),
	@NumeroCuenta varchar(100),
	@TipoCuenta varchar(100),
	@Saldo varchar(50),
	@FechaApertura varchar(50),
	@Estado varchar(15)
	)

AS
BEGIN
	 

	SET NOCOUNT ON;

    insert into tbl_cuentas
	(
		CodigoCuenta,
		CodigoCliente,
		NumeroCuenta,
		TipoCuenta,
		Saldo,
		FechaApertura,
		Estado
		) values

(
	@CodigoCuenta,
	@CodigoCliente,
	@NumeroCuenta,
	@TipoCuenta,
	@Saldo,
	@FechaApertura,
	@Estado
	)

END
GO


