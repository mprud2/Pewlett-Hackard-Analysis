-- Deliverable 1 from Matthew Prudhomme

-- Create Retirement Titles Table that holds all the most recent titles of employees
-- who were born between 1952 and 1955. Then count number of employees with each title.
-- Include only current employees
SELECT e.emp_no, 
    e.first_name,
    e.last_name,
    t.title,
    t.from_date,
    t.to_date
-- INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '01-01-1952' AND '12-31-1955')
ORDER BY e.emp_no
;


-- Use Dictinct ON with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no, 
                            rt.first_name,
                            rt.last_name,
                            rt.title
INTO unique_titles
FROM retirement_titles AS rt
WHERE rt.to_date = '9999-01-01'
ORDER BY rt.emp_no, rt.title
;

-- Query to retrieve number of employees by most recent job title who are about to retire
SELECT  COUNT (ut.emp_no),
ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY ut.count DESC
;


-- Deliverable 2 from Matthew Prudhomme
-- Create a query for mentorship eligibility
-- Table should include emp_no, first_name, last_name, birth_date, from_date, to_date, and title
SELECT DISTINCT ON (e.emp_no) e.emp_no,
        e.first_name,
        e.last_name,
        e.birth_date,
        de.from_date,
        de.to_date,
        t.title
-- INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01') AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no
;


        