CREATE PROCEDURE [dbo].[SP_SEARCH_CUSTOMER]
	@Criterion varchar (50)
	
AS
	SELECT 
	[ID_CUSTOMER] ,
	[FIRST_NAME] AS'الاسم الاول',
	[LAST_NAME] AS 'الاسم الاخير',
	[TEL] AS 'رقم الجوال',
	[EMAIL] AS 'البريد الالكنرونى',
 [IMAGE_CUSTOMER] AS'صوره العميل'
	FROM tbl_Customers
	where [FIRST_NAME]+[LAST_NAME]+[TEL]+[EMAIL] like '%'+ @Criterion +'%'
