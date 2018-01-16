CREATE DATABASE IF NOT EXISTS handa_db;
CREATE DATABASE IF NOT EXISTS toms_db;
USE toms_db;
GRANT ALL PRIVILEGES ON toms_db.* TO 'tomsuser'@'%' IDENTIFIED BY 'tomsuser';
GRANT ALL PRIVILEGES ON toms_db.* TO 'tomsuser'@'localhost' IDENTIFIED BY 'tomsuser';
USE handa_db;
GRANT ALL PRIVILEGES ON handa_db.* TO 'handauser'@'%' IDENTIFIED BY 'handauser';
GRANT ALL PRIVILEGES ON handa_db.* TO 'handauser'@'localhost' IDENTIFIED BY 'handauser';