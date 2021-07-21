/*  WHERE  nos permite seleccionar elementos especificos*/

SELECT nombre, email FROM blog_2.usuarios WHERE id = 4;

SELECT * FROM blog_2.usuarios WHERE email = 'elemailmaschido@correo.com';

/*
OPERADORES DE COMPARACION:
Igual           =
Distinto        !=
Menor           <
Mayor           >
Menor o igual   <=
Mayor o igual   >=
Entre           between A and B
En              in
Es nulo         is null
No nulo         is not null
Como            like
No es como      not like
*/


/* Ejemplos */

/*asi da año directamente tambien funciona month y day*/ 

SELECT nombre, apellidos FROM blog_2.usuarios   WHERE YEAR(fecha) = '2021'; 

/* pidiendo de dos diferentes anos*/

SELECT nombre, apellidos FROM blog_2.usuarios   WHERE YEAR(fecha) = '2021' OR YEAR(fecha) = '2020'; 

/*traer todos los usuarios de ciertos anos a la fecha*/

SELECT nombre, apoellidos FROM blog_2.usuarios WHERE YEAR(fecha) >= '2019';

/*traer los usuarios dque no se hatan regiustrado en 2020*/

SELECT nombre, apellidos FROM blog_2.usuarios WHERE YEAR(fecha) != '2020' OR ISNULL (fecha);

/* seleccionar regustros por dos columnas */

SELECT nombre, apellidos FROM blog_2.usuarios WHERE email = 'juarismi25@hotmail.com' AND password = 1234;

/*elementos que contengan un texto dependiendo de la posicion de % es donde busca*/

SELECT * FROM blog_2.usuarios WHERE nombre LIKE '%O%';