CREATE DATABASE hr_analytics;

USE hr_analytics;

CREATE TABLE employees (

EmployeeNumber INT PRIMARY KEY,

Age INT,

Attrition VARCHAR(10),

BusinessTravel VARCHAR(50),

DailyRate INT,

Department VARCHAR(100),

DistanceFromHome INT,

Education INT,

EducationField VARCHAR(100),

EmployeeCount INT,

EnvironmentSatisfaction INT,

Gender VARCHAR(20),

HourlyRate INT,

JobInvolvement INT,

JobLevel INT,

JobRole VARCHAR(100),

JobSatisfaction INT,

MaritalStatus VARCHAR(50),

MonthlyIncome INT,

MonthlyRate INT,

NumCompaniesWorked INT,

Over18 VARCHAR(5),

OverTime VARCHAR(10),

PercentSalaryHike INT,

PerformanceRating INT,

RelationshipSatisfaction INT,

StandardHours INT,

StockOptionLevel INT,

TotalWorkingYears INT,

TrainingTimesLastYear INT,

WorkLifeBalance INT,

YearsAtCompany INT,

YearsInCurrentRole INT,

YearsSinceLastPromotion INT,

YearsWithCurrManager INT

);


SELECT * FROM employees;

SELECT count(*) FROM employees;


SELECT COUNT(*) AS Attrition_Count
FROM employees
WHERE Attrition = 'Yes';



SELECT Department,COUNT(*) AS Attrition
FROM employees
WHERE Attrition='Yes'
GROUP BY Department
ORDER BY Attrition DESC;

SELECT
Gender,
COUNT(*) AS Attrition
FROM employees
WHERE Attrition='Yes'
GROUP BY Gender;


SELECT JobRole, count(*) AS Attrition FROM employees WHERE Attrition='Yes' GROUP BY JobRole ORDER BY Attrition DESC;

SELECT
EmployeeNumber,
JobRole,
TotalWorkingYears
FROM employees
WHERE TotalWorkingYears > 10
ORDER BY TotalWorkingYears DESC;


SELECT
    Department,
    ROUND(AVG(MonthlyIncome), 2) AS Average_Salary
FROM employees
GROUP BY Department
ORDER BY Average_Salary DESC;