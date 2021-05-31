# Pewlett-Hackard-Analysis


## Overview of the analysis: 

To help Pewlett-Hackard future-proof the company for the upcoming 'silver tsunami' of upcoming retirements, an employee database was created and queried using SQL.  The key objectives of the analysis are to determine how many people will be retiring, who is eligible for a retirement package, the number of vacancies that need to be filled, and opportunities for a mentorship program.


## Results: 

From the [retirement titles](https://github.com/Christopheremorgan/Pewlett-Hackard-Analysis/blob/main/Data/retirement_titles.csv) analysis we find..
* there are several employees on the list that don't work for the company any more
* there are multiple entries for some employees that have received promotions over the years 

After ensuring that each employee did not have multiple entries with the [unique titles](https://github.com/Christopheremorgan/Pewlett-Hackard-Analysis/blob/main/Data/unique_titles.csv) analysis, and group and count [retirees by titles](https://github.com/Christopheremorgan/Pewlett-Hackard-Analysis/blob/main/Data/retiring_titles.csv) we find...
* more than 90k employees born between 1952 and 1955 and of the prime retirement age
* more than half of the list is made up of Senior Engineers and Senior Staff

![image_name](https://github.com/Christopheremorgan/Pewlett-Hackard-Analysis/blob/main/Data/emp_counts_by_dept.png)

When we filter on employees born in 1965 to identify [eligibility for mentorship](https://github.com/Christopheremorgan/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibility.csv), we find...
* there are ~1,550 current employees eligible for mentorship 
* many of those eligible are senior engineers and senior staff

The following [link](https://github.com/Christopheremorgan/Pewlett-Hackard-Analysis/blob/main/Queries/Employee_Database_challenge.sql) includes all the SQL queries for both the requested analysis along with a few others for additional analysis.


## Summary: 
After removing the employees that no longer work for the company we find that there are more than 72k current employees born between 1952 and 1955.  Assuming retirement package eligibility requires a hire date between 1985 and 1988 we have more than 40K current employees eligible for a retirement package.

Whether there are enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees requires additional information beyond what is currently in the data, including...
* are there plans to optimize the organization in a way that doesn't require backfilling employees?
* is 1:1 mentoring required or can the 'tribal knowledge' be documented in knowledge portals for future owners?
* are there opportunities for post retirement training engagement contracts?

[then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."]

When we query for [total employees](https://github.com/Christopheremorgan/Pewlett-Hackard-Analysis/blob/0a59f23ca5f09eacc24c3b7767ad6475086ec9a1/Data/employee_count_by_dept.csv) and [retirement eligibility](https://github.com/Christopheremorgan/Pewlett-Hackard-Analysis/blob/0a59f23ca5f09eacc24c3b7767ad6475086ec9a1/Data/retirement_count_by_dept.csv) per department we see that each department has ~11% of employees eligible for retirement.

Employee Summary Counts By Dept: ![image_name](https://github.com/Christopheremorgan/Pewlett-Hackard-Analysis/blob/main/Data/emp_counts_by_dept.png)

