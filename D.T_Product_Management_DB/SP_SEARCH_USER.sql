CREATE PROCEDURE [dbo].[SP_SEARCH_USER]
	@Criterion varchar (50)
	
AS
	SELECT 
	ID as 'اسم المستخدم',
	FULLNAME as 'الاسم الكامل' ,
	PWD as 'كلمه السر',
	UserType as 'نوع المستحدم'

	from tbl_User

	where ID+FULLNAME+PWD+UserType like + '%' + @Criterion +'%'