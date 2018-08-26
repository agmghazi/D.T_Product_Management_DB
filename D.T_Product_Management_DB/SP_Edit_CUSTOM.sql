create PROCEDURE [dbo].[SP_Edit_CUSTOM]
@FIRST_NAME varchar (25),
	@LAST_NAME  varchar (25),
	@TEL nvarchar (15),
	@EMAIL varchar (25),
	@IMAGE_CUSTOMER image ,
    @Criterion varchar (50),
	@ID int
AS
if @Criterion='with_image'
begin

update tbl_Customers
set FIRST_NAME =@FIRST_NAME,
LAST_NAME =	@LAST_NAME ,
TEL =@TEL,
EMAIL=@EMAIL,
IMAGE_CUSTOMER=@IMAGE_CUSTOMER
where ID_CUSTOMER=@ID
end

if @Criterion='without_image'
begin

update tbl_Customers
set FIRST_NAME =@FIRST_NAME,
LAST_NAME =	@LAST_NAME ,
TEL =@TEL,
EMAIL=@EMAIL
where ID_CUSTOMER=@ID	
end