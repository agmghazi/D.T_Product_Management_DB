CREATE PROCEDURE [dbo].[SP_SEARCH_ORDERS]
	@Criterion varchar (50)
	
AS
	SELECT 
	[ID_ORDER] as 'رقم الفاتوره',
	DATE_ORDER  as 'تاريخ الفاتوره',
	FIRST_NAME +'' +LAST_NAME  as 'اسم العميل',
	DESCRIPTION as 'وصف الفاتوره' ,
	SALESMAN as 'اسم البائع'


from tbl_order
inner join tbl_Customers
on tbl_Customers.ID_CUSTOMER=tbl_order.CUSTOMER_ID
where convert (varchar,ID_ORDER) + convert (varchar,DATE_ORDER) + FIRST_NAME +LAST_NAME +DESCRIPTION+ SALESMAN
like '%' + @Criterion +'%'
