SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tbl_TRR_Parsed](
	[HICN] [varchar](12) NULL,
	[Surname] [varchar](12) NULL,
	[FirstName] [varchar](7) NULL,
	[MiddleInitial] [varchar](1) NULL,
	[GenderCode] [varchar](1) NULL,
	[Gender] [varchar](8) NULL,
	[DateOfBirth] [varchar](8) NULL,
	[RecordType] [varchar](1) NULL,
	[ContractNumber] [varchar](5) NULL,
	[StateCode] [varchar](2) NULL,
	[CountyCode] [varchar](3) NULL,
	[DisbilityInd] [varchar](1) NULL,
	[HospiceInd] [varchar](1) NULL,
	[InstitutionalNHCInd] [varchar](1) NULL,
	[ESRDInd] [varchar](1) NULL,
	[TRC] [varchar](3) NULL,
	[TransactionTypeCode] [varchar](2) NULL,
	[EntitlementTypeCode] [varchar](8) NULL,
	[EffectiveDate] [varchar](1) NULL,
	[WorkingAged] [varchar](1) NULL,
	[PBPid] [varchar](3) NULL,
	[TransactionDate] [varchar](8) NULL,
	[UIFlag] [varchar](1) NULL,
	[TRData1] [varchar](10) NULL,
	[DistrictOfficeCode] [varchar](3) NULL,
	[PrevPartDContract] [varchar](8) NULL,
	[SourceID] [varchar](5) NULL,
	[PriorPBP] [varchar](3) NULL,
	[ApplicationDate] [varchar](8) NULL,
	[UserOrg] [varchar](16) NULL,
	[OutOfAreaFlag] [varchar](1) NULL,
	[SegmentNumber] [varchar](3) NULL,
	[PartCBenPremium] [varchar](8) NULL,
	[PartDBenPremium] [varchar](8) NULL,
	[ElectionType] [varchar](64) NULL,
	[EnrollmentSource] [varchar](64) NULL,
	[PartDOptOutFlag] [varchar](1) NULL,
	[PremiumWithholdOption] [varchar](32) NULL,
	[UncoveredMonths] [varchar](3) NULL,
	[CreditableCoverageFlag] [varchar](1) NULL,
	[EmployerSubsidyOverrideFlag] [varchar](1) NULL,
	[ProcessingTimeStamp] [varchar](15) NULL,
	[SecondaryRxInsFlag] [varchar](1) NULL,
	[SecondaryRxID] [varchar](20) NULL,
	[SecondaryRxGroup] [varchar](15) NULL,
	[EGHP] [varchar](1) NULL,
	[PartDLIPSLevel] [varchar](32) NULL,
	[LowIncomeCoPayCategory] [varchar](32) NULL,
	[LowIncomePeriodStartDate] [varchar](8) NULL,
	[PartDLEPAmt] [varchar](8) NULL,
	[PartDWaivedAmt] [varchar](8) NULL,
	[PartDSubsidyAmt] [varchar](8) NULL,
	[LowIncomePartDPremiumSubsidyAmt] [varchar](8) NULL,
	[PartDRxBin] [varchar](6) NULL,
	[PartDRxPCN] [varchar](10) NULL,
	[PartDRxGroup] [varchar](15) NULL,
	[PartDRxID] [varchar](20) NULL,
	[SecondaryRxBin] [varchar](6) NULL,
	[SecondaryRxPCN] [varchar](10) NULL,
	[DeMinimisDiffAmt] [varchar](8) NULL,
	[MSPStatus] [varchar](32) NULL,
	[LowIncomePeriodendDate] [varchar](8) NULL,
	[LISSource] [varchar](32) NULL,
	[EnrolleeType] [varchar](32) NULL,
	[ApplicationDateIndicator] [varchar](1) NULL,
	[TRCShortName] [varchar](15) NULL,
	[SysXnTrackingID] [varchar](11) NULL,
	[PlanXnTrackingID] [varchar](15) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
