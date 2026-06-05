SELECT s.name AS student_name, c.title AS course_title
FROM students s
INNER JOIN enrollments e ON s.id = e.student_id
INNER JOIN courses c ON e.course_id = c.id
ORDER BY s.name, c.title;
