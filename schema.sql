DROP DATABASE IF EXISTS job_portal_db;
CREATE DATABASE job_portal_db;
USE job_portal_db;
-- ============================
-- USE DATABASE (DO NOT CREATE HERE)
-- ============================
USE job_portal_db;

-- ============================
-- USERS TABLE
-- ============================
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    role ENUM('admin','employer','job_seeker') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ============================
-- COMPANIES TABLE
-- ============================
CREATE TABLE companies (
    company_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT UNIQUE,
    company_name VARCHAR(150) NOT NULL,
    industry VARCHAR(100),
    city VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
-- ============================
-- JOB SEEKERS TABLE
-- ============================
CREATE TABLE job_seekers (
    seeker_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT UNIQUE,
    city VARCHAR(100),
    experience_years INT,
    expected_salary DECIMAL(10,2),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- ============================
-- SKILLS TABLE (MOVE UP)
-- ============================
CREATE TABLE skills (
    skill_id INT AUTO_INCREMENT PRIMARY KEY,
    skill_name VARCHAR(100)
);
-- ============================
-- JOB LISTINGS TABLE
-- ============================
CREATE TABLE job_listings (
    job_id INT AUTO_INCREMENT PRIMARY KEY,
    company_id INT,
    job_title VARCHAR(150),
    location VARCHAR(100),
    min_salary DECIMAL(10,2),
    max_salary DECIMAL(10,2),
    status ENUM('Open','Closed') DEFAULT 'Open',
    FOREIGN KEY (company_id) REFERENCES companies(company_id)
);

-- ============================
-- APPLICATIONS TABLE
-- ============================
CREATE TABLE applications (
    application_id INT AUTO_INCREMENT PRIMARY KEY,
    job_id INT,
    seeker_id INT,
    status ENUM('Applied','Hired','Rejected') DEFAULT 'Applied',
    applied_date DATE,
    FOREIGN KEY (job_id) REFERENCES job_listings(job_id),
    FOREIGN KEY (seeker_id) REFERENCES job_seekers(seeker_id)
);

-- ============================
-- JOB SEEKER SKILLS (M:N)
-- ============================
CREATE TABLE job_seeker_skills (
    id INT AUTO_INCREMENT PRIMARY KEY,
    seeker_id INT,
    skill_id INT,
    FOREIGN KEY (seeker_id) REFERENCES job_seekers(seeker_id),
    FOREIGN KEY (skill_id) REFERENCES skills(skill_id)
);
-- ============================
-- JOB LISTING SKILLS (M:N)
-- ============================
CREATE TABLE job_listing_skills (
    id INT AUTO_INCREMENT PRIMARY KEY,
    job_id INT,
    skill_id INT,
    FOREIGN KEY (job_id) REFERENCES job_listings(job_id),
    FOREIGN KEY (skill_id) REFERENCES skills(skill_id)
);
SHOW tables;