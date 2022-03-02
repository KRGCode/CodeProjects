#Current Code for Solving the SQL Murder Mystery at https://mystery.knightlab.com/

Select *
from crime_scene_report
where type = 'murder'
and city = 'SQL City'


#20180115,	murder,	Security footage shows that there were 2 witnesses. The first witness lives at the last house on "Northwestern Dr", 
#The second witness, named Annabel, lives somewhere on "Franklin Ave".

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
