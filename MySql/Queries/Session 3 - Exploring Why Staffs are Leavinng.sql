-- SESSION 3: WHY THEY ARE LEAVING - Exploring Drivers

-- 3.1 Attrition by Income Bracket
SELECT
	e.Income_Bracket,
    COUNT(*) AS Employees_Left
FROM employee_information e
JOIN attrition a 
	ON e.EmployeeID = a.EmployeeID
WHERE a.Attrition_Status = 'Yes'
GROUP BY e.Income_Bracket
ORDER BY Employees_Left DESC;

-- 3.2 Attrition by Overtime
SELECT
	j.Over_Time,
    COUNT(*) AS Employees_Left 
FROM job_information j
JOIN attrition a 
	ON j.EmployeeID = a.EmployeeID
WHERE a.Attrition_Status = 'Yes'
GROUP BY j.Over_Time; 

-- 3.3 Attrition by Job Satisfaction
SELECT
	j.job_satisfaction,
    COUNT(*) AS Employees_Left
FROM job_information j
JOIN attrition a 
	ON j.EmployeeID = a.EmployeeID
WHERE a.Attrition_Status = 'Yes'
GROUP BY j.Job_Satisfaction
ORDER BY j.Job_Satisfaction ASC;
