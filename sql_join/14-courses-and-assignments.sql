SELECT c.title AS course_title, a.title AS assignment_title
FROM courses c
LEFT JOIN assignments a ON c.id = a.course_id
ORDER BY c.title, a.title;
