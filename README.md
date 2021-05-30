# Pewlett-Hackard-Analysis


## Overview of the analysis: 

In order to help Pewlett-Hackard leaders future-proof the company for the upcoming 'silver tsunami' of upcoming retirements, created an employee database and query the personnel data leveraging SQL.  The key objectives of the analysis are to determine how many people will be retiring, who is eligible for a retirement package, the number of vacancies that need to be filled, and opportunities for a mentorship program.


## Results: 

Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.

From the [retirement titles](https://github.com/Christopheremorgan/Pewlett-Hackard-Analysis/blob/main/Data/retirement_titles.csv) analysis we find that there are several employees on the list that don't work for the company any more, and there are multiple entries for some employees that have received promotions over the years. 

After ensuring that each employee did not have multiple entries with the [unique titles](https://github.com/Christopheremorgan/Pewlett-Hackard-Analysis/blob/main/Data/unique_titles.csv) analysis.  We still find that there are more than 90k employees born between 1952 and 1955 and of the prime retirement age.  When we group and count by title with the [retiring titles](https://github.com/Christopheremorgan/Pewlett-Hackard-Analysis/blob/main/Data/retiring_titles.csv) analysis we find that more than half of the list is made up of Senior Engineers and Senior Staff.

When we filter on employees born in 1965 to identify [eligibility for mentorship](https://github.com/Christopheremorgan/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibility.csv), we find there is are ~1,550 current employees, many of which are already senior engineers and senior staff.

The following [link](https://github.com/Christopheremorgan/Pewlett-Hackard-Analysis/blob/main/Queries/Employee_Database_challenge.sql) includes all the SQL queries for the requested challenge analysis.

## Summary: 
Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
How many roles will need to be filled as the "silver tsunami" begins to make an impact?
 - even when removing the employees that do not work for the company we find that there are still more than 72k current employees born between 1952 and 1955.  If we also assume retirement package eligibility also requires a hire date between 1985 and 1988 we sill have more than 40K currrent employees retiring.

Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

When we query for [total employees](https://github.com/Christopheremorgan/Pewlett-Hackard-Analysis/blob/0a59f23ca5f09eacc24c3b7767ad6475086ec9a1/Data/employee_count_by_dept.csv) and [retirement eligibility](https://github.com/Christopheremorgan/Pewlett-Hackard-Analysis/blob/0a59f23ca5f09eacc24c3b7767ad6475086ec9a1/Data/retirement_count_by_dept.csv) per department we see that each department has ~11% of employees eligible for retirement.
