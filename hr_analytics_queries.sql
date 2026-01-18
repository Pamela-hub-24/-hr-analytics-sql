-- use portfolio;

-- SELECT * FROM portfolio.`hr-employee-attrition`;

 -- 1. Total Employees
--  SELECT COUNT(*) AS total_employees FROM portfolio.`hr-employee-attrition`;

-- 2. ATTRITION RATE 
--  SELECT 
--   ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100 / COUNT(*), 2) AS attrition_rate
-- FROM portfolio.`hr-employee-attrition`;

-- 3. EMPOYLEE BY DEPARTMENT
-- SELECT Department, COUNT(*) AS count
-- FROM portfolio .`hr-employee-attrition`
-- GROUP BY Department;

-- 4. AVERAGE MONTHLY INCOME BY JOB ROLE 
-- SELECT JobRole, ROUND(AVG(MonthlyIncome), 2) AS avg_income
-- FROM portfolio .`hr-employee-attrition`
-- GROUP BY JobRole
-- ORDER BY avg_income DESC;

-- 5. ATTRITION BY GENDER
-- SELECT Gender, 
--        COUNT(*) AS total, 
--        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count,
--        ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)*100 / COUNT(*), 2) AS attrition_rate
-- FROM portfolio .`hr-employee-attrition`
-- GROUP BY Gender;

-- 6. ATTRITION BY JOB ROLE
-- SELECT JOBRole,
--        COUNT(*) AS total,
--        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_count,
--        ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)* 100 / COUNT(*), 2) AS attrition_rate
-- FROM portfolio .`hr-employee-attrition`
-- GROUP BY JOBRole
-- ORDER BY attrition_rate DESC;

-- 7. AVERAGE INCOME BY EDUCATION FIELD 
-- SELECT EducationField, ROUND(AVG(MonthlyIncome), 2) AS avg_income
-- FROM portfolio .`hr-employee-attrition`
-- GROUP BY EducationField
-- ORDER BY avg_income DESC;

-- 8. SATISFACTION SCORE BREAKDOWN
--  SELECT JobSatisfaction, COUNT(*) AS num_employees
-- FROM portfolio .`hr-employee-attrition`
-- GROUP BY JobSatisfaction
-- ORDER BY JobSatisfaction DESC;


-- 9. ARE NEWER EMPLOYEE LEAVING MORE OFTEN?
-- SELECT YearsAtCompany,
--        COUNT(*) AS total_employees,
--        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_count,
--        ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100 / COUNT(*), 2) AS attrition_rate
-- FROM portfolio .`hr-employee-attrition`
-- GROUP BY YearsAtCompany
-- ORDER BY YearsAtCompany;

-- 10. DO EMPLOYEE WHO WORKS OVERTIME LEAVES MORE OFTEN 
-- SELECT OverTime,
--        COUNT(*) AS total,
--        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count,
--        ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)*100.0 / COUNT(*), 2) AS attrition_rate
-- FROM portfolio .`hr-employee-attrition`
-- GROUP BY OverTime;

-- 11. SALARAY DISTRIBUTION BETWEEN INCOME AND ATTRITION
-- SELECT 
--   CASE 
--     WHEN MonthlyIncome < 3000 THEN 'Low'
--     WHEN MonthlyIncome BETWEEN 3000 AND 8000 THEN 'Medium'
--     ELSE 'High'
--   END AS income_group,
--   COUNT(*) AS total,
--   SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count,
--   ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)*100.0 / COUNT(*), 2) AS attrition_rate
-- FROM portfolio .`hr-employee-attrition`
-- GROUP BY income_group
-- ORDER BY attrition_rate DESC;

-- 12. LONGEST SERVING EMPLOYEE (TOP 5)
SELECT EmployeeNumber, JobRole, Department, YearsAtCompany
FROM portfolio .`hr-employee-attrition`
ORDER BY YearsAtCompany DESC
LIMIT 5;

 










