SELECT i.name AS instructor_name, c.title
FROM instructors i
LEFT JOIN courses c ON i.id = c.instructor_id
ORDER BY i.nam, c.title;
