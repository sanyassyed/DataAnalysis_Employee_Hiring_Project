use emp_hiring;

# How many distinct ethnicities are there in the employee table
SELECT DISTINCT(EthnicGroupID)
FROM Employee
ORDER BY 1;


# How many distinct paytypes are there?
SELECT DISTINCT(PayTypeID)
FROM Employee
ORDER BY 1;