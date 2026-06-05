SELECT DISTINCT i.name AS instructor_name
FROM instructors i
JOIN courses c ON i.id = c.instructor_id
JOIN registrations r ON c.id = r.course_id
ORDER BY i.name;
