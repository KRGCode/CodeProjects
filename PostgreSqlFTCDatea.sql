/*Fraud is at an all time high, this data review shows the highest fraud categories reported to the Federal Trade Commission (FTC) 
with data obtained from the FTC Consumer Sentinel Network Data Book-https://www.ftc.gov/policy-notices/open-government/data-sets */

/* I used ProstgreSQl to create a table and visualizations using the 2023_CSN_Report_Categories */

Create Table CSN_Report_Categories (
	CSN_Rank varchar (90),
	CSN_Category varchar (90),
	CSN_Number_Of_Report integer,
	CSN_Percentage numeric (10,2)
);

_____________________________________________

Copy csn_report_categories
from 'C:\Users\Private\Private\Desktop\2023_CSN_Report_Categories.csv'
with (Format CSV, Header);

/*Pleae note that Lines 34 and 36 were removed as it was additonal details provided by the FTC and commas
and percentage removed/converted to decimal*\


