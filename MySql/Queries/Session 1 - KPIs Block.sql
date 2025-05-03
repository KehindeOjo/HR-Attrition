-- SECTION 1: KPIs Block - Overview of Attrition
-- Total Employees, Employees Left, and Attrition Rate
SELECT 
	COUNT(*) AS Total_Employees,
    COUNT(CASE WHEN
a.Attrition_Status = 'Yes' THEN 1 END) AS Employees_Left,
	ROUND(COUNT(CASE WHEN
a.Attrition_Status = 'Yes' Then 1 END) * 100.0 / COUNT(*), 2) AS Attrition_Rate_Percent
FROM attrition a;