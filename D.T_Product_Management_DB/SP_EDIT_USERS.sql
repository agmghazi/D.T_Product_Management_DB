﻿CREATE PROCEDURE [dbo].[SP_EDIT_USERS]
@ID VARCHAR (50),
	@fULLNAME VARCHAR (50),
	@PWD VARCHAR (50),
	@USERTYPE VARCHAR (50)
	AS
	UPDATE  tbl_User 
SET
PWD=@PWD,
FULLNAME =@fULLNAME,
UserType=@USERTYPE
WHERE ID=@ID

