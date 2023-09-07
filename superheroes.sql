DROP DATABASE IF EXISTS superheroes;
CREATE DATABASE superheroes CHARACTER SET utf8mb4;
USE superheroes;

CREATE TABLE creador (
	id_creador INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
	nombre VARCHAR(20) NOT NULL
);


CREATE TABLE personajes (
	id_personaje INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nombre_real VARCHAR(20) NOT NULL,
	personaje VARCHAR(20) NOT NULL,
	inteligencia INT(10) NOT NULL,
	fuerza VARCHAR(10) NOT NULL,
	velocidad INT(11) NOT NULL,
	poder INT(11) NOT NULL,
	aparicion INT(11) NOT NULL,
	ocupacion VARCHAR(30) NULL,
	id_creador INT UNSIGNED NOT NULL,
	FOREIGN KEY (id_creador) REFERENCES creador(id_creador)
);

insert into creador values (1, "Marvel");
insert into creador values (2, "DC Comics");

INSERT INTO personajes VALUES (1,'Bruce Banner','Hulk',160,600000,75,98,1962,'Fisico Nuclear',1);
INSERT INTO personajes VALUES (2,'Tony Stark','Iron Man',170,200000,70,123,1963,'Inventor Industrial',1);
INSERT INTO personajes VALUES (3,'Thor Odinson','Thor',145,'infinita',100,235,1962,'Rey de Asgard',1);
INSERT INTO personajes VALUES (4,'Wanda Maximoff','Bruja Escarlata',170,100000,90,345,1964,'Bruja',1);
INSERT INTO personajes VALUES (5,'Carol Danvers','Capitana Marvel',157,250000,85,128,1968,'Oficial de Inteligencia',1);
INSERT INTO personajes VALUES (6,'Thanos','Thanos',170,'Infinita',40,306,1973,'Adorador de la muerte',1);
INSERT INTO personajes VALUES (7,'Peter Parker','Spiderman',165,25000,80,74,1962,'Fotografo',1);
INSERT INTO personajes VALUES (8,'Steve Rogers','Capitan America',145,600,45,60,1941,'Oficial Federal',1);
INSERT INTO personajes VALUES (9,'Bobby Drake','Ice Man',140,2000,64,122,1963,'Contador',1);
INSERT INTO personajes VALUES (10,'Barry Allen','Flash',160,10000,120,168,1956,'Cientifico Forense',2);
INSERT INTO personajes VALUES (11,'Bruce Wayne','Batman',170,500,32,47,1939,'Hombre de Negocios',2);
INSERT INTO personajes VALUES (12,'Clarck kent','Superman',165,'Infinita',120,182,1948,'Reportero',2);
INSERT INTO personajes VALUES (13,'Diana Prince','Mujer Maravilla',160,'Infinita',95,127,1949,'Princesa Guerrera',2);

update personajes set aparicion = 1938 where id_personaje = 12;
DELETE FROM personajes WHERE id_personaje = 10;

select * from personajes;
select * from personajes order by inteligencia asc;
