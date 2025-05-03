-- Total Numbes of Employees
SELECT 
	COUNT(*) AS Total_Employees 
FROM employee_information;

-- Total Numbers of Employees Who Left 
SELECT 
	COUNT(*) AS Total_Employee_Left
FROM attrition
WHERE Attrition_Status = 'Yes';

-- Attrition Rate (%)
SELECT
	(SELECT COUNT(*) FROM attrition
WHERE Attrition_Status = 'Yes') /
	(SELECT COUNT(*) 
FROM employee_information) * 100 AS Attrition_Rate;

-- Attrition by Marital Status
SELECT
	e.Marital_Status,
    COUNT(*) AS Employees_Left
FROM employee_information e 
JOIN attrition a 
	ON e.EmployeeID = a.EmployeeID
WHERE a.Attrition_Status = 'Yes'
GROUP BY e.Marital_Status;

-- Attrition By Job Level
SELECT
	J.Job_Level,
    COUNT(*) AS Employees_Left 
FROM job_information j
JOIN attrition a 
	ON j.EmployeeID = a.EmployeeID
WHERE a.Attrition_Status = 'Yes'
GROUP BY J.Job_Level
ORDER BY Employees_Left DESC;

-- Average Monhtly Income of Employee Who Stayed vs Left
SELECT 
	(SELECT AVG(e.Monthly_Income)
	FROM employee_information e
	JOIN attrition a
	ON e.EmployeeID = a.EmployeeID
	WHERE a.Attrition_Status = 'Yes') 
AS Avg_Income_Left,
	(SELECT AVG(e.Monthly_Income)
    FROM employee_Information e
	JOIN attrition a
    ON e.EmployeeID = a.EmployeeID
    WHERE a.Attrition_Status = 'No') 
AS Avg_Income_Stayed;

-- Attrition by Work-Life Balance
SELECT
	e.Work_Life_Balance,
    COUNT(*) AS Employees_Left
FROM employee_information e
JOIN attrition a 
	ON e.EmployeeID = a.EmployeeID
WHERE a.Attrition_Status = 'Yes'
GROUP BY e.Work_Life_Balance
ORDER BY Employees_Left DESC;

-- Attrition based on Years At Company
SELECT
	e.Years_At_Company,
    COUNT(*) AS Employees_Left
FROM employee_information e
JOIN attrition a 
	ON e.EmployeeID = a.EmployeeID
WHERE a.Attrition_Status = 'Yes'
GROUP BY e.Years_At_Company
ORDER BY e.Years_At_Company ASC;

-- Attrition by Young Employees + Low Income + OverTime
SELECT
	e.Age_Group,
    e.Monthly_Income,
    j.Over_Time,
    COUNT(*) AS Employees_Left
FROM employee_information e
JOIN job_information j
	ON e.EmployeeID = j.EmployeeID
JOIN attrition a 
	ON e.EmployeeID = a.EmployeeID
WHERE a.Attrition_Status = 'Yes' AND e.Age_Group = 'Young'
GROUP BY e.Age_Group, e.Monthly_Income, j.Over_Time
ORDER BY j.Over_Time DESC;


	
    