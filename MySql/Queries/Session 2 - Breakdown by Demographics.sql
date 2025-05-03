-- SESSION 2: WHO IS LEAVING - Breakdown by Demogrphics

-- 2.1 Attrition by Gender
SELECT 
	e.Gender, 
    COUNT(*) AS Employees_Left
FROM employee_information e 
JOIN attrition a 
	ON e.EmployeeID = a.EmployeeID
WHERE a.Attrition_Status = 'Yes'
GROUP BY e.Gender;

-- 2.2 Attrition by Age Group
SELECT
	e.Age_Group,
    COUNT(*) AS Employees_Left
FROM employee_information e 
JOIN attrition a 
	ON e.EmployeeID = a.EmployeeID
WHERE a.Attrition_Status = 'Yes'
GROUP BY e.Age_Group
ORDER BY Employees_Left DESC;

-- 2.3 Attrition by Department
SELECT
	j.Department,
    COUNT(*) AS Employees_Left
FROM job_information j
JOIN attrition a 
	ON j.EmployeeID = a.EmployeeID
WHERE a.Attrition_Status = 'Yes'
GROUP BY J.Department
ORDER BY Employees_Left DESC;

-- 2.4 Attrition by Job Role
SELECT
	j.Job_Role,
    COUNT(*) AS Employees_Left 
FROM job_information j
JOIN attrition a 
	ON j.EmployeeID = a.EmployeeID
WHERE a.Attrition_Status = 'Yes'
GROUP BY j.Job_Role
ORDER BY Employees_Left DESC;