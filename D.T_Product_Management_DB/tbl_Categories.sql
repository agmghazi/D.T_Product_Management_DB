﻿CREATE TABLE [dbo].[tbl_Categories](
	[ID_CAT] [int] IDENTITY(1,1) NOT NULL,
	[DESCRIPTION_CAT] [varchar](25) NULL,
 CONSTRAINT [PK_CATEGORIES] PRIMARY KEY CLUSTERED 
(
	[ID_CAT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]