use emp_hiring;

# How many distinct ethnicities are there in the employee table
SELECT DISTINCT(EthnicGroupID)
FROM Employee
ORDER BY 1;


# How many distinct paytypes are there?
SELECT DISTINCT(PayTypeID)
FROM Employee
ORDER BY 1;

# New Hires in 2014
SELECT COUNT(*)
FROM (SELECT EmpID, MAX(date)
FROM employee
WHERE TermDate is NULL 
	  AND YEAR(Date) = 2014
      AND Year(HireDate) = Year(Date) 
      AND Month(HireDate) = Month(Date)
GROUP BY EmpID) as x;

# New Hires yearwise
SELECT year, COUNT(*) NewHires
FROM (SELECT YEAR(Date) year, EmpID, MAX(date)
FROM employee
WHERE TermDate is NULL 
      AND Year(HireDate) = Year(Date) 
      AND Month(HireDate) = Month(Date)
GROUP BY YEAR(Date), EmpID) as x
GROUP BY year;


# EmpCount in 2014 (terminated included)
SELECT COUNT(*)
FROM (SELECT EmpID, MAX(date)
FROM employee
WHERE YEAR(Date) = 2014
GROUP BY EmpID) as x;

# Active employees in 2014
SELECT COUNT(*)
FROM (SELECT EmpID, MAX(date)
FROM employee
WHERE YEAR(Date) = 2014
      AND TermDate IS NULL
GROUP BY EmpID) as x;


# Terminated Employees
SELECT COUNT(*)
FROM (SELECT EmpID, MAX(date)
FROM employee
WHERE TermDate is NOT NULL 
	  AND YEAR(Date) = 2014
GROUP BY EmpID) as x;

# List of latest active employee records
SELECT EmpID, MAX(date) as latest_date
FROM employee
WHERE TermDate is NOT NULL 
	  AND YEAR(Date) = 2014
GROUP BY EmpID;