# Pewlett-Hackard-Analysis

## Overview of Analysis
The purpose of this analysis was to determine the number of retiring employees by their title, 
and to identify employees who are eligible to participate in a mentorship program.
To begin with this assignment I was given 6 csv files filled with employee date. 
I used PGAdmin4 and PostgressSQL to create tables and organize the data to create new tables to only display the information that was needed to determine which employees qualify for the mentorship program.


## RESULTS



![Screen Shot 2022-10-02 at 8 40 29 PM](https://user-images.githubusercontent.com/110702997/193487451-08718a37-dd63-4e0f-96d9-42cd6ec452a3.png)


- First, I created a table with all the employees that have already retired. Although some of the employees are shown more than once on this table due to some position changes they had throughout the years of working in the company.
______________________________________________________________________________________________________________________________________________________________________

![Screen Shot 2022-10-02 at 8 54 59 PM](https://user-images.githubusercontent.com/110702997/193488394-8779189b-8fa2-4c34-ab00-9a6363e125cd.png)

- Next, I removed the employees that have already retired from the list. Also I modified this table to show the employees' most recent title, not the title that they were hired as when they first started. This resolved the issue of having duplicate values for the employees that have had promotions throughout the years.





_______________________________________________________________________________________________________________________________________________________________________

![Screen Shot 2022-10-02 at 8 27 26 PM](https://user-images.githubusercontent.com/110702997/193486515-4b4a9b34-67fa-4abc-8ed8-75f9977560b9.png)

- Next, I created a table where the count of all the employees that are retiring are shown and organized by the position or "title" that they have within the company. As you can see most of the employees retiring are the ones with the "senior" positions. As they have been in the company the longest.

_______________________________________________________________________________________________________________________________________________________________________
![Screen Shot 2022-10-02 at 8 33 30 PM](https://user-images.githubusercontent.com/110702997/193486993-c040d670-1b42-4e1c-b5c1-43c3b6766ad7.png)

- Lastly, I created another table showing the employees getting near to their retirement that qualify for the mentorship program. The list is huge and this would greatly benefit the company by allowing the qualifying employees to work part-time while they mentor the new hires and make the transition easier.
_______________________________________________________________________________________________________________________________________________________________________

## SUMMARY

By taking a look at the csv files that I created we can see that about 72,500 employees are getting ready to retire. You can see by looking at the bottom of the "unique_titles" table shown below.


![Screen Shot 2022-10-02 at 9 09 00 PM](https://user-images.githubusercontent.com/110702997/193489516-24555a7a-c981-4d83-9be5-488249a6f569.png)


Now this would mean about the same number, if not MORE, of new hires would be needed to replace all of these employees that have left and that are planning to retire in the near future.


As of right now, only *1,550 senior employees* qualify to participate in the mentorship program.

![Screen Shot 2022-10-02 at 9 13 05 PM](https://user-images.githubusercontent.com/110702997/193489820-7d962ccc-3678-4885-98bd-5376f7fc17b7.png)

Even though this is a great program to help the new hires used to working in their new job, 1,550 mentors is no where near enough to be able to teach all of the 72,500 potential new employees. Either more people should be able to qualify for the mentorship program or have some employees stick around a little bit longer in the company to be able to fufill the companies needs.
-
