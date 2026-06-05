SELECT c.title AS course_title, COUTN(e.student_id) AS enrollment_count
FROM courses c
LEFT JOIN enrollment e ON c.id = e.course_id
GROUP BY c.title
ORDER BY enrollment_count DESC, c.title;
