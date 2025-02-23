
-- =============================================
-- Author:		Dayana Flores
-- Create date: 2025-02-20
-- Description:	stored procedure para mostrar lso clientes de la tabla tblCuentas
-- =============================================
CREATE PROCEDURE usp_cuenta_mostrar
	
AS
BEGIN
	
	SET NOCOUNT ON;

   select 
    CodigoCuenta as 'CodCuenta',
	CodigoCliente as 'CodCliente',
	NumeroCuenta,
	TipoCuenta,
	Saldo,
	FechaApertura,
	Estado
	from tbl_cuentas;

END
GO



select * from tbl_cuentas
select * from tbl_clientes