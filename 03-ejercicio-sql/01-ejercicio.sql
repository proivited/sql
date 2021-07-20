CREATE SCHEMA `blog_2` ;

CREATE TABLE blog_2.usuarios(
id          INT AUTO_INCREMENT NOT NULL,
nombre      VARCHAR(100) NOT NULL,
apellidos   VARCHAR(100) NOT NULL,
email       VARCHAR(100) NOT NULL,
password    VARCHAR(100) NOT NULL,
fecha       DATE NOT NULL,
CONSTRAINT  pk_usuarios PRIMARY KEY(id) 
);

CREATE TABLE blog_2.categorias(
id          INT AUTO_INCREMENT NOT NULL,
nombre      VARCHAR(100) NOT NULL,
CONSTRAINT  pk_categorias PRIMARY KEY(id),
);

CREATE TABLE blog_2.entradas(
id          INT AUTO_INCREMENT NOT NULL,
titulo      VARCHAR(200) NOT NULL,
descripcion TEXT NULL,
fecha       DATE NOT NULL,
usuario_id  INT NOT NULL,
categoria_id  INT NOT NULL,
CONSTRAINT  pk_entradas PRIMARY KEY(id),
CONSTRAINT fk_entrada_usuario FOREIGN KEY(usuario_id) REFERENCES usuarios(id),
CONSTRAINT fk_entrada_categoria FOREIGN KEY(categoria_id) REFERENCES categorias(id) 
);

ALTER TABLE  blog_2.usuarios ADD CONSTRAINT uq_email UNIQUE(email);
