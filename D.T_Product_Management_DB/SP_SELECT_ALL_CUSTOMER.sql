CREATE PROCEDURE [dbo].[SP_SELECT_ALL_CUSTOMER]
	
AS
	SELECT 
	[ID_CUSTOMER] ,
	[FIRST_NAME] AS'الاسم الاول',
	[LAST_NAME] AS 'الاسم الاخير',
	[TEL] AS 'رقم الجوال',
	[EMAIL] AS 'البريد الالكنرونى',
 [IMAGE_CUSTOMER] AS'صوره العميل'
	FROM tbl_Customers

