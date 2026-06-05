SELECT s.name AS student_name, c.title AS course_title
FROM students s
JOIN registrations r ON s.id = r.student_id
JOIN courses c ON r.course_id = c.id
ORDER BY s.name, c.title;
