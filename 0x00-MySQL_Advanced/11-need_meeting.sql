-- Script to create a view named need_meeting

CREATE VIEW need_meeting AS
SELECT name
FROM students
WHERE (score < 80 OR last_meeting IS NULL OR last_meeting < DATE_SUB(CURDATE(), INTERVAL 1 MONTH));