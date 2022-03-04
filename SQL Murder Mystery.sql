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

#67318 (person_id)	Jeremy Bowers	423327 (license_id)	530	Washington Pl, Apt 3A	871539279 (SSN)

####################################################################################################

#Did Jeremy Bowers check into the gym on 1/9 or was he in that area during the murder? Did he steal the gym bag? More than one person involved, hired hit man?
#Murder was on 1/15/2018

Select facebook_event_checkin.person_id, interview.person_id, transcript
from Interview
join facebook_event_checkin
on interview.person_id = facebook_event_checkin.person_id
where interview.person_id = '67318'

#Interview with Jeremy Bowers-
#67318 (person_id)	I was hired by a woman with a lot of money. I don't know her name but I know she's around 5'5" (65") or 5'7" (67"). 
#She has red hair and she drives a Tesla Model S. I know that she attended the SQL Symphony Concert 3 times in December 2017.
########################################################################################################################################

Select *
from facebook_event_checkin
where date like '201712%'
and
event_name like '%SQL%';

Review of queried data shows person_id 99716 appearing three times

Select *
from facebook_event_checkin
where person_id = '99716'
and
event_name like '%SQL%';

#99716 (person_id)	1143	SQL Symphony Concert	20171206 (Date)
#99716 (person_id)	1143	SQL Symphony Concert	20171212 (Date)
#99716 (person_id)	1143	SQL Symphony Concert	20171229 (Date)

#99716 did not reveal an interview
###############################################################################################################################################
#Interview with Jeremy Bowers--lots of money, height between 65 and 67, red hair, Tesla Model S

Select *
from drivers_license
where gender = 'female'
and 
car_make = 'Tesla'
and
car_model = 'Model S'
and
hair_color = 'red';


#202298 (ID)	68 (Age)	66	green	red	female	500123 (plates)	Tesla	Model S
#291182 (ID)	65 (Age)	66	blue	red	female	08CM64 (plates)	Tesla	Model S
#918773 (ID)	48 (Age)	65	black	red	female	917UU3 (plates)	Tesla	Model S

Select *
from person
where license_id = '291182'
or
license_id = '202298'
or
license_id = '918773'


#78881 (ID)	Red Korb	918773	107	Camerata Dr	961388910 (SSN)
#90700 (ID)	Regina George	291182	332	Maple Ave	337169072 (SSN)
#99716 (ID)	Miranda Priestly	202298	1883	Golden Ave	987756388 (SSN)
#No interviews found with the above ids





