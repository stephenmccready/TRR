SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tbl_TRR_EnrollmentSource](
	[EnrollmentSourceCode] [char](1) NULL,
	[EnrollmentSource] [varchar](64) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

Insert Into dbo.tbl_TRR_EnrollmentSource Select 'A','Auto enrolled by CMS'
Insert Into dbo.tbl_TRR_EnrollmentSource Select 'B','Beneficiary Election'
Insert Into dbo.tbl_TRR_EnrollmentSource Select 'C','Facilitated enrollment by CMS'
Insert Into dbo.tbl_TRR_EnrollmentSource Select 'D','CMS Annual Rollover'
Insert Into dbo.tbl_TRR_EnrollmentSource Select 'E','Plan initiated auto-enrollment'
Insert Into dbo.tbl_TRR_EnrollmentSource Select 'F','Plan initiated facilitated-enrollment'
Insert Into dbo.tbl_TRR_EnrollmentSource Select 'G','Point-of-sale enrollment'
Insert Into dbo.tbl_TRR_EnrollmentSource Select 'H','CMS or Plan reassignment'
Insert Into dbo.tbl_TRR_EnrollmentSource Select 'I','Invalid submitted value (transaction is not rejected)'
Insert Into dbo.tbl_TRR_EnrollmentSource Select ' ','Not Applicable'
