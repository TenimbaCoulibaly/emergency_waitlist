
-- Create table for Patient entity
CREATE TABLE patients (
    id VARCHAR(20) PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    injury_type VARCHAR(200),
    injury_severity INTEGER,
    position VARCHAR(255),
    registration_time DATE,
    username VARCHAR(200) UNIQUE,
    email_address VARCHAR(200) UNIQUE,
    password VARCHAR(200)
);

-- Create table for ADMIN entity
CREATE TABLE admins (
    id VARCHAR(20) PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    username VARCHAR(200) UNIQUE,
    email_address VARCHAR(200) UNIQUE,
    password VARCHAR(200)
);

-- Create table for Injury_List entity
CREATE TABLE injury_list (
    id VARCHAR(200) PRIMARY KEY,
    injury_type VARCHAR(200),
    injury_severity INTEGER
);

-- Create another table for Injury_List entity
CREATE TABLE another_injury_list (
    injury_type VARCHAR(200),
    injury_severity INTEGER
);

