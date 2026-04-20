USE job_portal_db;

DROP TRIGGER IF EXISTS prevent_duplicate_application;

DELIMITER $$

CREATE TRIGGER prevent_duplicate_application
BEFORE INSERT ON applications
FOR EACH ROW
BEGIN
    DECLARE existing_count INT;

    SELECT COUNT(*) INTO existing_count
    FROM applications
    WHERE job_id = NEW.job_id 
    AND seeker_id = NEW.seeker_id;

    IF existing_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'You have already applied for this job';
    END IF;
END$$

DELIMITER ;
 -- Test query
 INSERT INTO applications (job_id, seeker_id, status, applied_date)
VALUES (2, 1, 'Applied', CURDATE());