-- ORDEN CONCEPTO #2

create table Usuario(
Nombre varchar(35),
Clave varchar(100)
);

-- exec sp_tables @table_owner='dbo';

-- exec sp_columns Usuarios;

DROP TABLE Usuario

-- CONCEPTO #3

CREATE TABLE Usuario
(
Nombre varchar(30),
Clave varchar(30)
);


INSERT INTO Usuario (Nombre, Clave) VALUES ('Harlit' , 'De La Cruz');

SELECT * FROM Usuario;

INSERT INTO Usuario (Nombre, Clave) VALUES ('Pedro' , 'Suarez');
SELECT * FROM Usuario

INSERT INTO Usuario (Nombre, Clave) VALUES ('Carmen', 'Santana');

SELECT * FROM Usuario;

-- CONCEPTO #4

CREATE TABLE Libros
(
Titulo varchar (80),
Autor varchar (40),
Editorial varchar(30),
Precio float,
Cantidad integer
);


INSERT INTO Libros (Titulo, Autor, Editorial, Precio, Cantidad)
VALUES ('Padre rico Padre Pobre', 'Robert kiyosaki', 'DeBosillo', 20, 1000000);

INSERT INTO Libros (Titulo, Autor, Editorial, Precio, Cantidad)
VALUES ('El cuadrante del flujo de dinero', 'Robert kiyosaki', 'DeBosillo', 25, 1000000);

INSERT INTO Libros (Titulo, Autor, Editorial, Precio, Cantidad)
VALUES ('Por qué queremos que usted sea rico: dos hombres, un mensaje', 'carlos slim', 'DeBosillo', 20, 1000000);


SELECT * FROM Libros;

-- Concepto #5

SELECT * FROM Libros


SELECT Titulo, Autor, Editorial FROM Libros

SELECT Titulo, Precio FROM Libros

SELECT Editorial, Cantidad FROM Libros

-- concepto #6

-- Creacion de la Tabla Usuario
CREATE TABLE Usuarios (
  Nombre varchar(30),
  Clave varchar(10)
);

-- Ingresando datos a la tabla
INSERT INTO Usuarios (Nombre, Clave)
VALUES ('Harlit','De La Cruz');

INSERT INTO Usuarios (Nombre, Clave)
VALUES ('Carlos','Suarez');

INSERT INTO Usuarios (Nombre, Clave)
VALUES ('Omar','Santos');

INSERT INTO Usuarios (Nombre, Clave)
VALUES ('Luis','Ortiz');


SELECT * FROM Usuarios
    WHERE Nombre='Harlit';

SELECT Nombre FROM Usuarios
    WHERE Clave='Suarez';

SELECT Nombre FROM Usuarios
    WHERE Clave='Santi';
	
-- concepto #7

--    <> distinto 


SELECT * From Libros
	WHERE Autor<> 'Robert Kiyosaki';

SELECT Titulo, Precio FROM Libros
    WHERE Precio > 20;

SELECT Nombre FROM Usuarios
    WHERE Nombre <> 'Harlit' ;

	
-- concepto #8

DELETE FROM Usuarios
    WHERE Nombre='Harlit';

DELETE FROM Libros
  WHERE Autor='Robert kiyosaki';
  
-- concepto #9

UPDATE Libros SET Precio=100
    WHERE Autor='carlos slim';

UPDATE Libros SET Cantidad=10
    WHERE Autor='Robert kiyosaki';
	
-- concepto # 11

CREATE TABLE Libros(
    Titulo varchar(30) NOT NULL,
    Autor varchar(20) NOT NULL,
    Editorial varchar(15) NULL,
    Precio float 
);

INSERT INTO Libros (Titulo, Autor, Editorial, Precio, Cantidad)
VALUES ('Padre Rico Padre PObre', 'Robert Kiyosaki', 'Debolsillo', 23, 100000);

INSERT INTO Libros (Titulo, Autor, Editorial, Precio, Cantidad)
VALUES ('El cuadrante del flujo de dinero', 'Robert Kiyosaki', 'Debolsillo', 20, 10000);

INSERT INTO Libros (Titulo, Autor, Editorial, Precio, Cantidad)
VALUES ('Queremos que sea rico', 'Carlos slim', 'DeBolsillo', 20, 10000);

INSERT INTO Libros (Titulo, Autor, Editorial, Precio)
VALUES('El alquimista', 'Paulo Coelho', 'Planeta Libro', NULL);

INSERT INTO Libros (Titulo, Autor, Editorial, Precio)
VALUES('Piense y hagase rico', 'Napoleon hill', NULL, 0);

-- error el campo libro no es null 
INSERT INTO Libros (Titulo, Autor, Editorial, Precio)
VALUES(null, 'Sun Tzu', 'Editorial alma',30);

-- concepto #12

CREATE TABLE Usuarios(
    Nombre varchar(20),
    Clave varchar(10),
    PRIMARY KEY(nombre) 
);

INSERT INTO Usuarios (Nombre, Clave)
VALUES ('Harlit','De la cruz');

INSERT INTO Usuarios (Nombre, Clave)
VALUES ('Luis','Estevez');

-- da error
INSERT INTO Usuarios (Nombre, Clave)
VALUES ('Harlit','Santos');

-- concepto #13

CREATE TABLE Libros(
    Codigo int identity,
    Titulo varchar(40) not null,
    Autor varchar(30),
    Editorial varchar(15),
    Precio float
);

INSERT INTO Libros (Codigo, Titulo, Autor, Editorial, Precio)
VALUES('Uno','Mi historia','Pedro Martinez',20);

-- Intentemos ingresar un valor para el campo "codigo" (genera error):
INSERT INTO Libros (Codigo, Titulo, Autor, Editorial, Precio)
VALUES(5,'mapa de los anhelos','alice kellen','Casa Azul',12);

-- concepto #14
CREATE TABLE libros(
    Codigo int identity(100,2), -- empieza a llena el campo desde 100 y suma de 2 en 2
    Titulo varchar(20),
    Autor varchar(30),
    Precio float
);

-- concepto #15

Truncate TABLE Libros -- quita las filas
Truncate TABLE Usuarios

-- concepto #19
CREATE TABLE Empleados(
    Nombre varchar(20),
    Documento char(10),
    FechaIngreso datetime
);

INSERT INTO Empleados VALUES('Harlit De La Cruz','92387564723','28-11-2001');
INSERT INTO Empleados VALUES('Enmanuel Estevez','9837461983','28-11-2002');

-- concepto #20

CREATE TABLE Libros(
    Codigo int identity,
    Titulo varchar(40) not null,
    Autor varchar(30),
    Editorial varchar(15)
);


INSERT INTO Libros
VALUES('Uno','Codigo da vinci','dan brown');


INSERT INTO Libros (Titulo, Autor)
VALUES('El millonario','Harlit De La Cruz');


INSERT INTO Libros (Autor, Editorial)
VALUES ('Enmanuel Estevez','Casa Azul');

--concepto #21

CREATE TABLE Libros(
    Codigo int identity,
    Titulo varchar(40),
    Autor varchar(30) not null default 'Desconocido', -- Valor defecto
    Editorial varchar(20),
    Precio decimal(5,2),
    Cantidad tinyint default 0 -- Valor defecto
);

INSERT INTO Libros Titulo, Editorial, Precio)
VALUES('Porque soy el mejor','Casa Azul',54.50);


INSERT INTO Libros (Titulo, Editorial)
VALUES('Mi Vida','Casa Roja');


INSERT INTO Libros (Titulo, Autor, Precio, Cantidad)
VALUES('Porque soy asi?',default,default,100);

-- concepto #22

SELECT Titulo, Precio, Cantidad, Precio * Cantidad FROM Libros;


SELECT Titulo, Precio, Precio - (Precio * 0.1) FROM Libros;


UPDATE Libros SET Precio = Precio - ( Precio * 0.1);

--concepto #23

CREATE TABLE Agenda(
    Nombre varchar(30),
    Domicilio varchar(30),
    Telefono varchar(11)
);

INSERT INTO Agenda
VALUES('Harlit Estevez','Toribio Camilo','892382312');
INSERT INTO Agenda
VALUES('Enmanuel Cruz','Toribio Piantini','3423423422');
INSERT INTO Agenda
VALUES('Carlos santanas','andujar',null);


SELECT Nombre AS 'Nombre y apellido', Domicilio,Telefono FROM Agenda;

SELECT Nombre AS 'Nombre y apellido', Domicilio, Telefono FROM Agenda;

-- concepto #25

SELECT substring(Titulo, 1, 5) AS Titulo FROM Libros;


SELECT LEFT(Titulo, 7) AS Titulo FROM Libros;


SELECT Titulo, str(Precio, 6, 1) FROM Libros;


SELECT Titulo, str(Precio) FROM Libros;


SELECT Titulo, Autor, upper(Editorial) FROM Libros;

--concepto #27

CREATE TABLE Libros(
    Titulo varchar(40) not null,
    Autor varchar(20) default 'Desconocido',
    Editorial varchar(20),
    Edicion datetime,
    Precio decimal(6,2)
);

INSERT INTO Libros 
VALUES('Padre Rico Padre Pobres','Robert Kiyosaki','Casa Azul','2001/5/10',24.99);

INSERT INTO Libros 
VALUES('Porque Soy Rico','Harlit Estevez','Casa Roja','2005/03/01',59.99);

INSERT INTO Libros 
VALUES('Soy el mejor','Harlit Estevez','Casa Roja','2001/03/03',19.99);

INSERT INTO Libros 
VALUES('Soy rico Porque','Enmanuel Estevez','Casa Verde','2002/02/12',45);

-- Mostramos el título del libro y el año de edición:
SELECT Titulo, datepart (year, Edicion) FROM Libros;

-- Mostramos el título del libro y el nombre del mes de edición:
SELECT Titulo, datename (month, Edicion) FROM Libros;

-- Mostramos el título del libro y los años que tienen de editados:
SELECT Titulo, datediff(year, Edicion, getdate()) FROM Libros;

-- concepto #28

SELECT * FROM Libros ORDER BY Titulo;

SELECT * FROM Libros ORDER BY Titulo, Editorial;

SELECT * FROM Libros ORDER By Editorial desc;

-- concepto #29

 
-- - and = y 
-- - or = o
-- - not = no


SELECT * FROM Libros WHERE (Autor='Robert Kiyosaki') AND (Precio<=20);

SELECT * FROM Libros WHERE Autor='Harlit De La Cruz' OR Editorial='Casa Azul';


SELECT * FROM Libros WHERE NOT Editorial='Casa Azul';

-- concepto #30 

SELECT * FROM Libros WHERE Editorial IS NULL;

SELECT * FROM Libros WHERE Editorial IS NOT NULL;

-- concepto #31

SELECT * FROM Libros WHERE Precio BETWEEN 10 AND 400;

SELECT * FROM Libros WHERE Precio NOT BETWEEN 10 AND 400;

-- concepto #32

SELECT * FROM Libros WHERE Autor IN ('Soy el Mejor','Harlit');

SELECT * FROM Libros WHERE Autor NOT IN ('Padre Rico Padre Pobre','Robert Kiyosaki');

-- concepto #33

SELECT * FROM Libros WHERE Autor LIKE '%Harlit De La Cruz%';

SELECT * FROM Libros WHERE Titulo LIKE 'H%';

SELECT * FROM Libros WHERE Titulo NOT LIKE 'H%';

SELECT Titulo, Autor, Editorial FROM Libros WHERE Editorial LIKE '[H-R]%';

SELECT Titulo, Autor, Editorial FROM Libros WHERE Editorial LIKE '[^HR]%';

-- concepto #34

SELECT count(*) FROM Libros;

SELECT count(*) FROM Libros WHERE Editorial='Planeta';

SELECT count(Precio) FROM Libros;

-- concepto #36
SELECT count_big(*) FROM Libros;

SELECT sum(Cantidad) FROM Libros;

SELECT max(Precio) FROM Libros;

SELECT min(Precio) FROM Libros;

SELECT avg(Precio) FROM Libros WHERE Titulo LIKE 'H%';

-- concepto #37

SELECT Editorial, count(*) FROM libros GROUP BY Editorial;

SELECT Editorial, sum(Precio) FROM Libros GROUP BY Editorial;

SELECT Editorial, count(*) FROM Libros WHERE precio<30 GROUP BY Editorial;

SELECT Editorial, count(*) FROM Libros WHERE Precio<30 GROUP BY ALL Editorial;

-- concepto #38

SELECT Editorial, count(*) FROM Libros GROUP BY Editorial HAVING count(*)>2;

SELECT Editorial, avg(Precio) FROM Libros GROUP BY Editorial HAVING avg(Precio)>25;

SELECT Editorial, avg(Precio) FROM Libros GROUP BY Editorial HAVING count(*)>2; 

--concepto #43

SELECT DISTINCT Autor FROM Libros;

SELECT DISTINCT Autor FROM Libros WHERE Autor IS NOT NULL;

SELECT count(DISTINCT Autor) FROM Libros;

SELECT DISTINCT Editorial FROM Libros;

SELECT count(DISTINCT Editorial) FROM Libros;

--concepto #44

SELECT top 2 * FROM Libros

SELECT top 3 Titulo, Autor FROM Libros ORDER BY Autor;

SELECT top 50 percent * FROM Libros ORDER BY autor;

--concepto #53

DROP TABLE Libros;

CREATE TABLE Libros(
  Codigo int not null,
  Titulo varchar(40),
  Autor varchar(30),
  Editorial varchar(15),
  Precio decimal(6,2)
);


ALTER TABLE Libros
ADD CONSTRAINT PK_libros_codigo
PRIMARY KEY(Codigo);

ALTER TABLE Libros
ADD CONSTRAINT DF_libros_autor


DEFAULT 'Desconocido' FOR Autor;

exec sp_helpconstraint Libros;

ALTER TABLE Libros
DROP DF_libros_autor;


ALTER TABLE Libros
DROP PK_libros_codigo;

exec sp_helpconstraint Libros;

--concepto #66 

 create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint not null,
  primary key(codigo)
 );
 create table provincias(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );


 insert into provincias (nombre) values('Cordoba');
 insert into provincias (nombre) values('Santa Fe');
 insert into provincias (nombre) values('Corrientes');

 insert into clientes values ('Harlit','Colon 111','Córdoba',1);
 insert into clientes values ('Joselito','San Martin 222','Cruz del Eje',1);
 insert into clientes values ('Juan','Rivadavia 333','Villa Maria',1);
 insert into clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
 insert into clientes values ('Pereyra Lucas','San Martin 555','Cruz del Eje',1);
 insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes values ('Torres Fabiola','Alem 777','Ibera',3);


 select c.nombre,domicilio,ciudad,p.nombre
  from clientes as c
  join provincias as p
  on c.codigoprovincia=p.codigo;


 select c.nombre,domicilio,ciudad,p.nombre
  from clientes as c
  join provincias as p
  on c.codigoprovincia=p.codigo
  order by p.nombre;



 select c.nombre,domicilio,ciudad
  from clientes as c
  join provincias as p
  on c.codigoprovincia=p.codigo
  where p.nombre='Santa Fe';
  
 -- concepto #67
 
 create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint not null,
  primary key(codigo)
 );

 create table provincias(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );


 insert into provincias (nombre) values('Cordoba');
 insert into provincias (nombre) values('Santa Fe');
 insert into provincias (nombre) values('Corrientes');

 insert into clientes values ('Harlit','Colon 111','Córdoba',1);
 insert into clientes values ('Joselito','San Martin 222','Cruz del Eje',1);
 insert into clientes values ('Juan','Rivadavia 333','Villa Maria',1);
 insert into clientes values ('Jose Luis','Sarmiento 444','Rosario',2);
 insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes values ('Torres Fabiola','Alem 777','La Plata',4);
 insert into clientes values ('Garcia Luis','Sucre 475','Santa Rosa',5);


 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo;


 select c.nombre,domicilio,ciudad, p.nombre
  from provincias as p
  left join clientes as c
  on codigoprovincia = p.codigo;


 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo
  where p.codigo is not null;


 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo
  where p.codigo is null
  order by c.nombre;


 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo
  where p.nombre='Cordoba';
  
--   concepto #68

create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint not null,
  primary key(codigo)
 );

 create table provincias(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );


 insert into provincias (nombre) values('Cordoba');
 insert into provincias (nombre) values('Santa Fe');
 insert into provincias (nombre) values('Corrientes');

 insert into clientes values ('Harlit','Colon 111','Córdoba',1);
 insert into clientes values ('Joselito','San Martin 222','Cruz del Eje',1);
 insert into clientes values ('Juan','Rivadavia 333','Villa Maria',1);
 insert into clientes values ('jose Luis','Sarmiento 444','Rosario',2);
 insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes values ('Torres Fabiola','Alem 777','La Plata',4);
 insert into clientes values ('Garcia Luis','Sucre 475','Santa Rosa',5);

 select c.nombre,domicilio,ciudad, p.nombre
  from provincias as p
  right join clientes as c
  on codigoprovincia = p.codigo;


 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo;


 select c.nombre,domicilio,ciudad, p.nombre
  from provincias as p
  right join clientes as c
  on codigoprovincia = p.codigo
  where p.codigo is not null;


 select c.nombre,domicilio,ciudad, p.nombre
  from provincias as p
  right join clientes as c
  on codigoprovincia = p.codigo
  where p.codigo is null
  order by ciudad;
  
  --concepto #73
  
  create table libros(
  codigo int identity,
  titulo varchar(40),
  codigoautor int not null,
  codigoeditorial tinyint not null,
  precio decimal(5,2),
  primary key(codigo)
 );

 create table autores(
  codigo int identity,
  nombre varchar(20),
  primary key (codigo)
 );

 create table editoriales(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into editoriales values('Planeta');
 insert into editoriales values('Emece');
 insert into editoriales values('Siglo XXI');
 insert into editoriales values('Plaza');
 
 insert into autores values ('Richard Bach');
 insert into autores values ('Borges');
 insert into autores values ('Jose Hernandez');
 insert into autores values ('Mario Molina');
 insert into autores values ('Paenza');
 
 insert into libros values('El aleph',2,2,20);
 insert into libros values('Martin Fierro',3,1,30);
 insert into libros values('Aprenda PHP',4,3,50);
 insert into libros values('Uno',1,1,15);
 insert into libros values('Java en 10 minutos',0,3,45);
 insert into libros values('Matematica estas ahi',0,0,15);
 insert into libros values('Java de la A a la Z',4,0,50);

 select titulo,a.nombre,e.nombre,precio
  from autores as a
  join libros as l
  on codigoautor=a.codigo
  join editoriales as e
  on codigoeditorial=e.codigo;

 select titulo,a.nombre,e.nombre,precio
  from autores as a
  right join libros as l
  on codigoautor=a.codigo
  left join editoriales as e
  on codigoeditorial=e.codigo;

  
 -- concepto #74
 
  create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30) default 'Desconocido',
  codigoeditorial tinyint not null,
  precio decimal(5,2)
 );
 create table editoriales(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into editoriales values('Planeta');
 insert into editoriales values('Emece');
 insert into editoriales values('Siglo XXI');

 insert into libros values('El aleph','Borges',2,20);
 insert into libros values('Martin Fierro','Jose Hernandez',1,30);
 insert into libros values('Aprenda PHP','Mario Molina',3,50);
 insert into libros values('Java en 10 minutos',default,3,45);

 update libros set precio=precio+(precio*0.1)
  from libros 
  join editoriales as e
  on codigoeditorial=e.codigo
  where nombre='Planeta';

 select titulo,autor,e.nombre,precio
  from libros as l
  join editoriales as e
  on codigoeditorial=e.codigo;

 delete libros
  from libros
  join editoriales
  on codigoeditorial = editoriales.codigo
  where editoriales.nombre='Emece';

 select titulo,autor,e.nombre,precio
  from libros as l
  join editoriales as e
  on codigoeditorial=e.codigo;
  
--concepto #83


 create table libros(
  codigo int identity,
  titulo varchar(30),
  autor varchar(30),
  editorial varchar(15),
  precio decimal(6,2) not null default 0
 );

 insert into libros
  values('El aleph','Borges','Planeta',20);
 insert into libros
  values('Java en 10 minutos',null,'Siglo XXI',30);
 insert into libros
  values('Uno','Richard Bach','Planeta',15);
 insert into libros
  values('Martin Fierro','Jose Hernandez',null,30);
 insert into libros
  values('Aprenda PHP','Mario Molina','Emece',25);

 alter table libros
  alter column titulo varchar(40) not null;

 delete from libros where autor is null;
 alter table libros
  alter column autor varchar(30) not null;

 alter table libros
  alter column codigo smallint;

 exec sp_columns libros;

 alter table libros
  alter column precio decimal(6,2) null;

  --concepto # 84
  
   create table libros(
  codigo int identity,
  titulo varchar(30),
  autor varchar(30),
  editorial varchar(15),
  precio decimal(6,2) not null default 0
 );

 insert into libros
  values('El aleph','Borges','Planeta',20);
 insert into libros
  values('Java en 10 minutos',null,'Siglo XXI',30);
 insert into libros
  values('Uno','Richard Bach','Planeta',15);
 insert into libros
  values('Martin Fierro','Jose Hernandez',null,30);
 insert into libros
  values('Aprenda PHP','Mario Molina','Emece',25);

 alter table libros
  alter column titulo varchar(40) not null;

 delete from libros where autor is null;
 alter table libros
  alter column autor varchar(30) not null;

 alter table libros
  alter column codigo smallint;

 exec sp_columns libros;

 alter table libros
  alter column precio decimal(6,2) null;

 --concepto #86
 
 
  create table empleados(
  documento char(8),
  nombre varchar(10),
  domicilio varchar(30),
  sueldobasico decimal(6,2),
  hijos tinyint not null default 0,
  sueldototal as sueldobasico + (hijos*100)
 );

 insert into empleados values('22222222','Juan Perez','Colon 123',300,2);
 insert into empleados values('23333333','Ana Lopez','Sucre 234',500,0);

 select * from empleados;

 update empleados set hijos=1 where documento='23333333';

 select * from empleados;

 alter table empleados
  add salariofamiliar as hijos*100;

 exec sp_columns empleados;

 select * from empleados;

 
 --concepto #92
 
 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2)
 );

 insert into libros values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',20.00);
 insert into libros values('Alicia en el pais de las maravillas','Lewis Carroll','Plaza',35.00);
 insert into libros values('Aprenda PHP','Mario Molina','Siglo XXI',40.00);
 insert into libros values('El aleph','Borges','Emece',10.00);
 insert into libros values('Ilusiones','Richard Bach','Planeta',15.00);
 insert into libros values('Java en 10 minutos','Mario Molina','Siglo XXI',50.00);
 insert into libros values('Martin Fierro','Jose Hernandez','Planeta',20.00);
 insert into libros values('Martin Fierro','Jose Hernandez','Emece',30.00);
 insert into libros values('Uno','Richard Bach','Planeta',10.00);

 select titulo,precio,
  precio-(select max(precio) from libros) as diferencia
  from libros
  where titulo='Uno';

 select titulo,autor, precio
  from libros
  where precio=
   (select max(precio) from libros);

 update libros set precio=45
  where precio=
   (select max(precio) from libros);

 delete from libros
  where precio=
   (select min(precio) from libros);

   
 --concepto #93
 
 create table editoriales(
  codigo tinyint identity,
  nombre varchar(30),
  primary key (codigo)
 );
 
 create table libros (
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  codigoeditorial tinyint,
  primary key(codigo),
 constraint FK_libros_editorial
   foreign key (codigoeditorial)
   references editoriales(codigo)
   on update cascade,
 );

 insert into editoriales values('Planeta');
 insert into editoriales values('Emece');
 insert into editoriales values('Paidos');
 insert into editoriales values('Siglo XXI');

 insert into libros values('Uno','Richard Bach',1);
 insert into libros values('Ilusiones','Richard Bach',1);
 insert into libros values('Aprenda PHP','Mario Molina',4);
 insert into libros values('El aleph','Borges',2);
 insert into libros values('Puente al infinito','Richard Bach',2);

 select nombre
  from editoriales
  where codigo in
   (select codigoeditorial
     from libros
     where autor='Richard Bach');

 select codigoeditorial
  from libros
  where autor='Richard Bach';

 select distinct nombre
  from editoriales as e
  join libros
  on codigoeditorial=e.codigo
  where autor='Richard Bach';

 select nombre
  from editoriales
  where codigo not in
   (select codigoeditorial
     from libros
     where autor='Richard Bach');


--concepto #94

create table editoriales(
  codigo tinyint identity,
  nombre varchar(30),
  primary key (codigo)
 );
 
 create table libros (
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  codigoeditorial tinyint,
  precio decimal(5,2),
  primary key(codigo),
 constraint FK_libros_editorial
   foreign key (codigoeditorial)
   references editoriales(codigo)
   on update cascade,
 );

 insert into editoriales values('Planeta');
 insert into editoriales values('Emece');
 insert into editoriales values('Paidos');
 insert into editoriales values('Siglo XXI');

 insert into libros values('Uno','Richard Bach',1,15);
 insert into libros values('Ilusiones','Richard Bach',4,18);
 insert into libros values('Puente al infinito','Richard Bach',2,19);
 insert into libros values('Aprenda PHP','Mario Molina',4,40);
 insert into libros values('El aleph','Borges',2,10);
 insert into libros values('Antología','Borges',1,20);
 insert into libros values('Cervantes y el quijote','Borges',3,25);

 select titulo
  from libros
  where autor like '%Borges%' and
  codigoeditorial = any
   (select e.codigo
    from editoriales as e
    join libros as l
    on codigoeditorial=e.codigo
    where l.autor like '%Bach%');

 select titulo,precio
  from libros
  where autor like '%Borges%' and
  precio > any
   (select precio
    from libros
    where autor like '%Bach%');

 select titulo,precio
  from libros
  where autor like '%Borges%' and
  precio > all
   (select precio
    from libros
    where autor like '%Bach%');

 delete from libros
  where autor like '%Borges%' and
  precio > all
   (select precio
    from libros
    where autor like '%Bach%');
--concepto #95

create table facturas(
  numero int not null,
  fecha datetime,
  cliente varchar(30),
  primary key(numero)
 );

 create table detalles(
  numerofactura int not null,
  numeroitem int not null, 
  articulo varchar(30),
  precio decimal(5,2),
  cantidad int,
  primary key(numerofactura,numeroitem),
   constraint FK_detalles_numerofactura
   foreign key (numerofactura)
   references facturas(numero)
   on update cascade
   on delete cascade,
 );

 insert into facturas values(1200,'2018-01-15','Juan Lopez');
 insert into facturas values(1201,'2018-01-15','Luis Torres');
 insert into facturas values(1202,'2018-01-15','Ana Garcia');
 insert into facturas values(1300,'2018-01-20','Juan Lopez');

 insert into detalles values(1200,1,'lapiz',1,100);
 insert into detalles values(1200,2,'goma',0.5,150);
 insert into detalles values(1201,1,'regla',1.5,80);
 insert into detalles values(1201,2,'goma',0.5,200);
 insert into detalles values(1201,3,'cuaderno',4,90);
 insert into detalles values(1202,1,'lapiz',1,200);
 insert into detalles values(1202,2,'escuadra',2,100);
 insert into detalles values(1300,1,'lapiz',1,300);

 select f.*,
  (select count(d.numeroitem)
    from detalles as d
    where f.numero=d.numerofactura) as cantidad,
  (select sum(d.precio*cantidad)
    from detalles as d
    where f.numero=d.numerofactura) as total
 from facturas as f;

 
 --concepto #96
 
 create table facturas(
  numero int not null,
  fecha datetime,
  cliente varchar(30),
  primary key(numero)
 );

 create table detalles(
  numerofactura int not null,
  numeroitem int not null, 
  articulo varchar(30),
  precio decimal(5,2),
  cantidad int,
  primary key(numerofactura,numeroitem),
   constraint FK_detalles_numerofactura
   foreign key (numerofactura)
   references facturas(numero)
   on update cascade
   on delete cascade
 );

 insert into facturas values(1200,'2018-01-15','Juan Lopez');
 insert into facturas values(1201,'2018-01-15','Luis Torres');
 insert into facturas values(1202,'2018-01-15','Ana Garcia');
 insert into facturas values(1300,'2018-01-20','Juan Lopez');

 insert into detalles values(1200,1,'lapiz',1,100);
 insert into detalles values(1200,2,'goma',0.5,150);
 insert into detalles values(1201,1,'regla',1.5,80);
 insert into detalles values(1201,2,'goma',0.5,200);
 insert into detalles values(1201,3,'cuaderno',4,90);
 insert into detalles values(1202,1,'lapiz',1,200);
 insert into detalles values(1202,2,'escuadra',2,100);
 insert into detalles values(1300,1,'lapiz',1,300);

 select cliente,numero
  from facturas as f
  where exists
   (select *from detalles as d
     where f.numero=d.numerofactura
     and d.articulo='lapiz');

 select cliente,numero
  from facturas as f
  where not exists
   (select *from detalles as d
     where f.numero=d.numerofactura
     and d.articulo='lapiz');

	 
-- concepto #98

create table clientes(
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  primary key(codigo)
 );

 create table facturas(
  numero int not null,
  fecha datetime,
  codigocliente int not null,
  primary key(numero),
  constraint FK_facturas_cliente
   foreign key (codigocliente)
   references clientes(codigo)
   on update cascade
 );

 create table detalles(
  numerofactura int not null,
  numeroitem int not null, 
  articulo varchar(30),
  precio decimal(5,2),
  cantidad int,
  primary key(numerofactura,numeroitem),
   constraint FK_detalles_numerofactura
   foreign key (numerofactura)
   references facturas(numero)
   on update cascade
   on delete cascade,
 );

 insert into clientes values('Juan Lopez','Colon 123');
 insert into clientes values('Luis Torres','Sucre 987');
 insert into clientes values('Ana Garcia','Sarmiento 576');

 insert into facturas values(1200,'2018-01-15',1);
 insert into facturas values(1201,'2018-01-15',2);
 insert into facturas values(1202,'2018-01-15',3);
 insert into facturas values(1300,'2018-01-20',1);

 insert into detalles values(1200,1,'lapiz',1,100);
 insert into detalles values(1200,2,'goma',0.5,150);
 insert into detalles values(1201,1,'regla',1.5,80);
 insert into detalles values(1201,2,'goma',0.5,200);
 insert into detalles values(1201,3,'cuaderno',4,90);
 insert into detalles values(1202,1,'lapiz',1,200);
 insert into detalles values(1202,2,'escuadra',2,100);
 insert into detalles values(1300,1,'lapiz',1,300);

 select f.*,
  (select sum(d.precio*cantidad)
    from detalles as d
    where f.numero=d.numerofactura) as total
 from facturas as f;

 select td.numero,c.nombre,td.total
  from clientes as c
  join (select f.*,
   (select sum(d.precio*cantidad)
    from detalles as d
    where f.numero=d.numerofactura) as total
  from facturas as f) as td
  on td.codigocliente=c.codigo;

  --concepto #99
  
   create table editoriales(
  codigo tinyint identity,
  nombre varchar(30),
  primary key (codigo)
 );
 
 create table libros (
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  codigoeditorial tinyint,
  precio decimal(5,2),
  primary key(codigo)
 );

 insert into editoriales values('Planeta');
 insert into editoriales values('Emece');
 insert into editoriales values('Paidos');
 insert into editoriales values('Siglo XXI');

 insert into libros values('Uno','Richard Bach',1,15);
 insert into libros values('Ilusiones','Richard Bach',2,20);
 insert into libros values('El aleph','Borges',3,10);
 insert into libros values('Aprenda PHP','Mario Molina',4,40);
 insert into libros values('Poemas','Juan Perez',1,20);
 insert into libros values('Cuentos','Juan Perez',3,25);
 insert into libros values('Java en 10 minutos','Marcelo Perez',2,30);

 update libros set precio=precio+(precio*0.1)
  where codigoeditorial=
   (select codigo
     from editoriales
     where nombre='Emece');

 delete from libros
  where codigoeditorial in
   (select e.codigo
    from editoriales as e
    join libros
    on codigoeditorial=e.codigo
    where autor='Juan Perez');

--concepto # 100

create table alumnos(
  documento char(8) not null,
  nombre varchar(30),
  nota decimal(4,2)
   constraint CK_alumnos_nota_valores check (nota>=0 and nota <=10),
  primary key(documento),
 );

 create table aprobados(
  documento char(8) not null,
  nota decimal(4,2)
   constraint CK_aprobados_nota_valores check (nota>=0 and nota <=10),
  primary key(documento),
 );

 insert into alumnos values('30000000','Ana Acosta',8);
 insert into alumnos values('30111111','Betina Bustos',9);
 insert into alumnos values('30222222','Carlos Caseros',2.5); 
 insert into alumnos values('30333333','Daniel Duarte',7.7);
 insert into alumnos values('30444444','Estela Esper',3.4);

 insert into aprobados 
  select documento,nota
   from alumnos
   where nota>=4;

 select * from aprobados;


--concepto # 101

create table libros( 
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2),
  primary key(codigo)
 ); 

 insert into libros values('Uno','Richard Bach','Planeta',15);
 insert into libros values('El aleph','Borges','Emece',25);
 insert into libros values('Matematica estas ahi','Paenza','Nuevo siglo',18);
 insert into libros values('Aprenda PHP','Mario Molina','Nuevo siglo',45);
 insert into libros values('Ilusiones','Richard Bach','Planeta',14);
 insert into libros values('Java en 10 minutos','Mario Molina','Nuevo siglo',50);

 select distinct editorial as nombre
  into editoriales
  from libros;

 select *from editoriales;

 if object_id('cantidadporeditorial') is not null
  drop table cantidadporeditorial;

 select editorial as nombre,count(*) as cantidad
  into cantidadporeditorial
  from libros
  group by editorial;

 select *from cantidadporeditorial;

 if object_id('ofertas4') is not null
  drop table ofertas4;

 select top 4 *
  into ofertas4
  from libros
  order by precio asc;

 select *from ofertas4;

 alter table editoriales add ciudad varchar(30);

 go

 update editoriales set ciudad='Cordoba' where nombre='Planeta';
 update editoriales set ciudad='Cordoba' where nombre='Emece';
 update editoriales set ciudad='Buenos Aires' where nombre='Nuevo siglo';

 if object_id('librosdecordoba') is not null
  drop table librosdecordoba;

 select titulo,autor
  into librosdecordoba
  from libros
  join editoriales
  on editorial=nombre 
  where ciudad='Cordoba';

 select *from librosdecordoba;

 -- concepto # 103
 
 create table secciones(
  codigo tinyint identity,
  nombre varchar(20),
  sueldo decimal(5,2)
   constraint CK_secciones_sueldo check (sueldo>=0),
  constraint PK_secciones primary key (codigo)
 );

 create table empleados(
  legajo int identity,
  documento char(8)
   constraint CK_empleados_documento check (documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
  sexo char(1)
   constraint CK_empleados_sexo check (sexo in ('f','m')),
  apellido varchar(20),
  nombre varchar(20),
  domicilio varchar(30),
  seccion tinyint not null,
  cantidadhijos tinyint
   constraint CK_empleados_hijos check (cantidadhijos>=0),
  estadocivil char(10)
   constraint CK_empleados_estadocivil check (estadocivil in ('casado','divorciado','soltero','viudo')),
  fechaingreso datetime,
   constraint PK_empleados primary key (legajo),
  constraint FK_empleados_seccion
   foreign key (seccion)
   references secciones(codigo)
   on update cascade,
  constraint UQ_empleados_documento
   unique(documento)
 );

 insert into secciones values('Administracion',300);
 insert into secciones values('Contaduría',400);
 insert into secciones values('Sistemas',500);

 insert into empleados values('22222222','f','Lopez','Ana','Colon 123',1,2,'casado','1990-10-10');
 insert into empleados values('23333333','m','Lopez','Luis','Sucre 235',1,0,'soltero','1990-02-10');
 insert into empleados values('24444444','m','Garcia','Marcos','Sarmiento 1234',2,3,'divorciado','1998-07-12');
 insert into empleados values('25555555','m','Gomez','Pablo','Bulnes 321',3,2,'casado','1998-10-09');
 insert into empleados values('26666666','f','Perez','Laura','Peru 1254',3,3,'casado','2000-05-09');

 if object_id('vista_empleados') is not null
  drop view vista_empleados;

 create view vista_empleados as
  select (apellido+' '+e.nombre) as nombre,sexo,
   s.nombre as seccion, cantidadhijos
   from empleados as e
   join secciones as s
   on codigo=seccion;

 select *from vista_empleados;

 select seccion,count(*) as cantidad
  from vista_empleados
  group by seccion;

 if object_id('vista_empleados_ingreso') is not null
  drop view vista_empleados_ingreso;

 create view vista_empleados_ingreso (fecha,cantidad)
  as
  select datepart(year,fechaingreso),count(*)
   from empleados
   group by datepart(year,fechaingreso);

 select *from vista_empleados_ingreso;

 
 --concepto #104
 
 create table secciones(
  codigo tinyint identity,
  nombre varchar(20),
  sueldo decimal(5,2)
   constraint CK_secciones_sueldo check (sueldo>=0),
  constraint PK_secciones primary key (codigo)
 );

 create table empleados(
  legajo int identity,
  documento char(8)
   constraint CK_empleados_documento check (documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
  sexo char(1)
   constraint CK_empleados_sexo check (sexo in ('f','m')),
  apellido varchar(20),
  nombre varchar(20),
  domicilio varchar(30),
  seccion tinyint not null,
  cantidadhijos tinyint
   constraint CK_empleados_hijos check (cantidadhijos>=0),
  estadocivil char(10)
   constraint CK_empleados_estadocivil check (estadocivil in ('casado','divorciado','soltero','viudo')),
  fechaingreso datetime,
   constraint PK_empleados primary key (legajo),
  constraint FK_empleados_seccion
   foreign key (seccion)
   references secciones(codigo)
   on update cascade,
  constraint UQ_empleados_documento
   unique(documento)
);

 insert into secciones values('Administracion',300);
 insert into secciones values('Contaduría',400);
 insert into secciones values('Sistemas',500);

 insert into empleados values('22222222','f','Lopez','Ana','Colon 123',1,2,'casado','1990-10-10');
 insert into empleados values('23333333','m','Lopez','Luis','Sucre 235',1,0,'soltero','1990-02-10');
 insert into empleados values('24444444','m','Garcia','Marcos','Sarmiento 1234',2,3,'divorciado','1998-07-12');
 insert into empleados values('25555555','m','Gomez','Pablo','Bulnes 321',3,2,'casado','1998-10-09');
 insert into empleados values('26666666','f','Perez','Laura','Peru 1254',3,3,'casado','2000-05-09');

 if object_id('vista_empleados') is not null
  drop view vista_empleados;

 create view vista_empleados as
  select (apellido+' '+e.nombre) as nombre,sexo,
   s.nombre as seccion, cantidadhijos
   from empleados as e
   join secciones as s
   on codigo=seccion;

 select *from vista_empleados;

 exec sp_help vista_empleados;

 exec sp_helptext vista_empleados;

 exec sp_depends vista_empleados;

 exec sp_depends empleados;

 select * from sysobjects;

 select * from sysobjects
  where xtype='V' and-- tipo vista
  name like 'vista%'--búsqueda con comodín ;

  
  --concepto # 110
  
  create table alumnos(
  nombre varchar(40),
  nota tinyint,
    constraint CK_alunos_nota check (nota>=0 and nota<=10)
 );

 insert into alumnos values('Ana Acosta',8);
 insert into alumnos values('Carlos Caseres',4);
 insert into alumnos values('Federico Fuentes',2);
 insert into alumnos values('Gaston Guzman',3);
 insert into alumnos values('Hector Herrero',5);
 insert into alumnos values('Luis Luna',10);
 insert into alumnos values('Marcela Morales',7);
 insert into alumnos values('Marcela Morales',null);

 select nombre,nota, condicion=
 case nota
  when 0 then 'libre'
  when 1 then 'libre'
  when 2 then 'libre'
  when 3 then 'libre'
  when 4 then 'regular'
  when 5 then 'regular'
  when 6 then 'regular'
  when 7 then 'promocionado'
  when 8 then 'promocionado'
  when 9 then 'promocionado'
  when 10 then 'promocionado'
 end
 from alumnos;

 select nombre, nota, condicion=
  case 
   when nota<4 then 'libre'
   when nota >=4 and nota<7 then 'regular'
   when nota>=7 then 'promocionado'
   else 'sin nota'
  end
 from alumnos;

 alter table alumnos
  add condicion varchar(20);

 select *from alumnos;

 update alumnos set condicion=
  case
   when nota<4 then 'libre'
   when nota between 4 and 7 then 'regular'
   when nota >7 then 'promocionado'
  end;

 select *from alumnos;

 select condicion, count(*) as cantidad,resultado=
  case condicion
    when 'libre' then 'repitentes'
    when 'regular' then 'rinden final'
    when 'promocionado' then 'no rinden final'
    else 'sin datos'
  end
 from alumnos
 group by condicion
 order by cantidad;

 
--concepto #111

create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2),
  cantidad tinyint,
  primary key (codigo)
 );

 insert into libros values('Uno','Richard Bach','Planeta',15,100);
 insert into libros values('El aleph','Borges','Emece',20,150);
 insert into libros values('Aprenda PHP','Mario Molina','Nuevo siglo',50,200);
 insert into libros values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,0);
 insert into libros values('Java en 10 minutos','Mario Molina','Emece',40,200);

 if exists (select *from libros where cantidad=0)
  (select titulo from libros where cantidad=0)
 else
  select 'No hay libros sin stock';

 if exists (select * from libros where editorial='Emece')
 begin
  update libros set precio=precio-(precio*0.1) where editorial='Emece'
  select 'libros actualizados'
 end
 else
  select 'no hay registros actualizados';

 select * from libros where editorial='Emece';

 if exists (select * from libros where cantidad=0)
  delete from libros where cantidad=0
 else
  select 'No hay registros eliminados';

 if exists (select * from libros where cantidad=0)
  delete from libros where cantidad=0
 else
  select 'No hay registros eliminados';

 select titulo,costo=iif(precio<38,'barato','caro') from libros;

-- concepto #120

 create table libros(
   codigo int identity,
   titulo varchar(40),
   autor varchar(30),
   editorial varchar(20),
   precio decimal(5,2),
   cantidad smallint,
   primary key(codigo)
  )

  insert into libros values('Uno','Richard Bach','Planeta',15,5)
  insert into libros values('Ilusiones','Richard Bach','Planeta',18,50)
  insert into libros values('El aleph','Borges','Emece',25,9)
  insert into libros values('Aprenda PHP','Mario Molina','Nuevo siglo',45,100)
  insert into libros values('Matematica estas ahi','Paenza','Nuevo siglo',12,50)
  insert into libros values('Java en 10 minutos','Mario Molina','Paidos',35,300);

 exec pa_crear_libros;

 select *from libros;

 exec sp_help pa_crear_libros;

 if object_id('pa_libros_limite_stock') is not null
  drop procedure pa_libros_limite_stock;
 
 create proc pa_libros_limite_stock
  as
   select *from libros
   where cantidad <=10;

 exec sp_help pa_libros_limite_stock;

 exec pa_libros_limite_stock;

 update libros set cantidad=2 where codigo=4;
 exec pa_libros_limite_stock;

--concepto #135

 create table empleados(
  documento char(8) not null,
  nombre varchar(30),
  fechaingreso datetime,
  mail varchar(50),
  telefono varchar(12)
 );

 insert into empleados values('22222222', 'Ana Acosta','1985/10/10','anaacosta@gmail.com','4556677');
 insert into empleados values('23333333', 'Bernardo Bustos', '1986/02/15',null,'4558877');
 insert into empleados values('24444444', 'Carlos Caseros','1999/12/02',null,null);
 insert into empleados values('25555555', 'Diana Dominguez',null,null,'4252525');

 if object_id('dbo.f_fechaCadena') is not null
  drop function dbo.f_fechaCadena;

 create function f_fechaCadena
 (@fecha varchar(25))
  returns varchar(25)
  as
  begin
    declare @nombre varchar(25)
    set @nombre='Fecha inválida'   
    if (isdate(@fecha)=1)
    begin
      set @fecha=cast(@fecha as datetime)
      set @nombre=
      case datename(month,@fecha)
       when 'January' then 'Enero'
       when 'February' then 'Febrero'
       when 'March' then 'Marzo'
       when 'April' then 'Abril'
       when 'May' then 'Mayo'
       when 'June' then 'Junio'
       when 'July' then 'Julio'
       when 'August' then 'Agosto'
       when 'September' then 'Setiembre'
       when 'October' then 'Octubre'
       when 'November' then 'Noviembre'
       when 'December' then 'Diciembre'
      end--case
      set @nombre=rtrim(cast(datepart(day,@fecha) as char(2)))+' de '+@nombre
      set @nombre=@nombre+' de '+ rtrim(cast(datepart(year,@fecha)as char(4)))
    end--si es una fecha válida
    return @nombre
 end;

 select nombre, dbo.f_fechaCadena(fechaingreso) as ingreso from empleados;

 select dbo.f_fechaCadena(getdate());


--concepto# 136

create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(6,2)
 );

 insert into libros values('Uno','Richard Bach','Planeta',15);
 insert into libros values('Ilusiones','Richard Bach','Planeta',10);
 insert into libros values('El aleph','Borges','Emece',25);
 insert into libros values('Aprenda PHP','Mario Molina','Siglo XXI',55);
 insert into libros values('Alicia en el pais','Lewis Carroll','Paidos',35);
 insert into libros values('Matematica estas ahi','Paenza','Nuevo siglo',25);

 if object_id('f_ofertas') is not null
  drop function f_ofertas; 

 create function f_ofertas
 (@minimo decimal(6,2)
 )
 returns @ofertas table-- nombre de la tabla
 --formato de la tabla
 (codigo int,
  titulo varchar(40),
  autor varchar(30),
  precio decimal(6,2)
 )
 as
 begin
   insert @ofertas
    select codigo,titulo,autor,precio
    from libros
    where precio<@minimo
   return
 end;

 select *from f_ofertas(30);

 select l.titulo,l.autor,l.editorial
  from libros as l
  join dbo.f_ofertas(25) as o
  on l.codigo=o.codigo
  where l.autor='Richard Bach';

 select titulo,precio from f_ofertas(40)
  where autor like '%B%';

 if object_id('f_listadolibros') is not null
  drop function f_listadolibros; 

 create function f_listadolibros
 (@opcion varchar(10)
 )
 returns @listado table
 (titulo varchar(40),
 detalles varchar(60)
 )
 as 
 begin
  if @opcion not in ('autor','editorial')
    set @opcion='autor'
  if @opcion='editorial'
   insert @listado 
    select titulo,
   (editorial+'-'+autor) from libros
   order by 2
  else
    if @opcion='autor'
     insert @listado
     select titulo,
     (autor+'-'+editorial) from libros  
     order by 2
  return
end;

 select *from dbo.f_listadolibros('autor');

 select *from dbo.f_listadolibros('editorial');

 select *from dbo.f_listadolibros('precio');

--concepto # 137

create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20)
 );

 insert into libros values('Uno','Richard Bach','Planeta');
 insert into libros values('El aleph','Borges','Emece');
 insert into libros values('Ilusiones','Richard Bach','Planeta');
 insert into libros values('Aprenda PHP','Mario Molina','Nuevo siglo');
 insert into libros values('Matematica estas ahi','Paenza','Nuevo siglo');

 if object_id('f_libros') is not null
  drop function f_libros;

 create function f_libros
 (@autor varchar(30)='Borges')
 returns table
 as
 return (
  select titulo,editorial
  from libros
  where autor like '%'+@autor+'%'
 );

 select *from f_libros('Bach');

 if object_id('f_libros_autoreditorial') is not null
  drop function f_libros_autoreditorial;

 create function f_libros_autoreditorial
 (@autor varchar(30)='Borges',
 @editorial varchar(20)='Emece')
 returns table
 as
 return (
  select titulo,autor,editorial
  from libros
  where autor like '%'+@autor+'%' and
  editorial like '%'+@editorial+'%'
 );

 select *from f_libros_autoreditorial('','Nuevo siglo');

 select *from f_libros_autoreditorial(default,default);
 
 
 
  
  