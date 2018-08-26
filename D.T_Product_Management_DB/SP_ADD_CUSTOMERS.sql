create PROCEDURE [dbo].[SP_ADD_CUSTOMERS]
	
	@FIRST_NAME varchar (25),
	@LAST_NAME  varchar (25),
	@TEL nvarchar (15),
	@EMAIL varchar (25),
	@IMAGE_CUSTOMER image ,
    @Criterion varchar (50)
AS
if @Criterion='with_image'
begin
	INSERT INTO tbl_Customers 
	(FIRST_NAME ,
	LAST_NAME  ,
	TEL ,
	EMAIL ,
	IMAGE_CUSTOMER) 
	values
	(@FIRST_NAME ,
	@LAST_NAME  ,
	@TEL ,
	@EMAIL ,
	@IMAGE_CUSTOMER )
end

if @Criterion='without_image'
begin
	INSERT INTO tbl_Customers 
	(FIRST_NAME ,
	LAST_NAME  ,
	TEL ,
	EMAIL )
	
	values
	(@FIRST_NAME ,
	@LAST_NAME  ,
	@TEL ,
	@EMAIL )
	
end