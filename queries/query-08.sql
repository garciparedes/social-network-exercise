/*
Encontrar a los dos personas que hayan nacido con fechas más cercanas (sin
contar las que han nacido en la misma fecha)
 */

SELECT
    p1.nombre,
    p2.nombre,
    p1.f_nacim - p2.f_nacim
FROM
    persona p1,
    persona p2
WHERE p1.f_nacim - p2.f_nacim = (
    SELECT min(p1.f_nacim - p2.f_nacim)
    FROM
        persona p1,
        persona p2
    WHERE
        p1.pid <> p2.pid AND
        p1.f_nacim <> p2.f_nacim AND
        p1.f_nacim > p2.f_nacim
);