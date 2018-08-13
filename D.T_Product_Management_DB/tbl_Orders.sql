CREATE TABLE [dbo].[tbl_Orders]
(
[ID_ORDER] [int] IDENTITY(1,1) NOT NULL,
	[DATE_ORDER] [datetime] NULL,
	[CUSTOMER_ID] [int] NULL, 
    CONSTRAINT [PK_tbl_Orders] PRIMARY KEY ([ID_ORDER]),

)
