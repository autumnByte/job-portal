USE job_portal_db;

-- =====================================
-- VIEW 1: Job Listings with Company Info
-- Shows all job postings along with company details
-- =====================================
CREATE VIEW view_job_listings AS
SELECT j.job_id, j.job_title, c.company_name, j.location, j.min_salary, j.max_salary
FROM job_listings j
JOIN companies c ON j.company_id = c.company_id;


-- =====================================
-- VIEW 2: Job Application Summary (ANALYTICAL)
-- =====================================
CREATE VIEW view_job_application_summary AS
SELECT 
    j.job_title,
    COUNT(a.application_id) AS total_applications,
    SUM(CASE WHEN a.status = 'Hired' THEN 1 ELSE 0 END) AS total_hired,
    SUM(CASE WHEN a.status = 'Rejected' THEN 1 ELSE 0 END) AS total_rejected
FROM job_listings j
LEFT JOIN applications a ON j.job_id = a.job_id
GROUP BY j.job_title;

-- =====================================
-- VIEW 3: Company Job Count
-- Shows number of jobs posted by each company
-- =====================================
CREATE VIEW view_company_jobs AS
SELECT c.company_name, COUNT(j.job_id) AS total_jobs
FROM companies c
LEFT JOIN job_listings j ON c.company_id = j.company_id
GROUP BY c.company_id, c.company_name;


-- =====================================
-- VIEW 4: Candidate Skills
-- Displays each candidate with their associated skills
-- =====================================
CREATE VIEW view_candidate_skills AS
SELECT u.full_name, s.skill_name
FROM job_seekers js
JOIN users u ON js.user_id = u.user_id
JOIN job_seeker_skills jss ON js.seeker_id = jss.seeker_id
JOIN skills s ON jss.skill_id = s.skill_id;


-- =====================================
-- TEST QUERIES (Verify Views)
-- =====================================

-- Check job listings view
SELECT * FROM view_job_listings;

-- Check applications view
SELECT * FROM view_job_application_summary;

-- Check company jobs view
SELECT * FROM view_company_jobs;

-- Check candidate skills view
SELECT * FROM view_candidate_skills;
