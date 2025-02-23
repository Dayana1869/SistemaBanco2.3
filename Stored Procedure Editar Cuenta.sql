-- =============================================
-- Author:		Dayana Flores
-- Create date: 16/0282024
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE usp_cuentas_editar 
		--  PARAMETROS DE ENTRADA
(
	@codigo int,
	@CodigoCliente int,
	@NumeroCuenta varchar(100),
	@TipoCuenta varchar(100),
	@Saldo int,
	@FechaApertura varchar(50),
	@Estado varchar(15)
	)

AS
BEGIN
	 Update tbl_cuentas
	set 
		CodigoCliente = @CodigoCliente,
		NumeroCuenta =  @NumeroCuenta,
		TipoCuenta = @TipoCuenta,
		Saldo = @Saldo,
		FechaApertura = @FechaApertura,
		Estado = @Estado
	where CodigoCuenta = @Codigo
END
GO
