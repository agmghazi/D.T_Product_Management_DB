CREATE PROCEDURE [dbo].[SP_VerifyProductID]
	@ID varchar (50)
	
AS
	SELECT * from tbl_Products 
	where ID_PRODUCT =@ID
