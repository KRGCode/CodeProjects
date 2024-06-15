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

