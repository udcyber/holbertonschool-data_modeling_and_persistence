SELECT b.title, a.name AS author_name
FROM books b
INNER JOIN authors a ON b.author_id = a.id
ORDER BY b.title;
