/* Renombrar la tabla*/

ALTER TABLE usuarios RENAME TO usuarios_renom; /* recordar poner la direccion de base.carpeta*/

/* Renombrar una columna*/

ALTER TABLE usuarios_renom CHANGE apellidos apellido VARCHAR(100) NULL;

/*Modificar la columna sin cambiar el nombre*/

ALTER TABLE usuarios_renom MODIFY apellido CHAR(50) NOT NULL;

/* Anadir columna*/

ALTER TABLE usuarios_renom ADD website VARCHAR(50) NULL;

/* Anadir una restriccion a una columna */

ALTER TABLE  usuarios_renom ADD CONSTRAINT uq_email UNIQUE(email); /*crea un campo unico no se puede repetir*/

/* Borrar una columna */

ALTER TABLE usuarios_renom DROP website;

/*Llave foranea*/

CONSTRAINT fk_entrada_usuario FOREIGN KEY(usuario_id) REFERENCES usuarios(id)
