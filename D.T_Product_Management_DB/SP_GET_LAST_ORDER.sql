CREATE PROCEDURE [dbo].[SP_GET_LAST_ORDER]
	
AS
 --this for make order give total +1 and if found null give (1)
	SELECT ISNULL (MAX(ID_ORDER)+1 , 1) FROM tbl_Orders
