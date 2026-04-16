INSERT INTO users (full_name, email, password_hash, role) VALUES
-- Job Seekers (1–15)
('Amit Sharma', 'amit@gmail.com', 'pass123', 'job_seeker'),
('Neha Verma', 'neha@gmail.com', 'pass123', 'job_seeker'),
('Priya Singh', 'priya@gmail.com', 'pass123', 'job_seeker'),
('Ankit Jain', 'ankit@gmail.com', 'pass123', 'job_seeker'),
('Rahul Singh', 'rahul@gmail.com', 'pass123', 'job_seeker'),
('Simran Kaur', 'simran@gmail.com', 'pass123', 'job_seeker'),
('Rohit Verma', 'rohit@gmail.com', 'pass123', 'job_seeker'),
('Pooja Mehta', 'pooja@gmail.com', 'pass123', 'job_seeker'),
('Karan Patel', 'karan@gmail.com', 'pass123', 'job_seeker'),
('Sneha Kapoor', 'sneha@gmail.com', 'pass123', 'job_seeker'),
('Vikas Yadav', 'vikas@gmail.com', 'pass123', 'job_seeker'),
('Meera Iyer', 'meera@gmail.com', 'pass123', 'job_seeker'),
('Aditya Roy', 'aditya@gmail.com', 'pass123', 'job_seeker'),
('Nisha Gupta', 'nisha@gmail.com', 'pass123', 'job_seeker'),
('Arjun Das', 'arjun@gmail.com', 'pass123', 'job_seeker'),

-- Employers (16–25)
('Ravi Mehta', 'ravi@gmail.com', 'pass123', 'employer'),
('TechCorp HR', 'hr@techcorp.com', 'pass123', 'employer'),
('Infosys HR', 'hr@infosys.com', 'pass123', 'employer'),
('TCS Recruiter', 'hr@tcs.com', 'pass123', 'employer'),
('Amazon HR', 'hr@amazon.com', 'pass123', 'employer'),
('Google HR', 'hr@google.com', 'pass123', 'employer'),
('Microsoft HR', 'hr@microsoft.com', 'pass123', 'employer'),
('Wipro HR', 'hr@wipro.com', 'pass123', 'employer'),
('Accenture HR', 'hr@accenture.com', 'pass123', 'employer'),
('Capgemini HR', 'hr@capgemini.com', 'pass123', 'employer');
SELECT COUNT(*) FROM users;
-- ============================
-- COMPANIES DATA
-- ============================
INSERT INTO companies (user_id, company_name, industry, city) VALUES
(16, 'Mehta Corp', 'Finance', 'Mumbai'),
(17, 'TechCorp', 'IT', 'Bangalore'),
(18, 'Infosys', 'IT', 'Pune'),
(19, 'TCS', 'IT', 'Hyderabad'),
(20, 'Amazon', 'IT', 'Bangalore'),
(21, 'Google', 'IT', 'Hyderabad'),
(22, 'Microsoft', 'IT', 'Bangalore'),
(23, 'Wipro', 'IT', 'Pune'),
(24, 'Accenture', 'IT', 'Mumbai'),
(25, 'Capgemini', 'IT', 'Chennai');
SELECT * FROM companies;
-- ============================
-- JOB SEEKERS DATA
-- ============================
INSERT INTO job_seekers (user_id, city, experience_years, expected_salary) VALUES
(1, 'Delhi', 2, 500000),
(2, 'Mumbai', 3, 700000),
(3, 'Bangalore', 1, 400000),
(4, 'Pune', 2, 600000),
(5, 'Delhi', 4, 900000),
(6, 'Hyderabad', 2, 550000),
(7, 'Chennai', 3, 650000),
(8, 'Mumbai', 1, 350000),
(9, 'Bangalore', 5, 1200000),
(10, 'Pune', 2, 500000),
(11, 'Delhi', 3, 750000),
(12, 'Hyderabad', 2, 480000),
(13, 'Chennai', 4, 850000),
(14, 'Mumbai', 1, 300000),
(15, 'Bangalore', 3, 700000);
SELECT COUNT(*) FROM job_seekers;
-- ============================
-- SKILLS DATA
-- ============================
INSERT INTO skills (skill_name) VALUES
('Java'),
('Python'),
('SQL'),
('React'),
('Node.js'),
('Machine Learning'),
('Data Analysis'),
('Cyber Security'),
('AWS'),
('Docker'),
('Kubernetes'),
('Spring Boot');
SELECT COUNT(*) FROM skills;
ALTER TABLE skills ADD UNIQUE (skill_name);	
-- ============================
-- JOB LISTINGS DATA
-- ============================
INSERT INTO job_listings (company_id, job_title, location, min_salary, max_salary, status) VALUES
(1, 'Financial Analyst', 'Mumbai', 400000, 800000, 'Open'),
(2, 'Software Engineer', 'Bangalore', 600000, 1200000, 'Open'),
(3, 'Data Analyst', 'Pune', 500000, 1000000, 'Open'),
(4, 'Backend Developer', 'Hyderabad', 700000, 1300000, 'Open'),
(5, 'Cloud Engineer', 'Bangalore', 800000, 1500000, 'Open'),
(6, 'Frontend Developer', 'Hyderabad', 500000, 900000, 'Open'),
(7, 'DevOps Engineer', 'Bangalore', 900000, 1600000, 'Open'),
(8, 'System Engineer', 'Pune', 400000, 700000, 'Open'),
(9, 'Business Analyst', 'Mumbai', 600000, 1100000, 'Open'),
(10, 'AI Engineer', 'Chennai', 1000000, 2000000, 'Open'),
(2, 'Full Stack Developer', 'Bangalore', 700000, 1400000, 'Open'),
(3, 'Data Scientist', 'Pune', 900000, 1800000, 'Open'),
(4, 'Java Developer', 'Hyderabad', 600000, 1200000, 'Open'),
(5, 'Security Analyst', 'Bangalore', 800000, 1400000, 'Open'),
(6, 'UI/UX Designer', 'Hyderabad', 400000, 800000, 'Open'),
(7, 'Site Reliability Engineer', 'Bangalore', 950000, 1700000, 'Open'),
(8, 'Network Engineer', 'Pune', 500000, 900000, 'Open'),
(9, 'Product Manager', 'Mumbai', 1200000, 2200000, 'Open'),
(10, 'ML Engineer', 'Chennai', 1100000, 2100000, 'Open'),
(1, 'Risk Analyst', 'Mumbai', 500000, 900000, 'Open');
select count(*) from job_listings;
-- ============================
-- JOB LISTING SKILLS
-- ============================
INSERT INTO job_listing_skills (job_id, skill_id) VALUES
(1, 7), (1, 3),
(2, 1), (2, 5),
(3, 2), (3, 7),
(4, 5), (4, 1),
(5, 9), (5, 10),
(6, 4), (6, 3),
(7, 9), (7, 10),
(8, 1), (8, 3),
(9, 7), (9, 3),
(10, 6), (10, 2),
(11, 1), (11, 4),
(12, 2), (12, 6),
(13, 1), (13, 12),
(14, 8), (14, 9),
(15, 4), (15, 3),
(16, 9), (16, 10),
(17, 1), (17, 8),
(18, 7), (18, 2),
(19, 6), (19, 2),
(20, 7), (20, 3);
SELECT COUNT(*) FROM job_listing_skills;
-- ============================
-- JOB SEEKER SKILLS
-- ============================
INSERT INTO job_seeker_skills (seeker_id, skill_id) VALUES
(1, 1), (1, 3), (1, 4),
(2, 2), (2, 3), (2, 7),
(3, 1), (3, 5),
(4, 2), (4, 6), (4, 8),
(5, 1), (5, 9),
(6, 2), (6, 7),
(7, 5), (7, 10),
(8, 3), (8, 4),
(9, 9), (9, 10),
(10, 1), (10, 12),
(11, 2), (11, 7),
(12, 3), (12, 6),
(13, 6), (13, 2),
(14, 4), (14, 3),
(15, 8), (15, 9);
SELECT COUNT(*) FROM job_seeker_skills;
INSERT INTO job_seeker_skills (seeker_id, skill_id) VALUES
(1, 9),
(2, 10),
(3, 3),
(4, 5),
(5, 7),
(6, 1),
(7, 8),
(8, 2),
(9, 6),
(10, 4);
SELECT COUNT(*) FROM job_seeker_skills;
-- ============================
-- APPLICATIONS DATA
-- ============================
INSERT INTO applications (job_id, seeker_id, status, applied_date) VALUES
(2, 1, 'Applied', '2026-04-10'),
(3, 2, 'Hired', '2026-04-11'),
(1, 3, 'Rejected', '2026-04-12'),
(4, 4, 'Applied', '2026-04-13'),
(5, 5, 'Applied', '2026-04-14'),
(6, 6, 'Applied', '2026-04-14'),
(7, 7, 'Hired', '2026-04-15'),
(8, 8, 'Rejected', '2026-04-15'),
(9, 9, 'Applied', '2026-04-16'),
(10, 10, 'Applied', '2026-04-16'),
(11, 11, 'Hired', '2026-04-17'),
(12, 12, 'Applied', '2026-04-17'),
(13, 13, 'Rejected', '2026-04-18'),
(14, 14, 'Applied', '2026-04-18'),
(15, 15, 'Applied', '2026-04-19'),
(16, 1, 'Applied', '2026-04-19'),
(17, 2, 'Applied', '2026-04-20'),
(18, 3, 'Rejected', '2026-04-20'),
(19, 4, 'Applied', '2026-04-21'),
(20, 5, 'Applied', '2026-04-21');
select count(*) from applications;