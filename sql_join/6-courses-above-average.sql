SELECT c.title AS course_title
FROM courses c
JOIN enrollments e ON c.id = e.course_id
GROUP BY c.title
HAVING COUNT(*) > (
    SELECT AVG(enroll_count)
    FROM (
        SELECT COUNT(*) AS enroll_count
        FROM enrollments
        GROUP BY course_id
    )
)
ORDER BY c.title;
