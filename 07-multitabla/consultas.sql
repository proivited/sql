/*JOINS nos permiten fusionar informacion de multiples tablas */

/* Mostrar las entradas con el nombre del autor y de la cateoria*/

SELECT entradas.id, entradas.titulo, usuarios.nombre, categorias.nombre 
FROM entradas
INNER JOIN usuarios ON entradas.usuario_id = usuarios.id /*trae las tablas cuando las entradas son iguales a usuarios*/
INNER JOIN categorias ON entradas.categorias_id = categorias.id;


SELECT e.id, e.titulo, u.nombre, c.nombre 
FROM entradas e
INNER JOIN usuarios u ON e.usuario_id = u.id 
INNER JOIN categorias c ON e.categorias_id = c.id;

/* Obtener el numero de entradas de categorias */ /*con iner me trae todo en ambas tablas*/
/*con LEFT me trae todo aun que no este en ambas tablas*/

SELECT c.nombre, COUNT(e.id) FROM categorias c 
INNER JOIN entradas e ON e.categorias_id = c.id
GROUP BY e.categorias_id;