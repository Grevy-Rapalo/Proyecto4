-- Use control_de_libros;

-- a. Mostrar el primer nombre, primer apellido de los autores junto con el título de libro que estos han escrito.
select primer_nombre, primer_apellido , libro.titulo from
autor  join detalle_aut_lib on autor.codigo_autor = detalle_aut_lib.codigo_autor
join libro on libro.codigo_libro = detalle_aut_lib.codigo_libro;

-- b. Mostrar el nombre de la editorial y el título del libro
select editorial.nombre, libro.titulo from
editorial join libro on editorial.codigo_editorial = libro.codigo_editorial;

-- c Mostrar los títulos de los libros y el nombre de la editorial, donde esta sea del país de Inglaterra
select libro.titulo, editorial.nombre from
editorial join libro on editorial.codigo_editorial = libro.codigo_editorial
where editorial.pais = 'Inglaterra';

-- d. Mostrar los nombres de los autores y el título del libro donde el año de edición sea el más actual
select autor.primer_nombre, libro.titulo, libro.ano_edicion as edicion_actual
 from
autor join detalle_aut_lib on autor.codigo_autor = detalle_aut_lib.codigo_autor
join libro on libro.codigo_libro = detalle_aut_lib.codigo_libro
WHERE libro.ano_edicion = (
  SELECT MAX(ano_edicion)
  FROM libro)
;

-- e. Mostrar los nombres de los autores y el título del libro donde el año de edición sea el  menos actual
select autor.primer_nombre, libro.titulo, libro.ano_edicion as edicion_actual
 from
autor join detalle_aut_lib on autor.codigo_autor = detalle_aut_lib.codigo_autor
join libro on libro.codigo_libro = detalle_aut_lib.codigo_libro
WHERE libro.ano_edicion = (
  SELECT min(ano_edicion)
  FROM libro)
;

-- g. Determinar la cantidad de libros que ha escrito cada escritor
select autor.primer_nombre, count(libro.titulo) as cantidad_libros
from
autor  join detalle_aut_lib on autor.codigo_autor = detalle_aut_lib.codigo_autor
join libro on libro.codigo_libro = detalle_aut_lib.codigo_libro
group by autor.primer_nombre
order by cantidad_libros;

-- h. Seleccionar cual es el escritor que más libros ha escrito
select autor.primer_nombre, count(libro.titulo) as cantidad_libros
from autor  
join detalle_aut_lib on autor.codigo_autor = detalle_aut_lib.codigo_autor
join libro on libro.codigo_libro = detalle_aut_lib.codigo_libro
group by autor.primer_nombre
order by cantidad_libros desc
limit 1;

-- i. Saber cual es la editora que mas libros ha publicado
select editorial.nombre, count(libro.titulo) as libros_pu from
editorial join libro on editorial.codigo_editorial = libro.codigo_editorials
group by editorial.nombre
order by libros_pu desc
limit 1;