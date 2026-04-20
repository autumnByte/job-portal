USE job_portal_db;
-- =====================================
-- 1. Job listings with company details
-- =====================================
SELECT j.job_id, j.job_title, c.company_name, j.location, j.min_salary, j.max_salary
FROM job_listings j
JOIN companies c ON j.company_id = c.company_id;
-- =====================================
-- 2. Applications with candidate + job
-- =====================================
SELECT a.application_id, u.full_name, j.job_title, a.status, a.applied_date
FROM applications a
JOIN job_seekers js ON a.seeker_id = js.seeker_id
JOIN users u ON js.user_id = u.user_id
JOIN job_listings j ON a.job_id = j.job_id;
-- =====================================
-- 3. Jobs requiring a specific skill
-- =====================================
SELECT j.job_title, s.skill_name
FROM job_listings j
JOIN job_listing_skills jls ON j.job_id = jls.job_id
JOIN skills s ON jls.skill_id = s.skill_id
WHERE s.skill_name = 'Python';
-- =====================================
-- 4. Candidates with a specific skill
-- =====================================
SELECT u.full_name, s.skill_name
FROM job_seekers js
JOIN users u ON js.user_id = u.user_id
JOIN job_seeker_skills jss ON js.seeker_id = jss.seeker_id
JOIN skills s ON jss.skill_id = s.skill_id
WHERE s.skill_name = 'Java';
-- =====================================
-- 5. Number of applications per job
-- =====================================
SELECT j.job_title, COUNT(a.application_id) AS total_applications
FROM job_listings j
LEFT JOIN applications a ON j.job_id = a.job_id
GROUP BY j.job_id, j.job_title;
-- =====================================
-- 6. Highest paying job
-- =====================================
SELECT job_title, max_salary
FROM job_listings
ORDER BY max_salary DESC
LIMIT 1;
-- =====================================
-- 7. Jobs count per company
-- =====================================
SELECT c.company_name, COUNT(j.job_id) AS total_jobs
FROM companies c
LEFT JOIN job_listings j ON c.company_id = j.company_id
GROUP BY c.company_id, c.company_name;
-- =====================================
-- 8. Most in-demand skills
-- =====================================
SELECT s.skill_name, COUNT(jls.job_id) AS demand
FROM skills s
JOIN job_listing_skills jls ON s.skill_id = jls.skill_id
GROUP BY s.skill_name
ORDER BY demand DESC;
-- =====================================
-- 9. Top hiring companies
-- =====================================
SELECT c.company_name, COUNT(a.application_id) AS hires
FROM companies c
JOIN job_listings j ON c.company_id = j.company_id
JOIN applications a ON j.job_id = a.job_id
WHERE a.status = 'Hired'
GROUP BY c.company_name
ORDER BY hires DESC;
-- =====================================
-- 10. Subquery
-- =====================================
SELECT job_title, max_salary
FROM job_listings
WHERE max_salary > (
    SELECT AVG(max_salary) FROM job_listings
);
-- =====================================
-- 11. Skill job matching
-- =====================================
SELECT DISTINCT u.full_name, j.job_title
FROM job_seekers js
JOIN users u ON js.user_id = u.user_id
JOIN job_seeker_skills jss ON js.seeker_id = jss.seeker_id
JOIN job_listing_skills jls ON jss.skill_id = jls.skill_id
JOIN job_listings j ON jls.job_id = j.job_id;
-- =====================================
-- 12. Jobs with more than 2 applications
-- =====================================
SELECT j.job_title, COUNT(a.application_id) AS total_applications
FROM job_listings j
JOIN applications a ON j.job_id = a.job_id
GROUP BY j.job_title
HAVING COUNT(a.application_id) > 2;