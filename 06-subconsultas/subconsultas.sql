/* Subconsultas
    Son consultas que se ejecutan dentro de otras consultas
 */

/* Consulta para saber que usuarios tienen publicaciones */
SELECT * FROM usuarios WHERE id IN (SELECT usuario_id FROM entradas);

/* En esta consulta obtenemos los id de los usuarios que tienen publicaciones */
SELECT usuario_id FROM entradas;

/* Esta consulta representa los valores que recibe la consulta principal */
SELECT * FROM usuarios WHERE id IN (1, 1, 1, 2, 2, 2, 3, 3, 3);

/* Consulta equivalente con WHERE */
SELECT * FROM usuarios WHERE id = 1 AND id = 2 AND id = 3;

/* Obtener los usuarios que tengan alguna entrada que el título contenga GTA */
SELECT nombre, apellidos FROM usuarios WHERE id IN (
    SELECT usuario_id FROM entradas WHERE titulo LIKE '%GTA%'
);

/* Obetner todas las entradas de la categoria accion utilizando su nombre  */
SELECT categoria_id, titulo FROM entradas WHERE categoria_id IN(
    SELECT id FROM categorias WHERE nombre = 'Deportes'
)

/*
categoria_id in (1, 2, 3)
WHERE categoria_id = 1 AND categoria_id = 2 AND categoria_id = 3;
*/

/*Obtener las categorias sin entradas*/

SELECT * FROM categorias WHERE id NOT IN (
    SELECT categoria_id FROM entradas
);

/* Mostrar usuarios que crearon una entrada en un miercoles*/
SELECT * FROM usuarios WHERE id IN (
    SELECT usuario_id FROM entradas WHERE DAYOFWEEK(fecha) = 4
);
