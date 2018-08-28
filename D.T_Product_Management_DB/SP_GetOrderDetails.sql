create PROCEDURE [dbo].[SP_GetOrderDetails]
	@ID_ORDER int
	
AS
	SELECT 
tbl_Order_Detail.ID_PRODUCT as'معرف المنتج',
tbl_Products.LABEL_PRODUCT as 'اسم المنتج',
 tbl_Order_Detail.ID_ORDER as'رقم الفاتوره',
	QTE as'الكميه',
 convert(float,tbl_Order_Detail.PRICE) as'الثمن',
	DISCOUNT as'الخصم',
 convert(float,AMOUNT) as'المبلغ',
  convert(float,[TOTAL_AMOUNT]) as 'المبلغ الاجمالى',
	DATE_ORDER as'تاريخ الفاتوره',
	DESCRIPTION as'وصف الفاتوره',
	SALESMAN as'اسم البائع',
	ID_CUSTOMER as'معرف العميل',
	FIRST_NAME+ '' +LAST_NAME as 'اسم العميل',
	TEL as'الهاتف',
	EMAIL as'البريد الالكتورنى'

	from tbl_Order_Detail

	inner join tbl_order
	on tbl_order.ID_ORDER=tbl_Order_Detail.ID_ORDER

	inner join tbl_Customers
	on tbl_Customers.ID_CUSTOMER=tbl_order.CUSTOMER_ID

	inner join tbl_Products
	on tbl_Products.ID_PRODUCT= tbl_Order_Detail.ID_PRODUCT

	where tbl_Order_Detail.ID_ORDER=@ID_ORDER