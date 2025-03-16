/*An analysis of Federal Trade Commission (FTC) data, 2023_Fraud_Reports_by_Contact_Method for fraud reports by metro area in PGAdmin 4, data obtained from 
https://www.ftc.gov/policy-notices/open-government/data-sets. Please note that text in lines 1, 13, 14, 16, 17, commas, $, #, and column C and D. 
for upload into the table*/

/*Other contact methods includes TV or radio, print, fax, in person, consumer initiated contact, and other methods consumers write in or that cannot be otherwise categorized. */

Create Table fraud_loss_by_contact_method (
	Contact_Method varchar (90),
	Number_of_Reports numeric (10,0),
	Total_Money_Loss_inMillions numeric (10,0),
	Median_Loss_Amount numeric (10,0)
);
_____________________________________________________________________________________

copy fraud_loss_by_contact_method
from 'C:\Users\Private\3D Objects\Desktop\CSN_Fraud_Reports_by_Contact_Method.csv'
with (Format CSV, Header);

_____________________________________________________________________________________
