SELECT DISTINCT s.name AS student_name
FROM students s
JOIN registrations r ON s.id = r.student_id
ORDER BY s.name;
