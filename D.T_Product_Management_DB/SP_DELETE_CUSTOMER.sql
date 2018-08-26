CREATE PROCEDURE [dbo].[SP_DELETE_CUSTOMER]
	@id int
AS
	delete from tbl_Customers
	where ID_CUSTOMER=@id

