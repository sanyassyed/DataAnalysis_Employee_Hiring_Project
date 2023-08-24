use emp_hiring;

# Raw Data
SHOW COLUMNS FROM raw_employee;
SHOW COLUMNS FROM raw_bu;
SELECT COUNT(*) FROM raw_employee;

# Clean Data
SHOW COLUMNS FROM employee;
SHOW COLUMNS FROM region;
SHOW COLUMNS FROM businessunit;

SHOW FULL COLUMNS FROM employee;
SHOW FULL COLUMNS FROM region;
SHOW FULL COLUMNS FROM businessunit;

SELECT COUNT(*) FROM Employee;
SELECT COUNT(*) FROM region;
SELECT COUNT(*) FROM businessunit;

SELECT * FROM employee LIMIT 5;
SELECT * FROM region LIMIT 5;
SELECT * FROM businessunit LIMIT 5;

# New Hires in 2011
SELECT COUNT(*)
FROM (SELECT EmpID, MAX(date)
FROM employee
WHERE TermDate is NULL 
	  AND YEAR(Date) = 2014
      AND Year(HireDate) = Year(Date) 
      AND Month(HireDate) = Month(Date)
GROUP BY EmpID) as x;

# EmpCount in 2011 terminated included
SELECT COUNT(*)
FROM (SELECT EmpID, MAX(date)
FROM employee
WHERE YEAR(Date) = 2014
GROUP BY EmpID) as x;

# Active employees in 2011
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

SELECT EmpID, MAX(date) as latest_date
FROM employee
WHERE TermDate is NOT NULL 
	  AND YEAR(Date) = 2014
GROUP BY EmpID;