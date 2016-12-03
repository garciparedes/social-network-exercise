/*
Encontrar a las 5 personas con mayor numero de amigos
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
WHERE 5 >= (
    SELECT
        COUNT(*)
    FROM
        CuentaAmigos CA2
    WHERE CA2.cuenta > CA1.cuenta
)
ORDER BY CA1.cuenta DESC


