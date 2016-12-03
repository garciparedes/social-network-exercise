/*
Obtener el ratio de cohesión de cada grupo (nro de enlaces entre miembros / nro
 máximo de enlaces posibles entre los miembros)
 */

SELECT enlaces.nombre, 1.0*enlaces.cuenta / max_enlaces.cuenta
FROM
    (
        SELECT
            g.nombre,
            COUNT(*) / 2 AS cuenta
        FROM
            grupo g,
            miembro m1,
            miembro m2,
            amistad a
        WHERE
            g.gid = m1.gid AND
            g.gid = m2.gid AND
            m1.pid = a.pid1 AND
            m2.pid = a.pid2
        GROUP BY g.nombre
    ) AS enlaces,
    (
        SELECT
            g.nombre,
            COUNT(*) / 2 AS cuenta
        FROM
            grupo g,
            miembro m1,
            miembro m2
        WHERE
            g.gid = m1.gid AND
            g.gid = m2.gid AND
            m1.pid <> m2.pid
        GROUP BY g.nombre
    ) AS max_enlaces
WHERE enlaces.nombre = max_enlaces.nombre;