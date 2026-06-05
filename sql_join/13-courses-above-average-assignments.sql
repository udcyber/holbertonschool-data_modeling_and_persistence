SELECT c.title AS course_title
FROM courses c
JOIN assignments a ON c.id = a.course_id
GROUP BY c.title
HAVING COUNT (a.id) > (
    SELECT AVG(assign_count)
    FROM (
        SELECT COUT(*) AS assign_count
        FROM assignments
        GROUP BY course_id
    )
)
ORDER BY c.title;
