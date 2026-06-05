SELECT a.name AS author_name, b.title
FROM authors a
LEFT JOIN books b ON a.id = b.author_id
ORDER BY a.name, b.title;
