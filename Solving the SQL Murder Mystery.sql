/*The SQL Murder Mystery-https://mystery.knightlab.com//  */

/*You vaguely remember that the crime was a ​murder​ that occurred sometime on ​Jan.15, 2018​ and that it took place in ​SQL City​.*/

Select * from crime_scene_report
where city is "SQL City" 
and type is "murder"
and date is "20180115";

/*Results: 
Date: 20180115, Type: Murder, City: SQL City
Description: Security footage shows that there were 2 witnesses. 
The first witness lives at the last house on "Northwestern Dr". 
The second witness, named Annabel, lives somewhere on "Franklin Ave".*/

/*First Witness-------------------------------------------------------------*/

Select * from person
where address_street_name is "Northwestern Dr"
order by address_number desc;

/*Results:
ID: 14887, Name: Morty Schapiro, License_id: 118009, address_number: 4919, 
address_street_name: Northwestern Drive, SSN: 11564949 */

Select * from interview
where person_id is "14887"

/*Results:
Person ID: 14887, I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag. 
The membership number on the bag started with "48Z". Only gold members have those bags. 
The man got into a car with a plate that included "H42W". */

/*Second Witness-----------------------------------------------------------*/

Select * from person
where address_street_name is "Franklin Ave"
and name like 'Annabel%'

/*Results:
ID: 16371, Name: Annabel Miller, license_id: 490173, address_number: 103, address_street_name: Franklin Ave, SSN: 318771143 */

Select * from interview
where person_id is "16371"

/*Results:
Peron ID: 16371, I saw the murder happen, and I recognized the killer from my gym when I was working out last week 
on January the 9th.*/

/*Notes, both witnesses mention the gym with first witness having license plate details */

Select * from get_fit_now_check_in
where check_in_date is '20180109'
and membership_id like '48Z%'
              
/*Results:
Membership_id-48Z7A, check_in_date-20180109, check_in_time-1600, check_out_time-1730
Membership_id-48Z55, check_in_date-20180109, check_in_time-1530, check_out_time-1700
*/

Select * from get_fit_now_member
where Id like '48Z%'
and membership_status is 'gold'
              
/*Resuls:
Id-48Z7A, person_id-28819, Name-Joe Germuska, membership_star_date-20160305, membership_status-gold
Id-48Z55, person_id-67318, Name-Jeremy Bowers, membership_star_date-20160101, memebership_status-gold
*/

/*Notes: No interview found for person_id 28819, Joe Germuska*/

Select * from interview
where person_id is '67318'

/*Results:
person_id-67318, transcript-I was hired by a woman with a lot of money. 
I don't know her name but I know she's around 5'5" (65") or 5'7" (67"). 
She has red hair and she drives a Tesla Model S. 
I know that she attended the SQL Symphony Concert 3 times in December 2017. */

Select * from facebook_event_checkin
where date like '201712%'
and event_name like'SQL%'
order by person_id

/*Notes-query showed two person_ids that attended the SQL symphony three times in December 2017, 24556 and 99716 */

Select * from drivers_license
where hair_color is 'red'
and car_make is 'Tesla'
and gender is 'female'
and height between 65 and 67

/*Notes query showed three females with Tesla Model S, height match, and female, IDs are 202298, 291182, and 918773 */

Select * from person
where license_id is '202298'

/* Results are Miranda Priestly, SSN-987756388 */

Select * from person
where license_id is '291182'

/* Results are Regina George, SSN-337169072 */

Select * from person
where license_id is '918773'

/* Results are Red Korb, SSN-961388910 */

Select * from income
where ssn is '987756388'

/* Results are $310,000 for Miranda */

Select * from income
where ssn is '337169072'

/* No results */

Select * from income
where ssn is '961388910'

/*Results are $278,000 for Red */

/*Notes-Mirand has the highest salary and matches the description, solution query shows the killer as Miranda Priestly /*











