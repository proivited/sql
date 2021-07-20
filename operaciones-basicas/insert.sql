/* Insertar valores en una tabla*/

INSERT INTO blog_2.usuarios VALUES(NULL, 'MIGUEL ALEXIS', 'GOMEZ ARREOLA', 'juarismi25@hotmail.com', '1234', '2021-07-20');
INSERT INTO blog_2.usuarios VALUES(NULL, 'JUAN', 'EL BAILADOR', 'correo@correo.com', '123456', '2021-07-20');
INSERT INTO blog_2.usuarios VALUES(NULL, 'banana', 'bananin', 'correodebanana@correo.com', 'banana6', '2021-07-20');

/*Insertar datos en ciertas columnas*/

INSERT INTO blog_2.usuarios(fecha, password, nombre, apellidos, email) VALUES('2021-07-20', 'queestapasando', 'elproivited', 'fifi', 'elemailmaschido@correo.com');