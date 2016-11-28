/*
Devolver el número de amigos de cada persona (nombre)
 */

SELECT
    p.nombre,
    COUNT(*) as cuenta
FROM
    persona p,
    amistad a
WHERE
    p.pid = a.pid1
GROUP BY p.nombre
ORDER BY cuenta DESC