/*
Obtener los nombres de las personas que no han realizado ninguna entrada de estado
 */

SELECT
    p.nombre
FROM
    persona p
WHERE NOT EXISTS(
    SELECT *
    FROM estado e
    WHERE e.pid = p.pid
)