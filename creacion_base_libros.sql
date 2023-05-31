create database Control_de_libros;
use Control_de_libros;
create table autor(
  codigo_autor varchar(30) primary key ,
  primer_nombre varchar(30),
  primer_apellido varchar(30),
  fecha_nacimeinto date,
  nacionalidad varchar(50),
  edad int
);

create table editorial(
codigo_editorial varchar(30) primary key,
nombre varchar(30),
pais varchar(30)
);

create table libro(
codigo_libro varchar(30) primary key,
titulo varchar(100),
isbn varchar(100) unique,
ano_edicion date,
codigo_editorial  varchar(30) not null,
foreign key(codigo_editorial) references editorial(codigo_editorial)
);

create table detalle_aut_lib(
codigo_autor varchar(30) ,
codigo_libro varchar(30) ,
foreign key(codigo_autor) references autor(codigo_autor),
foreign key(codigo_libro) references libro(codigo_libro)
);
