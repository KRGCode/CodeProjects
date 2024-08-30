/*An analysis of Federal Trade Commission (FTC) data, 2023_CSN_Metropotian_Areas_Fraud_and_Other_Reports for fraud reports by metro area in PGAdmin 4, data obtained from 
https://www.ftc.gov/policy-notices/open-government/data-sets. Please note that text in lines 396, 388, 1 and the diacritics were removed
for upload into the table*/

Create Table csn_metro_area_fraud_and_other (
	CSN_Rank numeric (3,0),
	CSN_Metro varchar (90),
	CSN_Report_Per_100K numeric (10,0),
	CSN_Number_of_Reports numeric (10,0)
);
__________________________________________________________________________________

copy csn_metro_area_fraud_and_other
from 'C:\Users\Private\Private\Desktop\CSN_Metro_Areas_Fraud_and_Other_Reports.csv'
with (Format CSV, Header);
_______________________________________________________________________________________

SELECT * FROM public.csn_metro_area_fraud_and_other
where csn_metro like '%CA%'

/* As we see with above query there are 28 California metro areas with fraud submissions, per this report California metro areas reported the most
fraud */
________________________________________________________________________________

SELECT * FROM public.csn_metro_area_fraud_and_other
where csn_metro like '%CA%'
order by csn_number_of_reports desc

SELECT sum(csn_number_of_reports) AS "Total" 
FROM public.csn_metro_area_fraud_and_other
where csn_metro like '%CA%';

The above query shows a total of 397,805 reports all California counties. 

This information allows targeted outreach, especilly
within the Los Angeles-Long Beach Anaheim area that a report of 145,347. 
______________________________________________________________________________________
