############ create a database ############

drop database if exists emp_hiring;
create database emp_hiring;
use emp_hiring;

############ create tables ############
drop table if exists Raw_Employee;
truncate Raw_Employee;
create table Raw_Employee (
	date date,
	EmpID integer,
    Gender char(1),
    Age integer,
	EthnicGroup integer,
	FP char(1),
    TermDate date,
    BU integer,
	HireDate date,
	PayTypeID char(1),
	TermReason char(1));

drop table if exists Raw_BU;
truncate Raw_BU;
create table Raw_BU (
	BU integer,
    RegionSeq varchar(100),
    VP varchar(100));

############ load data ############

load data local infile 'C:/Users/sanya/OneDrive/Documents/wecloudproject/DataAnalysis_SQL_PowerBI_Project/data/Raw_Employee.csv'
into table Raw_Employee
fields terminated by ','
enclosed by '"'
lines terminated by '\r\n'
ignore 1 lines;

load data local infile 'C:/Users/sanya/OneDrive/Documents/wecloudproject/DataAnalysis_SQL_PowerBI_Project/data/Raw_BU.csv'
into table Raw_BU
fields terminated by ','
enclosed by '"'
lines terminated by '\r\n'
ignore 1 lines;

############ load data ############
# Verify data loading
# Raw_Employee Table
SELECT COUNT(*) FROM Raw_Employee;
SELECT * FROM Raw_Employee LIMIT 10;

# Raw_BU Table
SELECT COUNT(*) FROM Raw_BU;
SELECT * FROM Raw_BU LIMIT 10;