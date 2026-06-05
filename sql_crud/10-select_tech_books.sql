SELECT genre='Tech'
FROM books
WHERE published_year IN ('2000' OR published_year > '2000')
GROUP BY title, price, stock;
