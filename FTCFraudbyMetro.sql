An analysis of Federal Trade Commission (FTC) data for fraud reports by metro area in PGAdmin 4, 


Create Table csn_metro_area_fraud_and_other (
	CSN_Rank numeric (3,0),
	CSN_Metro varchar (90),
	CSN_Report_Per_100K numeric (10,0),
	CSN_Number_of_Reports numeric (10,0)
);
____________________________________________-

copy csn_metro_area_fraud_and_other
from 'C:\Users\Private\Private\Desktop\CSN_Metro_Areas_Fraud_and_Other_Reports.csv'
with (Format CSV, Header);

_______________________________________________________________________________________
