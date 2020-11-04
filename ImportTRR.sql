SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

Create procedure [dbo].[ImportTRR] @filename As varChar(128)
As

Begin
/*
Drop Table [dbo].[tbl_TRR]
Create Table [dbo].[tbl_TRR] (col001 varchar(max))
*/

Declare @BulkCmd As nvarChar(4000)
Set		@BulkCmd = "BULK INSERT tbl_TRR FROM '"+@filename+"' WITH (FIELDTERMINATOR = '\n')"

Exec	(@BulkCmd)

End
