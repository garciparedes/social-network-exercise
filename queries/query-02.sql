/*
Seleccionar a la(s) persona(s) con más número de amigos
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
HAVING COUNT(*) >= ALL (
        SELECT
            count(*) as cuenta2
        FROM
            persona p2,
            amistad a2
        WHERE
            p2.pid = a2.pid1
        GROUP BY p2.nombre
    )