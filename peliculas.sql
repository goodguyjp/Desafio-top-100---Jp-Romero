create database peliculas;
--Crear tabla de peliculas
create table peliculas(id int, pelicula varchar(100), año_estreno int, director varchar (35), primary key (id));
CREATE TABLE

--Crear tabla de Reparto
create table reparto(id_peliculas int, nombre varchar(100), foreign key (id_peliculas) references peliculas(id));
CREATE TABLE

--Cargar archivos para las tablas

copy peliculas from 'C:\Users\Jp\Desktop\Desafio Latam-G14\peliculas\peliculas.csv' csv header;
COPY 100

copy reparto from 'C:\Users\Jp\Desktop\Desafio Latam-G14\peliculas\reparto.csv' csv header;
COPY 1050

--Obtener el ID de la pelicula "Titanic"

select id from peliculas where pelicula = 'Titanic';

--Consultar en cuantas peliculas participa Harrison Ford

select nombre from reparto where nombre = 'Harrison Ford';  --fomra facil de ver cuantas veces aparece Harrison Ford en reparto

select count (nombre) as peliculas_Harrison_Ford from reparto where nombre = 'Harrison Ford'; --Otra forma de ver cuantas veces aparece Harrison Ford

--Indicar las peliculas entre 1990 y 1999 orden ascendente

select pelicula, año_estreno from peliculas where  año_estreno between 1990 and 1999 order by pelicula asc;

--Hacer una consulta SQL que muestre titulos con su longitud

select pelicula, length(pelicula) as longitud_titulo from peliculas;

--Titulo con la mayor longitud 

select max( length(pelicula)) as titulo_mayor_longitud from peliculas;