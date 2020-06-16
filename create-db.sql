
-- Create DB and user

-- sudo mysql -h localhost  -u root -p

show databases;

drop database timereport;
drop user timesheet;

create database timereport;
create user timesheet;
GRANT ALL ON *.* TO 'timesheet'@localhost IDENTIFIED BY 'timesheet';
GRANT ALL ON *.* TO 'timesheet'@'%' IDENTIFIED BY 'timesheet';
GRANT ALL privileges ON `timesheet`.* TO 'timesheet'@localhost;
flush privileges;

-- Populate the DB

-- mysql -u timereport -p
-- source timereport.sql

