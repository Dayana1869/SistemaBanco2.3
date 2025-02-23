-- =============================================
-- Author:		Dayana Flores
-- Create date: 16/02/2025
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE usp_cuentas_eliminar 
	(
		@Codigo int
	)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	Delete tbl_cuentas
	where CodigoCliente=@Codigo

END
GO
