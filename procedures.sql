USE job_portal_db;

DELIMITER $$

CREATE PROCEDURE apply_for_job (
    IN p_job_id INT,
    IN p_seeker_id INT
)
BEGIN
    DECLARE already_applied INT;

    -- Check if user already applied
    SELECT COUNT(*) INTO already_applied
    FROM applications
    WHERE job_id = p_job_id AND seeker_id = p_seeker_id;

    IF already_applied = 0 THEN
        INSERT INTO applications (job_id, seeker_id, status, applied_date)
        VALUES (p_job_id, p_seeker_id, 'Applied', CURDATE());
    ELSE
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'User has already applied for this job';
    END IF;
END$$

DELIMITER ;
CALL apply_for_job(1, 2);