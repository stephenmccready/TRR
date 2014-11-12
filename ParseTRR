SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

Create procedure [dbo].[ParseTRR]
As

Begin

Insert	Into tbl_TRR_Parsed
Select	Cast(SUBSTRING(T.Col001,1,12) As VarChar(12)) As HICN,
		Cast(SUBSTRING(T.Col001,13,12) As VarChar(12)) As Surname,
		Cast(SUBSTRING(T.Col001,25,7) As VarChar(7)) As FirstName,
		Cast(SUBSTRING(T.Col001,32,1) As VarChar(1)) As MiddleInitial,
		Cast(SUBSTRING(T.Col001,33,1) As VarChar(1)) As GenderCode,
		Cast(Case	When SUBSTRING(T.Col001,33,1) = '1' Then 'Male     '
				When SUBSTRING(T.Col001,33,1) = '2' Then 'Female   '
				Else 'Unknown '+SUBSTRING(T.Col001,33,1) End As VarChar(8)) As Gender,
		Cast(SUBSTRING(T.Col001,34,8) As VarChar(8)) As DateOfBirth,
		Cast(SUBSTRING(T.Col001,42,1) As VarChar(1)) As RecordType,		-- T = TRC, P = Plan Submitted transaction text 
		Cast(SUBSTRING(T.Col001,43,5) As VarChar(5)) As ContractNumber,
		Cast(SUBSTRING(T.Col001,48,2) As VarChar(2)) As StateCode,
		Cast(SUBSTRING(T.Col001,50,3) As VarChar(3)) As CountyCode,
		Cast(SUBSTRING(T.Col001,53,1) As VarChar(1)) As DisbilityInd,
		Cast(SUBSTRING(T.Col001,54,1) As VarChar(1)) As HospiceInd,
		Cast(SUBSTRING(T.Col001,55,1) As VarChar(1)) As InstitutionalNHCInd,
		Cast(SUBSTRING(T.Col001,56,1) As VarChar(1)) As ESRDInd,
		Cast(SUBSTRING(T.Col001,57,3) As VarChar(3)) As TRC,	-- Transaction Reply Code
		Cast(SUBSTRING(T.Col001,60,2) As VarChar(2)) As TransactionTypeCode,
		Cast(SUBSTRING(T.Col001,62,1) As VarChar(8)) As EntitlementTypeCode,	-- Y = Entitled to Part A and B, Z = Entitled to Part A or B, Space = not applicable
		Cast(SUBSTRING(T.Col001,63,8) As VarChar(1)) As EffectiveDate,
		Cast(SUBSTRING(T.Col001,71,1) As VarChar(1)) As WorkingAged,
		Cast(SUBSTRING(T.Col001,72,3) As VarChar(3)) As PBPid,	-- Plan Benefit Package ID
--		Cast(SUBSTRING(T.Col001,75,1) As VarChar(1)) As Filler01,
		Cast(SUBSTRING(T.Col001,76,8) As VarChar(8)) As TransactionDate,
		Cast(SUBSTRING(T.Col001,84,1) As VarChar(1)) As UIFlag,	-- UI Initiated Change Flag
		Cast(SUBSTRING(T.Col001,85,10) As VarChar(10)) As TRData1,
		Cast(SUBSTRING(T.Col001,97,3) As VarChar(3)) As DistrictOfficeCode,
		Cast(SUBSTRING(T.Col001,100,8) As VarChar(8)) As PrevPartDContract,	-- CCCCCPPP: Contract# + Plan id
--		Cast(SUBSTRING(T.Col001,108,8) As VarChar(8)) As Filler02,
		Cast(SUBSTRING(T.Col001,116,5) As VarChar(5)) As SourceID,
		Cast(SUBSTRING(T.Col001,121,3) As VarChar(3)) As PriorPBP,
		Cast(SUBSTRING(T.Col001,124,8) As VarChar(8)) As ApplicationDate,
		Cast(Case When SUBSTRING(T.Col001,132,2)='01' Then 'Plan           '
			 When SUBSTRING(T.Col001,132,2)='02' Then 'Regional Office'
			 When SUBSTRING(T.Col001,132,2)='03' Then 'Central Office '
												 Else SUBSTRING(T.Col001,132,2)+'             ' 
			 End As VarChar(16)) As UserOrg,
		Cast(SUBSTRING(T.Col001,134,1) As VarChar(1)) As OutOfAreaFlag,
		Cast(SUBSTRING(T.Col001,135,3) As VarChar(3)) As SegmentNumber,
		Cast(SUBSTRING(T.Col001,138,8) As VarChar(8)) As PartCBenPremium,
		Cast(SUBSTRING(T.Col001,146,8) As VarChar(8)) As PartDBenPremium,
		ET.ElectionType,
		ES.EnrollmentSource,
		Cast(SUBSTRING(T.Col001,156,1) As VarChar(1)) As PartDOptOutFlag,
		Cast(Case When SUBSTRING(T.Col001,157,1)='D' Then 'Direct self-pay         '
			 When SUBSTRING(T.Col001,157,1)='S' Then 'Deduct from SSA benefits'
			 When SUBSTRING(T.Col001,157,1)='R' Then 'Deduct from RRB benefits'
			 When SUBSTRING(T.Col001,157,1)='O' Then 'Deduct from OPM benefits'
			 When SUBSTRING(T.Col001,157,1)='N' Then 'No premium applicable   '
			 When SUBSTRING(T.Col001,157,1)=' ' Then 'Not applicable          '
												Else SUBSTRING(T.Col001,157,1) + '              '	 
			 End As VarChar(32)) As PremiumWithholdOption,
		Cast(SUBSTRING(T.Col001,158,3) As VarChar(3)) As UncoveredMonths,
		Cast(SUBSTRING(T.Col001,161,1) As VarChar(1)) As CreditableCoverageFlag,
		Cast(SUBSTRING(T.Col001,162,1) As VarChar(1)) As EmployerSubsidyOverrideFlag,
		Cast(SUBSTRING(T.Col001,163,15) As VarChar(15)) As ProcessingTimeStamp,
--		Cast(SUBSTRING(T.Col001,178,20) As VarChar(20)) As Filler03,
		Cast(SUBSTRING(T.Col001,198,1) As VarChar(1)) As SecondaryRxInsFlag,
		Cast(SUBSTRING(T.Col001,199,20) As VarChar(20)) As SecondaryRxID,
		Cast(SUBSTRING(T.Col001,219,15) As VarChar(15)) As SecondaryRxGroup,
		Cast(SUBSTRING(T.Col001,234,1) As VarChar(1)) As EGHP,
		Cast(Case When SUBSTRING(T.Col001,235,3) = '000' Then 'No subsidy        '
			 When SUBSTRING(T.Col001,235,3) = '025' Then '25% subsidy level '
			 When SUBSTRING(T.Col001,235,3) = '050' Then '50% subsidy level '
			 When SUBSTRING(T.Col001,235,3) = '075' Then '75% subsidy level '
			 When SUBSTRING(T.Col001,235,3) = '100' Then '100% subsidy level'
			 When SUBSTRING(T.Col001,235,3) = '   ' Then 'Not Applicable    '
													Else 'Unknown Code:  '+SUBSTRING(T.Col001,235,3)
			 End As VarChar(32)) As PartDLIPSLevel,
		Cast(Case When SUBSTRING(T.Col001,238,1) = '0'	Then 'None, not low-income'
			 When SUBSTRING(T.Col001,238,1) = '1'	Then 'High                '
			 When SUBSTRING(T.Col001,238,1) = '2'	Then 'Low                 '
			 When SUBSTRING(T.Col001,238,1) = '3'	Then '0                   '
			 When SUBSTRING(T.Col001,238,1) = '4'	Then '15%                 '
			 When SUBSTRING(T.Col001,238,1) = '5'	Then 'Unknown             '
													Else 'Unknown Code:      '+SUBSTRING(T.Col001,238,1) 
			 End As VarChar(32)) As LowIncomeCoPayCategory,
		Cast(SUBSTRING(T.Col001,239,8) As VarChar(8)) As LowIncomePeriodStartDate,
		Cast(SUBSTRING(T.Col001,247,8) As VarChar(8)) As PartDLEPAmt,
		Cast(SUBSTRING(T.Col001,255,8) As VarChar(8)) As PartDWaivedAmt,
		Cast(SUBSTRING(T.Col001,263,8) As VarChar(8)) As PartDSubsidyAmt,
		Cast(SUBSTRING(T.Col001,271,8) As VarChar(8)) As LowIncomePartDPremiumSubsidyAmt,
		Cast(SUBSTRING(T.Col001,279,6) As VarChar(6)) As PartDRxBin,
		Cast(SUBSTRING(T.Col001,285,10) As VarChar(10)) As PartDRxPCN,
		Cast(SUBSTRING(T.Col001,295,15) As VarChar(15)) As PartDRxGroup,
		Cast(SUBSTRING(T.Col001,310,20) As VarChar(20)) As PartDRxID,
		Cast(SUBSTRING(T.Col001,330,6) As VarChar(6)) As SecondaryRxBin,
		Cast(SUBSTRING(T.Col001,336,10) As VarChar(10)) As SecondaryRxPCN,
		Cast(SUBSTRING(T.Col001,346,8) As VarChar(8)) As DeMinimisDiffAmt,
		Cast(Case When SUBSTRING(T.Col001,354,1) = 'P' Then 'Medicare primary payor    '
				  When SUBSTRING(T.Col001,354,1) = 'S' Then 'Medicare secondary payor  '
				  When SUBSTRING(T.Col001,354,1) = 'N' Then 'Non-Respondent Beneficiary'
				  When SUBSTRING(T.Col001,354,1) = ' ' Then 'Not Applicable            '
													   Else 'Unknown MSP Status Flag: '+SUBSTRING(T.Col001,354,1)
			 End As VarChar(32)) As MSPStatus,
		Cast(SUBSTRING(T.Col001,355,8) As VarChar(8)) As LowIncomePeriodendDate,
		Cast(Case When SUBSTRING(T.Col001,363,1) = 'A' Then 'Approved SSA applicant'
				  When SUBSTRING(T.Col001,363,1) = 'D' Then 'Deemed Eligible by CMS'
				  When SUBSTRING(T.Col001,363,1) = ' ' Then 'Not Applicable        '
													   Else 'Unknown LIS Src code:'+SUBSTRING(T.Col001,363,1)
			 End As VarChar(32)) As LISSource,
		Cast(Case When SUBSTRING(T.Col001,364,1) = 'C' Then 'Current PBP enrollee    '
				  When SUBSTRING(T.Col001,364,1) = 'P' Then 'Prospective PBP enrollee'
				  When SUBSTRING(T.Col001,364,1) = 'Y' Then 'Previous PBP enrollee   '
				  When SUBSTRING(T.Col001,364,1) = ' ' Then 'Not Applicable          '
													   Else 'Unknown Enrollee Type: '+SUBSTRING(T.Col001,364,1)
			 End As VarChar(32)) As EnrolleeType,
		Cast(SUBSTRING(T.Col001,365,1) As VarChar(1)) As ApplicationDateIndicator,
		Cast(SUBSTRING(T.Col001,366,15) As VarChar(15)) As TRCShortName,
--		Cast(SUBSTRING(T.Col001,381,94) As VarChar(94)) As Filler04,
		Cast(SUBSTRING(T.Col001,475,11) As VarChar(11)) As SysXnTrackingID,
		Cast(SUBSTRING(T.Col001,486,15) As VarChar(15)) As PlanXnTrackingID
From	dbo.tbl_TRR As T
Left	Outer Join dbo.tbl_TRR_Parsed As TP
		On TP.HICN=Cast(SUBSTRING(T.Col001,1,12) As VarChar(12))
		And TP.TransactionDate=Cast(SUBSTRING(T.Col001,76,8) As VarChar(8))
Left	Outer Join dbo.tbl_TRR_ElectionType As ET
		On ET.ElectionTypeCode = SUBSTRING(T.Col001,154,1)
Left	Outer Join dbo.tbl_TRR_EnrollmentSource As ES
		On ES.EnrollmentSourceCode = SUBSTRING(T.Col001,155,1)
Where	SUBSTRING(T.Col001,42,1) = 'T' -- RecordType
And		TP.HICN Is Null

End
