#Current Code for Solving the SQL Murder Mystery at https://mystery.knightlab.com/

Select *
from crime_scene_report
where type = 'murder'
and city = 'SQL City'


#20180115,	murder,	Security footage shows that there were 2 witnesses. The first witness lives at the last house on "Northwestern Dr", 
#The second witness, named Annabel, lives somewhere on "Franklin Ave".

#First Witness

Select *
from person
where address_street_name = 'Northwestern Dr'
order by address_number DESC

14887 (ID)	Morty Schapiro	118009	4919	Northwestern Dr	111564949 (SSN)

Select *
from interview
where person_id = '14887'

#14887	I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag. 
#The membership number on the bag started with "48Z". Only gold members have those bags. The man got into a car with a plate that included "H42W".

###################################################################################################################################################

#Second Witness 

Select *
from person
where name Like 'A%'
and address_street_name = 'Franklin Ave'

#16371 (ID),	Annabel Miller,	490173(license)	103	Franklin Ave	318771143(SSN)

Select *
from interview
where person_id ='16371'

#16371, I saw the murder happen, and I recognized the killer from my gym when I was working out last week on January the 9th.

#####################################################################################################################################

#from second witness, gym gold members with membership ID starting with 48Z

Select *
from get_fit_now_member
where membership_status = 'gold'
and id like '48Z%'

#48Z7A (ID),	28819,	Joe Germuska, 	20160305 (membership_start_date),	gold
#48Z55 (ID),	67318,	Jeremy Bowers,	20160101 (membership_start_date),	gold

#first witness statement, who above checked in 1/9?

Select *
from get_fit_now_check_in
where membership_id Like '48Z%'

# 48Z7A (ID)	20180109 (Date)	1600	1730 #Joe Germuska

##########################################################################################

#First Witness, license plate included H42W and was male

Select *
from drivers_license
where plate_number like '%H42W%'
and gender = 'male'

#423327 (ID)	30	70	brown	brown	male	0H42W2 (License Plate)	Chevrolet	Spark LS
#664760 (iD)	21	71	black	black	male	4H42WR (License Plate)	Nissan	Altima

Select *
from person
where license_id = '423327'

#67318 (ID)	Jeremy Bowers	423327 (license_id)	530	Washington Pl, Apt 3A	871539279 (SSN)

####################################################################################################

#Did Jeremy Bowers check into the gym on 1/9 or was he in that area during the murder? Did he steal the gym bag?








