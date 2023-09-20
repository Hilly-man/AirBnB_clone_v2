-- check if the database hbnb_test_db exists
SELECT SCHEMA_NAME
FROM INFORMATION_SCHEMA.SCHEMATA
WHERE SCHEMA_NAME = 'hbnb_test_db';

-- If the database doesn't exist, create it
CREATE DATABASE IF NOT EXISTS hbnb_test_db;


-- check if the user hbnb_test exists
SELECT user
FROM mysql.user
WHERE user = 'hbnb_test';


-- If the user doesnt exist, create it and grant privileges
CREATE USER IF NOT EXISTS 'hbnb_test'@'localhost' IDENTIFIED BY 'CHUrabrady123?';

-- Grant privileges to the user hbnb_test on hbnb_test_db
GRANT ALL PRIVILEGES ON hbnb_test_db.* TO 'hbnb_test'@'localhost';

-- Grant SELECT privilege to the user hbnb_test on performance_schema
GRANT SELECT ON performance_schema.* TO 'hbnb_test'@'localhost';

-- Flush privileges to apply changes
FLUSH PRIVILEGES;
