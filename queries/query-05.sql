/*
Contar el número de amigos de 'nivel dos' (amigos, y amigos de amigos) de la
persona 'X' (cuidado con no contar a la misma persona dos veces)
 */

SELECT
    p1.nombre,
    COUNT(*) as cuenta
FROM
    persona p1,
    amistad a1,
    amistad a2
WHERE
    p1.pid = a1.pid1 AND
    a1.pid2 = a2.pid1 AND
    p1.pid <> a2.pid2
GROUP BY p1.nombre
ORDER BY cuenta DESC