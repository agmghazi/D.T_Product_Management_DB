CREATE PROC SP_GET_ALL_PRODUCT
AS
SELECT 
ID_PRODUCT AS 'رقم المنتج',
	LABEL_PRODUCT  AS 'صنف المنتج',
	QTE_IN_STOCK AS 'الكميه المخزنه',
	PRICE  AS 'سعر المنتج',
	DESCRIPTION_CAT  AS 'وصف المنتج'
	FROM tbl_Products
	INNER JOIN tbl_Categories
	ON tbl_Categories.ID_CAT=tbl_Products.ID_CAT
