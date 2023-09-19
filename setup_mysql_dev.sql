-- Project SQL Script
-- Description: Prepare MySQL server for project

-- Create the database hbnb_dev_db if it doesn't already exist
CREATE DATABASE IF NOT EXISTS hbnb_dev_db;

-- Create the user hbnb_dev if it doesn't already exist
CREATE USER IF NOT EXISTS 'chura'@'localhost' IDENTIFIED BY CHUrabrady123?';

-- Grant all privileges on hbnb_dev_db to the user hbnb_dev
GRANT ALL PRIVILEGES ON hbnb_dev_db.* TO 'hbnb_dev'@'localhost';

-- Grant SELECT privilege on performance_schema to the user hbnb_dev
GRANT SELECT ON performance_schema.* TO 'hbnb_dev'@'localhost';

-- Flush privileges to apply the changes
FLUSH PRIVILEGES;

