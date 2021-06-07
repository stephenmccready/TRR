If OBJECT_ID('tempdb..#TEMP') Is Not Null Drop table #TEMP

Select Cast('01' As char(2)) As SEP_ReasonCode, Cast('GOVT EMERGENCY OR DISASTER' As VarChar(50)) As SEP_Reason 
, Cast('Government entity-declared disaster or other emergency.' As VarChar(255)) As Long_SEP_Reason
, Cast('X' As Char(1)) As MA_MAPD_E, Cast('X' As Char(1)) As MA_MAPD_D
, Cast('X' As Char(1)) As PDP_E, Cast('X' As Char(1)) As PDP_D
, Cast('' As Char(1)) As COST_E, Cast('' As Char(1)) As COST_D
, Cast('' As Char(1)) As PACE_E, Cast('' As Char(1)) As PACE_D
, Cast('' As Char(1)) As MSA_E, Cast('X' As Char(1)) As MSA_D
Into #TEMP 
Insert Into #TEMP Select '02', 'GOVT EMERG/DISASTER- COVID19','Government entity-declared disaster or other emergency related to COVID-19.','X','X','X','X','','','','','','X'

Insert Into #TEMP Select '11', 'CMS TERM OF CONTRACT','CMS initiated termination of contract. Includes contract term by CMS, and immediate term by CMS where CMS provides notice of term to a Plan’s members and the term may be mid-month.','X','X','X','X','','','','','','X'
Insert Into #TEMP Select '12', 'TERM/CNTRCT MOD MUTUAL CONSENT','Plan initiated terminations/contract modifications by mutual consent. Includes contract non-renewals, Plan service area reductions, term/mod of contract by mutual consent.','X','X','X','X','','','','','','X'

Insert Into #TEMP Select '21', 'ACCESSIBLE FRMT RECEIPT DELAY','SEP for providing individuals who requested materials in accessible formats equal time to make enrollment decisions.','X','X','X','X','','','','','','X'
Insert Into #TEMP Select '22', 'INVOL LOSS OF CRED CVG','For involuntary loss of creditable prescription drug coverage.','X','X','X','','','','','','',''
Insert Into #TEMP Select '23', 'DISENROLL DUE TO CMS SANCTION','Individuals who disenroll in connection with a CMS sanction.','X','X','X','X','','','','','','X'
Insert Into #TEMP Select '24', 'PART D DISENR FOR OTH CRED CVG','Individuals may disenroll from a Part D Plan (including PDPs and MA-PDs) to enroll in or maintain other creditable drug coverage.','','','X','X','','','','','',''
Insert Into #TEMP Select '25', 'INVOL DISENROLL LOSS OF PART B','Individuals involuntarily disenrolled from an MA-PD Plan due to loss of Part B','X','','X','','','','','','',''
Insert Into #TEMP Select '26', 'MA OEPI DISENROLL FROM MA','MA-PD enrollees using the MA Open Enrollment Period for Institutionalized Individuals (OEPI) to disenroll from an MA-PD Plan','','','X','','','','','','',''
Insert Into #TEMP Select '27', 'PACE','Disenroll from an MA/MAPD/PDP to enroll in PACE or PACE disenroll to enroll in MA/MAPD','X','X','X','X','','','X','X','','X'
Insert Into #TEMP Select '28', 'COST PLANS NON-RENEWALS','Individuals enrolled in Cost Plans that are non-renewing their contracts.','X','','X','','','X','','','',''
Insert Into #TEMP Select '29', 'DROP MEDIGAP IN TRIAL PERIOD','Individuals who terminated a Medigap policy when they enrolled for the first time in an MA Plan, and who are still in a trial period.','X','X','X','','','','','','','X'
Insert Into #TEMP Select '30', 'CHRONIC CARE C-SNP','Enrollment into a C-SNP and for individuals found ineligible for a C-SNP.','X','X','X','X','','','','','',''
Insert Into #TEMP Select '31', 'ELIGIBLE FOR AN ADD PART D IEP','Individuals eligible for an additional Part D IEP.','X','X','X','X','','','','','',''
Insert Into #TEMP Select '32', 'RETRO ENTITLEMENT DETERM','Individuals whose Medicare entitlement determination was made retroactively.','X','','X','','','','','','',''
Insert Into #TEMP Select '33', 'BENES AGE 65 (SEP65)','Beneficiaries age 65 (SEP65).','','X','X','','','','','','','X'
Insert Into #TEMP Select '34', 'PART B GEP ENROLLMENT','Individuals who enroll in Part B during the Part B General Enrollment Period (GEP). (MA-PD and PDP)','X','','X','','','','','','',''
Insert Into #TEMP Select '35', 'LOSS OF SNP','Individuals enrolled in a SNP who are no longer eligible for the SNP because they no longer meet the specific special needs status.','X','X','X','','','','','','',''
Insert Into #TEMP Select '36', 'COST DISENRL OR OPT SUP PART D','Individuals disenrolling from a Cost Plan who also had the Cost Plan Optional Supplemental Part D Benefit.','','','X','','','','','','',''
Insert Into #TEMP Select '37', 'LAWFULLY PRESENT','Non-U.S. citizens who become lawfully present.','X','','X','','','','','','',''
Insert Into #TEMP Select '38', 'QUALIFIED / LOSE SPAP ELIG','Individuals who belong to a qualified SPAP or who lose SPAP eligibility.','X','X','X','','','','','','',''
Insert Into #TEMP Select '39', 'PLAN IN RECEIVERSHIP','Individuals enrolled in a Plan offered by an MA or PDP organization that is placed into receivership by a State or territorial regulatory authority.','X','X','X','X','','','','','','X'
Insert Into #TEMP Select '40', 'CMS ID CONSISTENT POOR PERF','This SEP exists while the individual is enrolled in the low performing MA or PDP Plan.','X','X','X','X','','','','','','X'

Create Index ix_SEP_ReasonCode On #TEMP(SEP_ReasonCode)

Select * From #TEMP
