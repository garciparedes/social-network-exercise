/*
Encontrar a las 5 personas con mayor numero de amigos
 */

SELECT
    p1.nombre,
    COUNT(*) AS cuenta
FROM
    persona p1,
    amistad a1
WHERE
    p1.pid = a1.pid1
GROUP BY p1.nombre
ORDER BY cuenta DESC
LIMIT 5