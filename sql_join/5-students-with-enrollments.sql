SELECT s.name AS student_name
FROM students s
WHERE s.id IN (SELECT student_id FROM enrollments)
ORDER BY s.name;
