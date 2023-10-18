/*Ya tengo mysitedb creado en mariadb*/
use mysitedb;

create table tUsuarios(
      id INTEGER PRIMARY KEY AUTO_INCREMENT,
	 nombre VARCHAR(50),
     apellidos VARCHAR(100),
      email VARCHAR(200) UNIQUE,
       contrasena VARCHAR(200)
);
create table tLibros (
	id INTEGER PRIMARY KEY  AUTO_INCREMENT,
    nombre VARCHAR(50),
     url_imagen VARCHAR(200),
     genero varchar(50),
     isbn varchar(200)
);
create table tComentarios(
        id INTEGER PRIMARY KEY AUTO_INCREMENT,
        comentario VARCHAR(2000),
		usuario_id INTEGER,
        libro_id INTEGER NOT NULL
	
);
/*tLibros*/
INSERT INTO tLibros values(null,"Riccardino","https://imagessl5.casadellibro.com/a/l/s7/65/9788418681165.webp","Novela negra","9788418681165");
insert into tLibros values(null,"La forma del agua", "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTerIE_3Ru-Nw2RQc8iudTbyzjRg0QQho4E6IX3jGp3tabXm8PE","Novela negra","9783404154012");
insert into tLibros values(null,"El ladrón de meriendas", "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSvJ2n2Av4HeHTh4Iqfy1BIvWriPsVRL7sa2vNeQT2Up0j6BxXs","Novela negra","9788498385618");
insert into tLibros values(null,"El perro de terracota", "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTRqafVFEFZWsaRoFhYLCxOCkO2gJZZxNZcdrY34aZhRatSF5ox","Novela negra","9783838764849");
insert into tLibros values(null,"El primer caso de Montalbano", "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcS8XiO-_UTzH6AoKkQoQfE3GZfLenfFR6m7Afmjf5eBg0d9dpyu","Novela negra","9783404922321");
/*tComentarios*/
insert into tComentarios values(null,"Obra maestra", "1","2");
insert into tComentarios values(null,"Una delicia de lectura","2","1");
insert into tComentarios values(null,"Fantástico. No pudo ser mejor!!","3","5");
insert into tComentarios values(null,"Qué magistral. Este autor es increíble","5","4");
insert into tComentarios values(null,"Una novela para tener siempre cerca y releerla una y otra vez","4","3");
/*tUsuarios*/
insert into tUsuarios values(null,"Jose", "Martínez","jl@gmail.com","1234");
insert into tUsuarios values(null,"Raúl", "Soria","rsoria@gmail.com","9876");
insert into tUsuarios values(null,"Pedro", "Castro","pcastro@gmail.com","0000");
insert into tUsuarios values(null,"Mari", "Rozas","mrozas@gmail.com","1111");
insert into tUsuarios values(null,"Mame", "Faty","mfaty@gmail.com","5555");



	ALTER TABLE tComentarios ADD CONSTRAINT fk_comUsu foreign key (usuario_id)references tUsuarios(id);
    alter table tComentarios add constraint fk_comLib foreign key(libro_id) references tLibros(id);