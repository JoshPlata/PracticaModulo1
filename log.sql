create database log;
use log;

create table usuario(
	id_usu int(5)NOT NULL PRIMARY KEY AUTO INCREMENT,
	nombre  varchar(50),
	contra  varchar(50));

create table domicilio(
	id_dom    int(5)NOT NULL PRIMARY KEY AUTO INCREMENT,
	estado    varchar(50),
	municipio varchar(50),
	col       varchar(50),
	no        int(5));

