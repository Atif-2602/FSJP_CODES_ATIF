-- Exp 5: MySQL database setup for the Login application
-- Name: Qureshi Atif Meraj Alam | UIN: 251P004
-- Run these commands in MySQL Workbench / mysql CLI:

CREATE DATABASE IF NOT EXISTS exp5db;
USE exp5db;

CREATE TABLE IF NOT EXISTS userdata (
    Name     VARCHAR(50),
    Email    VARCHAR(50) PRIMARY KEY,
    Password VARCHAR(50)
);

-- Sample records (login credentials)
INSERT INTO userdata (Name, Email, Password) VALUES
    ('Qureshi Atif Meraj Alam', 'atifq2602@gmail.com', 'Mayuresh@43'),
    ('Atif', 'atif@example.com', 'atif123');
