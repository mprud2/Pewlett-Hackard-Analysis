# Pewlett Hackard Analysis
Module 7 repository

## Overview of Project
A client (Pewlett Hackard) is trying to ascertain the potential impacts of attrition due to retirement from their workforce.  This analysis is meant to not only identify staff who will be reaching retirement age and eligibility, but to categorize what departments are at higher risk from retirements, and to create a list of employees who would be useful mentors to help in retaining tribal knowledge and skills. 

## Results

### Data Availability, Structure, and Deliverables
![EmployeeDB](https://user-images.githubusercontent.com/104801614/177409756-ddc0cd8c-a7db-462d-ab41-85142a3e0277.png)

The Entity Relationship Diagram for the available databases is presented above.  It shows that the Employees, Dept_Emp, and Titles databases will be instrumental in achieving the objectives listed in the Overview, and that the employee number ('emp_no') will serve as our primary key for relational queries.  Databases were created to record all of the retirement-eligible employees by current title (unique_titles.csv), to group those employees by current title to identify potential gaps (retiring_titles.csv), and to identify all employees who could potentially participate in a Mentorship Program (mentorship_eligibility.csv)

### Analysis of the Total Number of Retiring Employees by Title 
There were two observations about the data before any analysis could be conducted: identification of retirement-age employees by title was complicated by the fact that the Titles database includes all of the titles that an employee ever held while working for Pewlett Hackard, and included past employees who may have already retired.  The data was first filtered using the 'to_date' parameter to identify current employees.  But because the same employee can be included multiple times in the analysis if they have held multiple job titles over their career, the initial count of employees (found in retirement_titles.csv) needed to filtered to include only the most recent title held by the employee (saved in unique_titles.csv).  

Once these filters were in place, a count of employees by their job title could be established.  This analysis showed that there are 72,458 Pewlett Hackard employees who are approaching retirement age, and that the vast majority (50,842, or 70% of the total) are either Senior Engineers or Senior Staff.  These results can be used by Pewlett Hackard to plan for job and responsibility training to enable a smooth transitions.
<img width="605" alt="Retiring_titles_screenshot" src="https://user-images.githubusercontent.com/104801614/177413138-892b7048-eea7-4295-ad26-4a580fbef160.png">

### Employees Eligible for Mentoring Program
A list of eligible mentors was also generated from the analysis (mentorship_eligibility.csv). It will be a useful tool in connecting with potential mentors, and could be expanded upon by further subdividing the results.
<img width="492" alt="Mentorship_eligibility_csv_capture" src="https://user-images.githubusercontent.com/104801614/177415796-ad3fb56e-56a0-4dd6-a9b6-c3d5d099d6c0.png">

## Summary
Pewlett Hackard will have 72,458 roles that need to be filled from eventual retirements (and that is just from employees born in 1965!  A similar analysis should be undertaken for each year to identify years where attrition could be higher or lower).

The Mentorship Eligibility query result includes every current employee who was born in 1965, along with their employee number, birth date, date of hire, and current title.  This list will prove useful in aligning mentors with mentees.  It may provide further use to Pewlett Hackard if it were to include each employee's department, to further subdivide employee's knowledge base.  This, along with a similar list of eligible mentees would provide a blueprint for career planning and backfilling eventual departures.

