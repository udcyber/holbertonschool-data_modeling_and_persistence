SELECT c.title AS course_title, s.name AS student_name
FROM courses c
LEFT JOIN enrollments e ON c.id = e.course_id
LEFT JOIN students s ON e.student_id = s.id
ORDER BY c.title, s.name;
