/*
Para cada persona que haya actualizado al menos dos veces el estado, determinar
el tiempo en que han ocurrido esas actualizaciones
 */

SELECT p.nombre, min(e1.f_modif - e2.f_modif)
FROM
    persona p,
    estado e1,
    estado e2
WHERE
    p.pid = e1.pid AND
    p.pid = e2.pid AND
    e1.f_modif > e2.f_modif
GROUP BY p.nombre