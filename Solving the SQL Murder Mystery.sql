/*The SQL Murder Mystery-https://mystery.knightlab.com//
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





