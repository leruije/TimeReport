
-- Create DB and user

-- sudo mysql -h localhost  -u root -p

show databases;

drop database timereport;
drop user timesheet;

create database timesheet;
create user timesheet;
GRANT ALL ON *.* TO 'timesheet'@localhost IDENTIFIED BY 'timesheet';
GRANT ALL ON *.* TO 'timesheet'@'%' IDENTIFIED BY 'timesheet';
GRANT ALL privileges ON `timesheet`.* TO 'timesheet'@localhost;
flush privileges;

-- Populate the DB

-- mysql -u timesheet -p
-- source timesheet.sql

