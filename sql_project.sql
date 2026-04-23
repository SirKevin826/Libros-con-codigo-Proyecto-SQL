-- PARTE 1

SELECT table_name 
FROM information_schema.tables 
WHERE table_schema = 'public';

-- PARTE 2

SELECT COUNT(*) AS libros_despues_2000
FROM books
WHERE publication_date > '2000-01-01';

-- PARTE 3

SELECT COUNT(*) AS reseñas_usuarios
FROM reviews

-- PARTE 4

SELECT 
    book_id,
    COUNT(*) AS numero_reseña
FROM reviews
GROUP BY book_id;

-- PARTE 5

SELECT 
    book_id,
    AVG(rating) AS calificacion_promedio
FROM ratings
GROUP BY book_id;


-- PARTE 6

SELECT 
    publisher_id,
    COUNT(*) AS numero_libros 
FROM books
WHERE num_pages > 50
GROUP BY publisher_id
ORDER BY numero_libros DESC;

-- PARTE 7

SELECT
    author,
    AVG(rating) AS calificacion_promedio_autor 
FROM ratings r 
JOIN books b ON r.book_id = b.book_id 
JOIN authors a ON b.author_id = a.author_id
GROUP BY author
HAVING COUNT(*) >= 50
ORDER BY calificacion_promedio_autor  DESC;

-- PARTE 8

SELECT
    username,
    COUNT(*) as num_calificaciones
FROM ratings
GROUP BY username
HAVING COUNT(*) > 50

-- PARTE 9

FROM (
    SELECT username, COUNT(*) as num_reseñas
    FROM reviews
    WHERE username IN (
        SELECT
            username
        FROM ratings
        GROUP BY username
    HAVING COUNT(*) > 50
    )
    GROUP BY username
) AS subconsulta