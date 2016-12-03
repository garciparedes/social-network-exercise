/*
Seleccionar a la(s) persona(s) con más número de amigos
 */


WITH CuentaAmigos AS (
    SELECT
        p1.nombre,
        COUNT(*) AS cuenta
    FROM
        persona p1,
        amistad a1
    WHERE
        p1.pid = a1.pid1
    GROUP BY
        p1.nombre
)
SELECT
    CA1.nombre,
    CA1.cuenta
FROM
    CuentaAmigos CA1
WHERE CA1.cuenta >= ALL (
    SELECT CA2.cuenta
    FROM
        CuentaAmigos CA2
)

