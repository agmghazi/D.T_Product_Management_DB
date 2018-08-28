CREATE PROCEDURE [dbo].[SP_GET_LAST_ORDER_FOR_PRINT]
	
AS
 --this for make order give total +1 and if found null give (1)
	SELECT  MAX(ID_ORDER) FROM tbl_Order
