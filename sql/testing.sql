use emp_hiring;

--- Raw Data
SHOW COLUMNS FROM raw_employee;
SELECT COUNT(*) FROM raw_employee;
--- Clean Data
SHOW FULL COLUMNS FROM employee;
SHOW COLUMNS FROM region;
SHOW FULL COLUMNS FROM businessunit;

SELECT COUNT(*) FROM Employee;
SELECT COUNT(*) FROM region;
SELECT COUNT(*) FROM businessunit;

SELECT * FROM employee LIMIT 5;
SELECT * FROM region LIMIT 5;
SELECT * FROM businessunit LIMIT 5;

