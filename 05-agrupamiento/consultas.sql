/* Consulta para obterner el umero de entradas por categoria */

SELECT COUNT(titulo), categorias_id FROM entradas; /*recordar seleccionar la base de datos en negritas*/
SELECT COUNT(titulo), categorias_id FROM entradas GROUP BY categorias_id; /*para contar del grupo*/
SELECT COUNT(titulo) AS 'Numero de entradas', categorias_id FROM entradas GROUP BY categorias_id; /*el as agrega un nombre tempord';*/

/* Consulta agrupada con codiciones */

SELECT COUNT(titulo) AS 'Numero de entradas', categorias_id FROM entradas GROUP BY categorias_id
HAVING COUNT(titulo) >= 4; /*el having nos da la condicion*/

/*AVG nos permite sacar el priomedio de elementos numericos*/
/*MAX nos permite obtener el numero mayor*/
/*MIN nos permite obtener el numero menor*/
/*SUM nos permite sumar elementos numericos */
/*Obtener el promedio del id de las entradas cuyo categoria id =1*/

SELECT AVG(id) AS 'Promedio id' FROM entradas;
SELECT MAX(id) AS 'Maximo id' FROM entradas;
SELECT MIN(id) AS 'Minimo id' FROM entradas;
SELECT SUM(id) AS 'Sumas id' FROM entradas;
SELECT AVG(id) AS ' Promedio id' FROM entradas WHERE categorias_id = 1;