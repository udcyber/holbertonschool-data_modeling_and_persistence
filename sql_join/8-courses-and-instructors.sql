SELECT c.title, i.name AS instructor_name
FROM courses c
JOIN instructors i ON c.instructor_id = i.id
ORDER BY c.title;
