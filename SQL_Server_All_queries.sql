                       --SQL Server All about it INFORMATICONFIG

-- Channel : https://www.youtube.com/watch?v=SYRsyAoN8BI&list=PL2Z95CSZ1N4EW0PvNhd4ySZisgBrJjSW2

/* *************************Video 1: Introduccion 
SQL significa Structured Query Language (Lenguaje de Consulta Estructurado).

Es el lenguaje que utilizamos para trabajar con bases de datos relacionales: 
consultar datos, insertarlos, modificarlos, eliminarlos, crear tablas, etc
*/


--*************************Video 2: INSTALACION BASE DE DATOS Y MANAGMENT STUDIO 19

--*************************Video 3: EXPLORACION MANAGMENT STUDIO

--*************************Video 4:CREAR, RENOMBRAR Y BORRAR UNA BASE DE DATOS

--creacion de base de dato
CREATE DATABASE Prueba2;
--borrar base de datos
DROP DATABASE Prueba;
--para ver las bases de datos creada en mi sistema 
SELECT * FROM SYS.DATABASES;
--Modificar el nombre de la base de dato
ALTER DATABASE Prueba2 MODIFY NAME = Prueba;


--*************************Video 5: TIPOS DE DATOS
CHAR -- Almacena tipo de datos de ancho fijo
VARCHAR -- almacena tipo de datos alfanumericos de ancho variables 
TEXT -- almacena tipos de datos texto.
NCHAR -- almacena tipo de datos de ancho fijo
NVARCHAR -- almacena tipo de datos alfanumericos de ancho variable. 
BIT -- almacena valores de 1 y 0
INT --almacena valores entre -2,147,483,648 y 2,147,483,648 
BIGINT -- almacena valores entre -9,223,372,036,854,775,808 y 9,223,372,036,854,775,808.
DECIMAL -- almacena valores entre -10^38 + 1 to 10^38-1.
NUMERIC -- almacena valores entre -10^38 + 1 to 10^38-1.
MONEY -- almacena valores entre -9,223,372,036,854,775,808 y 9,223,372,036,854,775,808.
FLOAT -- almacena valores entre -1.79E + 308 to 1.79E + 308

--*************************Video 6: TABLAS, crear esquema...



USE Prueba -- usar a la base de datos Prueba

GO -- ir para crear el esquema 

CREATE SCHEMA DE;

GO

-- crea una tabla 
CREATE TABLE [Prueba].[DE].[Empleados](
idEmpleado INT,
Nombre VARCHAR(20),
Apellido VARCHAR(30),
Edad INT, 
Telefono NUMERIC(10),
Direccion VARCHAR(100),
Fecha_nacimiento DATE,
Salario DECIMAL (18,2),
Activo CHAR(2)
)

-- Eliminar tabla y Esquema
DROP TABLE [Prueba].[DE].[Empleados]
DROP SCHEMA DE


-- Para verificar los schemas existentes
GO

SELECT 
    name AS SchemaName,
    schema_id
FROM sys.schemas
ORDER BY name;


--*************************Video 7: TABLAS, INSERTAR REGISTROS

--para ver los detalles de mi tabla: 
EXEC sp_help '[Prueba].[DE].[Empleados]'

-- Insertar valotes a una tabla
INSERT INTO [DE].[Empleados] VALUES(
1,'Alan','Gomera',29,123456789,'Calle primera #1','1997-04-19',54000.00, 'SI','M')

INSERT INTO [DE].[Empleados] VALUES(
2,'Luis','Pablo',27,123456789,'Calle primera #2','1999-02-22',54000.00, 'NO')

SELECT * FROM [Prueba].[DE].[Empleados]


--*************************Video 8: COMO RENOMBRAR Y ELIMINAR TABLAS

--Para ver cuales tablas entan en nuestra base de dato que estamos trabajando/usando
SELECT * FROM SYS.TABLES

-- Renombrar una tabla 
EXEC SP_RENAME 'Empleados', 'Usuario'

--*************************Video 9: CLAUSULA WHERE

--Insertar mis registro pata trabajar con mi proceso de aprendizaje
  insert into [Prueba].[DE].[Empleados] values (1, 'Juan', 'Pérez', 25, 1234567890, 'Calle 123', '1978-06-15', 2500.00, 'SI');
  insert into [Prueba].[DE].[Empleados] values (2, 'María', 'López', 30, 9876543210, 'Avenida 456', '1980-03-20', 3000.00, 'SI');
  insert into [Prueba].[DE].[Empleados] values (3, 'Carlos', 'González', 28, 5555555555, 'Calle 789', '1979-11-10', 2800.00, 'SI');
  insert into [Prueba].[DE].[Empleados] values (4, 'Ana', 'Martínez', 35, 9998887770, 'Avenida 012', '1977-09-05', 3500.00, 'SI');
  insert into [Prueba].[DE].[Empleados] values (5, 'Pedro', 'Sánchez', 22, 1112223334, 'Calle 567', '1980-01-25', 2000.00, 'SI');
  insert into [Prueba].[DE].[Empleados] values (6, 'Laura', 'Ramírez', 31, 4444444444, 'Avenida 890', '1978-07-12', 3200.00, 'SI');
  insert into [Prueba].[DE].[Empleados] values (7, 'Luis', 'Torres', 29, 7777777777, 'Calle 345', '1979-04-18', 2700.00, 'SI');
  insert into [Prueba].[DE].[Empleados] values (8, 'Carmen', 'Hernández', 27, 6666666666, 'Avenida 678', '1980-02-03', 2600.00, 'SI');
  insert into [Prueba].[DE].[Empleados] values (9, 'Jorge', 'García', 33, 2223334445, 'Calle 901', '1977-12-27', 3400.00, 'SI');
  insert into [Prueba].[DE].[Empleados] values (10, 'Silvia', 'Lara', 24, 8889990000, 'Avenida 234', '1980-05-09', 2200.00, 'SI');
  insert into [Prueba].[DE].[Empleados] values (11, 'Roberto', 'Rojas', 26, 3334445556, 'Calle 567', '1979-02-14', 2400.00, 'SI');
  insert into [Prueba].[DE].[Empleados] values (12, 'Patricia', 'Cruz', 32, 2223334444, 'Avenida 890', '1978-08-21', 3100.00, 'SI');
  insert into [Prueba].[DE].[Empleados] values (13, 'Daniel', 'Gómez', 29, 5556667778, 'Calle 123', '1979-06-06', 2800.00, 'SI');
  insert into [Prueba].[DE].[Empleados] values (14, 'Sara', 'Vargas', 34, 6667778889, 'Avenida 456', '1977-04-01', 3300.00, 'SI');
  insert into [Prueba].[DE].[Empleados] values (15, 'Hugo', 'Orozco', 23, 9998887776, 'Calle 789', '1980-03-16', 2100.00, 'SI');

  -- para filtrar el nombre de jorge 
  SELECT * FROM [Prueba].[DE].[Empleados]
  WHERE edad = 29



  --*************************Video 10: TRUNCATE TABLE, DELETE FROM
  
  -- Eliminar todos los registro sin eliminar mi tabla
    TRUNCATE TABLE [Prueba].[DE].[Empleados]

 -- para eliminar registro, OJO importante usar la clausura WHERE  para no eliminar todo los registro de la tabla

 DELETE FROM [Prueba].[DE].[Empleados] WHERE  [idEmpleado] = 3

   --*************************Video 11: ALTER TABLE - ADD - DROP

   --para alterar una tabla... agregar una columna
   ALTER TABLE [Prueba].[DE].[Empleados] ADD [Sexo] CHAR(1);

   -- PARA eliminar una columna 
   ALTER TABLE [Prueba].[DE].[Empleados] DROP COLUMN [Sexo]

  --*************************Video 12: OPERADORES RELACIONALES

 -- signo = compara si los valores son iguales.
 -- signo <>, !=, compara si los valores son diferente
 -- signo >  Mayor que
 -- signo <  menor que 
 -- signo >= mayor o igual que
 -- signo <= menor o igual que

 SELECT * FROM [Prueba].[DE].[Empleados] WHERE IDEMPLEADO = 3

 SELECT * FROM [Prueba].[DE].[Empleados] WHERE edad != 25 -- trae todo lo diferente a 25
 SELECT * FROM [Prueba].[DE].[Empleados] WHERE salario > 2000 -- empleado con salario mayor a 2,000  


   --*************************Video 13: COMENTARIOS , LINEAS DE CODIGO

   -- duble guion es un cometario de una linea '--'

   -- para varias lineas de codigos es /**/
   /* Esto es un comentario de 
   varias lineas*/ 


   --*************************Video 14: CAMBIAR LOS NOMBRES DE LOS CAMPOS/columnas DE UNA TABLA

   EXEC sp_rename 'Empleados.idEmpleado', 'id' --Ojo si el nombre de la columna esta enlacado a otro objeto puede romper algo

   --*************************Video 15: CLAUSULA UPDATE
   --para actualizar registros

   UPDATE [Prueba].[DE].[Empleados] SET [Activo] = 'NO'
   WHERE [idEmpleado] in(1,3,5,7,9)

   --*************************Video 16: INSERTAR DATOS DESDE OTRA TABLA

   CREATE TABLE Salarios(
   nombre VARCHAR(20),
   Apellido VARCHAR(30),
   Salario DECIMAL (18,2))

  -- para ingresar informacion a esa tabla salario que venga de la tabla Empleados

  INSERT INTO Salarios(nombre, apellido, salario)
  Select nombre, apellido, salario FROM [Prueba].[DE].[Empleados] -- tambien le puedo poner filtro 
  WHERE salario > 2500
  SELECT * FROM Salarios


  --*************************Video 17: SELECT TOP(Entro motores de base de datos se usa limit al final), SELECT PERCENT
   SELECT TOP(3) * FROM salarios
   SELECT top 50 percent * FROM salarios

   --*************************Video 18:  NULL, IS NOT NULL
   --En SQL, NULL significa que un valor es desconocido, no existe o no fue proporcionado.

   CREATE TABLE Clientes(
   idcliente INT,
   Nombre VARCHAR(20),
   Apellido VARCHAR(30),
   Direccion VARCHAR(100)
   );

   -- Un insert para la tabla Cliente: 

insert into clientes values(1,'Juan','Perez','Calle A, Ciudad');
insert into clientes values(2, 'Maria', NULL, 'Calle B Ciudad');
insert into clientes values(3,'Carlos','Lopez', NULL);
insert into clientes values(4, NULL, 'Rodriguez', 'Calle D Ciudad');
insert into clientes values(5,'Pedro', NULL, NULL);
insert into clientes values(6,NULL ,NULL,  'Calle D Ciudad');
insert into clientes values(7,'Luis','Gonzales', 'Calle G Ciudad');
insert into clientes values(8, NULL, 'Díaz', NULL);
insert into clientes values(9,'Jorge', NULL,' Calle I Ciudad');
insert into clientes values(10,NULL, NULL, NULL);
insert into clientes values(11,'Ana', 'Hernandez', 'Calle M Ciudad');
insert into clientes values(12,NULL, NULL, 'Calle M Ciudad'); 
insert into clientes values(13,NULL, 'Sanchez', NULL);
insert into clientes values(14,'Sofía', NULL, 'Calle M Ciudad');
insert into clientes values(15,NULL, NULL,  'Calle P Ciudad');
insert into clientes values(16,'Daniel', 'Garcia', NULL);
insert into clientes values(17,'Martha','Fernandez', NULL);
insert into clientes values(18,NULL, 'Martinez',  'Calle Q Ciudad');
insert into clientes values(19,'Pablo', NULL, NULL);
insert into clientes values(20, NULL, 'Lopez', 'Calle S Ciudad');

--Consultar valores null
SELECT * FROM CLIENTES WHERE NOMBRE IS NULL

--Consultar valores que no sean null
SELECT * FROM CLIENTES WHERE NOMBRE IS NOT NULL

  --*************************Video 19: CREATE TABLE, NULL NOT NULL, INSERT 

  DROP TABLE CLIENTES

  -- CREAR UNA TABLA QUE NO ACEPTE VALORES NULL
   CREATE TABLE Clientes(
   idcliente INT NOT NULL,
   Nombre VARCHAR(20) NOT NULL,
   Apellido VARCHAR(30) NOT NULL,
   Direccion VARCHAR(100) NOT NULL,
   telefono NUMERIC(10) NULL,
   email VARCHAR(50) NULL
   );

   INSERT INTO CLIENTES VALUES(1,'ALAN','Gomera','calle primera #1',123456789,'ALAN@gmail.com')
   INSERT INTO CLIENTES VALUES(1,'Luis','Perra','calle primera #1',123456789,NULL)
   -- en esta caso no admite valor null para la columna idcliente 
   INSERT INTO CLIENTES VALUES(NULL,'Luis','Perra','calle primera #1',123456789,NULL)

   SELECT * FROM CLIENTES


    --*************************Video 20: CONSTRAINTS - PRIMARY KEY

    -- Primary key, solo puede ser una, no acepta Null, y no se duplica el valor 

    -- creacion de una tabla con PK
    CREATE TABLE Personas(
    idpersona INT PRIMARY KEY,
    Nombre VARCHAR(10) NOT NULL,
    Edad INT );

    --Insertando valores
    INSERT INTO Personas VALUES (1,'ALAN',29)
    INSERT INTO Personas VALUES (1,'Luis',6) -- Si ejecuto salta error porque estoy repitiendo el valor 1 en el PK

    SELECT * FROM PERSONAS
    DROP TABLE PERSONAS

    -- otra forma de configurar una PK en una tabla

    CREATE TABLE Personas(
    idpersona INT,
    Nombre VARCHAR(10) NOT NULL,
    Edad INT,
    PRIMARY KEY (idpersona));

    -- otra forma de configurar una PK en una tabla agregando un nombre
     CREATE TABLE Personas(
    idpersona INT,
    Nombre VARCHAR(10) NOT NULL,
    Edad INT,
    CONSTRAINT PK_ENLACE_PERSONA PRIMARY KEY (idpersona));

    -- en caso de que la tabla ya este creado se puede hacer un alte para agregar el PK
    -- Ojo la columna debe estar como NOT NULL 

    ALTER TABLE Personas ADD CONSTRAINT PK_ENLACE_PERSONA PRIMARY KEY (idpersona)

    -- Eliminar una llave primaria Ojo es importante saber el nombre 

    ALTER TABLE Personas DROP CONSTRAINT PK_ENLACE_PERSONA



   --*************************Video 21: CONSTRAINTS - UNIQUE

   -- Unique tiene similitud con PK, en este caso UNIQUE se pueden utilizar varios 
   -- en un tabla y admite NULL

   -- Creacion de tabla con UNIQUE

    CREATE TABLE Personas(
    idpersona INT NOT NULL UNIQUE,
    Nombre VARCHAR(10) NOT NULL,
    Edad INT );


  -- otra forma de configurar una PK en una tabla agregando un nombre
    CREATE TABLE Personas(
    idpersona INT NOT NULL,
    Nombre VARCHAR(10) NOT NULL,
    Edad INT,
    CONSTRAINT UQ_Idpersona UNIQUE (idpersona));


    --*************************Video 22: CONSTRAINTS - CHECK
    -- Check: solo permite los valores segun la regla especificada

    --Creando una tabla con el constraint check

    CREATE TABLE Personas(
    idpersona INT NOT NULL,
    Nombre VARCHAR(10) NOT NULL,
    Edad INT,
    CONSTRAINT CK_EDAD CHECK (edad >=18) -- solo permite edad mayor o igual  a 18 ahah
    );


   --*************************Video 23: CONSTRAINTS - DEFAULT
   -- en caso de que estemos insertando data a una tabla y se nos escape agregar 
   -- registro a una columna le podemos poner un valor determinado 

    CREATE TABLE Personas(
    idpersona INT NOT NULL,
    Nombre VARCHAR(10) NOT NULL,
    Edad INT NOT NULL,
    Ciudad VARCHAR(50) DEFAULT 'No tiene'); -- cuando en la columna ciudad no se agregue valor por fefecto sera 'No tiene'


    INSERT INTO Personas VALUES (1,'ALAN',29,DEFAULT)

    SELECT * FROM Personas
    DROP TABLE Personas

    ALTER TABLE Personas ADD CONSTRAINT DF_ciudad DEFAULT 'No tiene' FOR ciudad;

     --*************************************************************Video 24: CONSTRAINTS - IDENTITY
     -- generalmente se usa para crear valores unicos de manera ascendentes 

     CREATE TABLE Libros(
     Codigo INT IDENTITY, -- entre parentesis le puedo poner en el numero a empzar e de cuenta en cuanta a incrementa
     Titulo VARCHAR(50) NOT NULL, -- ejemplo (10,1) IDENTITY empieza en 10 y aumenta de 1 en 1
     Autor VARCHAR(50) NOT NULL);

     INSERT INTO Libros VALUES ('DE for Everything','Alan Gomera')

     SELECT * FROM [Prueba].[dbo].[Libros]

     DELETE FROM LIBROS WHERE codigo = 2

     -- para ver mi valor inicial de mi campo IDENTITY
     Select IDENT_SEED('[Prueba].[dbo].[Libros]')
    -- para ver tango de incremento de cada valor de mi campo IDENTITY
     SELECT IDENT_INCR('[Prueba].[dbo].[Libros]') AS VALOR_DE_INCREMENTO
     -- Activar la regla 
     SET IDENTITY_INSERT [Prueba].[dbo].[Libros] ON; -- desactivar OFF



    --**************************************************************8Video 25: CONSTRAINTS - FOREIGN KEY
    -- se usa para prevenir danos en las relaciones de registros entre tablas. 

    Drop table [Prueba].[dbo].[clientes] 
   

    CREATE TABLE [Prueba].[dbo].[clientes](
    id_cliente int,
    nombre VARCHAR(20) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    edad int not null
    constraint PK_clientes PRIMARY KEY (id_cliente)
    );

    CREATE TABLE [Prueba].[dbo].[ordenes](
    id_orden int NOT NULL,
    articulo VARCHAR(50) NOT NULL,
    id_cliente INT
    CONSTRAINT FK_ordebes_clients FOREIGN KEY REFERENCES [Prueba].[dbo].[clientes](id_cliente)
    -- Esta tabla de ordenes esta enlazada via foreign key con la tabla clientes
    );

    INSERT INTO [Prueba].[dbo].[clientes] values(1,'Alan','Gomera',29)
    INSERT INTO [Prueba].[dbo].[ordenes] values(1,'Curso de DE',1) -- para que se inserte tiene que coincidir con id_cliente de ambas tablas
    -- una vez el constraint seteado no puedo borrar el registro de la table que contiene el PK hasta no ser borrado en la FK
    Select * from [Prueba].[dbo].[clientes] 
    Select * from [Prueba].[dbo].[ordenes] 



   --**********************************************************Video 26: VISTAS, (VIEWS)

  -- una vista es una tabla virtual basada desde una sonsulta, se puede agregar funciones

 Drop table [Prueba].[dbo].[clientes] 

 CREATE TABLE [Prueba].[dbo].[clientes]  (
    id INT,
    nombre VARCHAR(30),
    apellido VARCHAR(30),
    direccion VARCHAR(50),
    edad INT,
    telefono VARCHAR(20),
    fecha_nacimiento DATE
);
--insertar estos registros en la tabla clientes
    insert into [Prueba].[dbo].[clientes]  values(1, 'Juan', 'Perez', 'Calle 123', 25, '555-1234', '2000-01-01');
    insert into [Prueba].[dbo].[clientes]  values(2, 'Maria', 'Lopez', 'Avenida 456', 30, '555-5678', '1995-05-10');
    insert into [Prueba].[dbo].[clientes]  values(3, 'Carlos', 'Gomez', 'Carrera 789', 40, '555-9012', '1983-12-15');
    insert into [Prueba].[dbo].[clientes]  values(4, 'Ana', 'Rodriguez', 'Plaza 789', 32, '555-4321', '1989-08-20');
    insert into [Prueba].[dbo].[clientes]  values(5, 'Pedro', 'Martinez', 'Avenida 987', 45, '555-6789', '1978-03-05');
    insert into [Prueba].[dbo].[clientes]  values(6, 'Laura', 'Sanchez', 'Calle 456', 27, '555-0987', '1996-11-12');
    insert into [Prueba].[dbo].[clientes]  values(7, 'Luis', 'Hernandez', 'Calle 654', 38, '555-3456', '1984-07-25');
    insert into [Prueba].[dbo].[clientes]  values(8, 'Carolina', 'Torres', 'Avenida 321', 29, '555-8765', '1992-09-03');
    insert into [Prueba].[dbo].[clientes]  values(9, 'Diego', 'Gonzalez', 'Carrera 246', 42, '555-6543', '1979-06-18');
    insert into [Prueba].[dbo].[clientes]  values(10, 'Sofia', 'Rojas', 'Plaza 135', 31, '555-2109', '1990-04-14');
    insert into [Prueba].[dbo].[clientes]  values(11, 'Andres', 'Fernandez', 'Calle 789', 37, '555-1092', '1985-02-28');
    insert into [Prueba].[dbo].[clientes]  values(12, 'Valentina', 'Morales', 'Calle 246', 26, '555-5432', '1997-10-23');
    insert into [Prueba].[dbo].[clientes]  values(13, 'Roberto', 'Gutierrez', 'Avenida 753', 43, '555-4321', '1978-12-09');
    insert into [Prueba].[dbo].[clientes]  values(14, 'Daniela', 'Navarro', 'Plaza 159', 33, '555-6789', '1988-06-14');
    insert into [Prueba].[dbo].[clientes]  values(15, 'Jorge', 'Paz', 'Carrera 357', 44, '555-0987', '1977-01-30');
    insert into [Prueba].[dbo].[clientes]  values(16, 'Catalina', 'Silva', 'Calle 852', 28, '555-3456', '1995-11-05');
    insert into [Prueba].[dbo].[clientes]  values(17, 'Gonzalo', 'Luna', 'Avenida 951', 39, '555-8765', '1982-08-12');
    insert into [Prueba].[dbo].[clientes]  values(18, 'Camila', 'Vargas', 'Carrera 753', 30, '555-6543', '1993-03-28');
    insert into [Prueba].[dbo].[clientes]  values(19, 'Felipe', 'Cortes', 'Calle 357', 35, '555-2109', '1986-09-13');
    insert into [Prueba].[dbo].[clientes]  values(20, 'Marcela', 'Ortega', 'Plaza 852', 37, '555-1092', '1985-02-28');

    Select * from [Prueba].[dbo].[clientes] 

    -- creando mi primera vista, ojos la vista queda guardada dentro de la base de datos hasta que alguien la elimine
CREATE VIEW clien_edad_mayor_25
AS
SELECT * FROM [Prueba].[dbo].[clientes] 
WHERE edad >= 35

Select * FROM cliente__mayor_35

--Cambiar nombre a view
EXEC sp_rename 'clien_edad_mayor_25','cliente__mayor_35'



   --*********************************************************Video 27: INDICES, (INDEX)

   -- se usan para mejorar el rendimiento de nuestras consultas
   /* Tipos:
   Clustered: definen el orden de los datos
   nonclustered: no define dicho orden
   */

   SELECT * FROM [Prueba].[DE].[Empleados]

   CREATE CLUSTERED INDEX I_idEmpleado ON [Prueba].[DE].[Empleados](idEmpleado)
   -- para cambiar el nombre de index 
   EXEC SP_RENAME '[Empleados].I_idEmpleado','I_id','INDEX'
   -- para eliminar INDEX
   DROP INDEX [I_idEmpleado] ON [Prueba].[DE].[Empleados]


--**********************************************************Video 28: DISTINCT (registros duplicados)


Select * from [Prueba].[dbo].[clientes] 
Select distinct [edad] from [Prueba].[dbo].[clientes] 
SELECT COUNT(DISTINCT [edad]) AS edad_distintas FROM [Prueba].[dbo].[clientes] 

--**********************************************************Video 29: ALIAS Y CONCATENACION DE REGISTROS

Select  
[idEmpleado] AS [cedula]
,[nombre]+' '+[Apellido] AS [Nombre_completo] -- concat con +
,CONCAT([nombre],' ',[Apellido],' ',[edad]) AS [Concat_Nombre_completo] -- concat con + con la function CONCAT
,[nombre]+' Edad '+ CAST([edad] AS Varchar(3)) -- concatenar diferente tipos de datos
FROM [Prueba].[DE].[Empleados]


--**********************************************************Video 30: OPERADORES MATEMATICOS, COLUMNAS CALCULADAS

CREATE TABLE [Prueba].[dbo].[articulos] (
  codigo INT IDENTITY,
  nombre VARCHAR(30),
  descripcion VARCHAR(100),
  precio SMALLMONEY,
  cantidad INT DEFAULT 0,
  vendidos INT DEFAULT 0,
  PRIMARY KEY (codigo)
);

  insert into [Prueba].[dbo].[articulos] values('Laptop Acer', 'Portátil con procesador i5, 8GB RAM, 256GB SSD', 899.99, 10, 2);
  insert into [Prueba].[dbo].[articulos] values('Monitor Samsung', 'Monitor LED de 24 pulgadas con resolución Full HD', 179.99, 20, 5);
  insert into [Prueba].[dbo].[articulos] values('Impresora HP', 'Impresora láser multifuncional con conexión Wi-Fi', 249.99, 15, 3);
  insert into [Prueba].[dbo].[articulos] values('Teclado Logitech', 'Teclado inalámbrico con retroiluminación y teclas programables', 59.99, 30, 8);
  insert into [Prueba].[dbo].[articulos] values('Mouse Microsoft', 'Mouse óptico ergonómico con 6 botones programables', 19.99, 40, 12);
  insert into [Prueba].[dbo].[articulos] values('Disco Duro Externo', 'Almacenamiento portátil de 1TB con conexión USB 3.0', 79.99, 25, 6);
  insert into [Prueba].[dbo].[articulos] values('Laptop HP', 'Portátil con procesador i7, 16GB RAM, 512GB SSD', 1299.99, 8, 1);
  insert into [Prueba].[dbo].[articulos] values('Monitor LG', 'Monitor LED de 27 pulgadas con resolución 4K', 299.99, 12, 3);
  insert into [Prueba].[dbo].[articulos] values('Impresora Epson', 'Impresora de inyección de tinta con escáner incorporado', 159.99, 18, 4);
  insert into [Prueba].[dbo].[articulos] values('Teclado Razer', 'Teclado mecánico con iluminación personalizable', 99.99, 22, 7);
  insert into [Prueba].[dbo].[articulos] values('Mouse Logitech', 'Mouse inalámbrico con sensor de alta precisión', 29.99, 35, 10);
  insert into [Prueba].[dbo].[articulos] values('Disco Duro SSD', 'Unidad de estado sólido de 500GB con velocidad de transferencia rápida', 109.99, 30, 9);
  insert into [Prueba].[dbo].[articulos] values('Laptop Dell', 'Portátil con procesador i7, 16GB RAM, 1TB HDD', 1199.99, 6, 1);
  insert into [Prueba].[dbo].[articulos] values('Monitor BenQ', 'Monitor LED de 32 pulgadas con tecnología HDR', 399.99, 9, 2);
  insert into [Prueba].[dbo].[articulos] values('Impresora Canon', 'Impresora láser en color de alta velocidad', 199.99, 14, 4);
  insert into [Prueba].[dbo].[articulos] values('Teclado Corsair', 'Teclado mecánico para juegos con retroiluminación RGB', 79.99, 28, 9);
  insert into [Prueba].[dbo].[articulos] values('Mouse Gaming', 'Mouse para juegos con botones programables y DPI ajustable', 49.99, 42, 15);
  insert into [Prueba].[dbo].[articulos] values('Disco Duro Externo SSD', 'Almacenamiento portátil de 2TB con conexión USB-C', 159.99, 20, 8);
  insert into [Prueba].[dbo].[articulos] values('Laptop Lenovo', 'Portátil con procesador Ryzen 7, 12GB RAM, 512GB SSD', 999.99, 10, 2);
  insert into [Prueba].[dbo].[articulos] values('Monitor ASUS', 'Monitor LED de 29 pulgadas ultrapanorámico', 249.99, 16, 3);


  SELECT * FROM [Prueba].[dbo].[articulos] 

  Select 
  nombre, 
  descripcion,
  precio,
  precio + (precio * 0.1) as [nuevo precio mas 10%],
  precio * cantidad AS total_vendido,
  cantidad - vendidos as exostencia 
  FROM [Prueba].[dbo].[articulos] 
 
 
 --**********************************************************Video 31: COMO CREAR ESQUEMAS

 CREATE SCHEMA Cobros

 CREATE TABLE [Prueba].[Ventas].[articulos] (
 idcliente int,
 nombre VARCHAR(20),
 edad int)


  --**********************************************************Video 32: RESTAURAR UNA BASE DE DATOS solo un video

  --**********************************************************Video 33: ORDER BY

    SELECT *FROM [Prueba].[dbo].[articulos] order by cantidad, vendidos desc -- tambien 'asc' viene por defecto
    SELECT *FROM [Prueba].[dbo].[articulos] order by cantidad asc

--**********************************************************Video 34: funciones MAX, MIN 
  SELECT MAX(PRECIO) AS MAX_PRECIO,
  MIN(precio) AS MIN_precpio
  FROM [Prueba].[dbo].[articulos]

--**********************************************************Video 35: FUNCIONES DE AGRUPACION: COUNT, SUM, AVG

SELECT COUNT(*) AS cantidad FROM [Prueba].[dbo].[clientes] -- contidad de registros

SELECT COUNT(edad) AS cantidad_edad_menor_30 FROM [Prueba].[dbo].[clientes] 
where edad < 30

SELECT SUM(DISTINCT edad) FROM [Prueba].[dbo].[clientes] -- suma las edades dostomtas


--**********************************************************Video 36: OPERADORES: AND, OR Y NOT

SELECT * FROM [Prueba].[dbo].[clientes] 
WHERE edad > 30 AND id < 12  -- en caso de usar NOT se agrega desoyes de where, ejempo "WHERE NOT edad"

--**********************************************************Video 37:CLAUSULA BETWEEN 
SELECT * FROM [Prueba].[dbo].[clientes] 
WHERE edad BETWEEN 25 AND 30 -- seria lo mismo que "WHERE edad IN(25,26,27,28,29,30)"

--**********************************************************Video 38:OPERADORES: LIKE Y NOT LIKE
SELECT * FROM [Prueba].[dbo].[clientes] 
WHERE NOMBRE LIKE 'a%'-- todo los nombres que empiezan con ojo (Puedo usar NOT LIKE)

SELECT * FROM [Prueba].[dbo].[clientes] 
WHERE NOMBRE LIKE '%a'-- todo los nombres que terminan con a 

SELECT * FROM [Prueba].[dbo].[clientes] 
WHERE NOMBRE LIKE '%a%' -- todo lo que tiene letra a en cualquir parte de registro

SELECT * FROM [Prueba].[dbo].[clientes] 
WHERE NOMBRE LIKE '_a%' -- con un underscore'_' todo lo que tiene "a" como segundo caracter


--**********************************************************Video 39: ENLACES: INNER JOIN

--INNER JOIN: Returns records that matching values in both tables

DROP TABLE if exists clientes

create table clientes (
idcliente int not null primary key,
nombre varchar(20) not null,
apellido varchar(30) not null,
direccion varchar(100) not null,
ciudad varchar(50) not null,
telefono numeric(10) null,
);

INSERT INTO clientes (idcliente, nombre, apellido, direccion, ciudad, telefono)
VALUES
(1, 'Juan', 'Pérez', 'Calle 123', 'Ciudad A', 1234567890),
(2, 'María', 'González', 'Avenida 456', 'Ciudad B', 2345678901),
(3, 'Pedro', 'López', 'Calle Principal', 'Ciudad C', 3456789012),
(4, 'Laura', 'Martínez', 'Avenida Central', 'Ciudad A', 4567890123),
(5, 'Carlos', 'Hernández', 'Calle 789', 'Ciudad B', 5678901234),
(6, 'Ana', 'Sánchez', 'Avenida Secundaria', 'Ciudad C', 6789012345),
(7, 'Luis', 'Rodríguez', 'Calle 321', 'Ciudad A', 7890123456),
(8, 'Sofía', 'Fernández', 'Avenida 654', 'Ciudad B', 8901234567),
(9, 'Andrés', 'Gómez', 'Calle Secundaria', 'Ciudad C', 9012345678),
(10, 'Marta', 'Torres', 'Avenida Principal', 'Ciudad A', 1234567890),
(11, 'Alejandro', 'Vargas', 'Calle Central', 'Ciudad B', 2345678901),
(12, 'Patricia', 'Ortega', 'Avenida 123', 'Ciudad C', 3456789012),
(13, 'Roberto', 'Jiménez', 'Calle 456', 'Ciudad A', 4567890123),
(14, 'Elena', 'Ruíz', 'Avenida 789', 'Ciudad B', 5678901234),
(15, 'Javier', 'Navarro', 'Calle Secundaria', 'Ciudad C', 6789012345),
(16, 'Carolina', 'Lara', 'Avenida 321', 'Ciudad A', 7890123456),
(17, 'Diego', 'Silva', 'Calle 654', 'Ciudad B', 8901234567),
(18, 'Lucía', 'Romero', 'Avenida Central', 'Ciudad C', 9012345678),
(19, 'Gabriel', 'Flores', 'Calle Principal', 'Ciudad A', 1234567890),
(20, 'Valentina', 'Mendoza', 'Avenida Secundaria', 'Ciudad B', 2345678901),
(21, 'Mario', 'López', 'Calle 789', 'Ciudad A', 3456789012),
(22, 'Camila', 'García', 'Avenida 456', 'Ciudad B', 4567890123),
(23, 'José', 'Hernández', 'Calle Principal', 'Ciudad C', 5678901234),
(24, 'Isabel', 'Rojas', 'Avenida Central', 'Ciudad A', 6789012345),
(25, 'Fernando', 'Gómez', 'Calle 123', 'Ciudad B', 7890123456),
(26, 'Ana', 'Lara', 'Avenida Secundaria', 'Ciudad C', 8901234567),
(27, 'Pedro', 'Fuentes', 'Calle 321', 'Ciudad A', 9012345678),
(28, 'Sara', 'Martínez', 'Avenida 654', 'Ciudad B', 1234567890),
(29, 'Gabriel', 'Sánchez', 'Calle Secundaria', 'Ciudad C', 2345678901),
(30, 'Valeria', 'Ortega', 'Avenida Principal', 'Ciudad A', 3456789012),
(31, 'Luisa', 'Vargas', 'Calle Central', 'Ciudad B', 4567890123),
(32, 'Daniel', 'Silva', 'Avenida 123', 'Ciudad C', 5678901234),
(33, 'Carolina', 'Torres', 'Calle 456', 'Ciudad A', 6789012345),
(34, 'Andrés', 'Guzmán', 'Avenida 789', 'Ciudad B', 7890123456),
(35, 'María', 'Romero', 'Calle Secundaria', 'Ciudad C', 8901234567),
(36, 'Alejandro', 'Mendoza', 'Avenida 321', 'Ciudad A', 9012345678),
(37, 'Valentina', 'Pérez', 'Calle 654', 'Ciudad B', 1234567890),
(38, 'Roberto', 'Fernández', 'Avenida Central', 'Ciudad C', 2345678901),
(39, 'Laura', 'González', 'Calle Principal', 'Ciudad A', 3456789012),
(40, 'Javier', 'Soto', 'Avenida Secundaria', 'Ciudad B', 4567890123);
Drop table if exists ordenes
create table ordenes(
id_orden int not null primary key,
idcliente int foreign key references clientes(idcliente),
fecha_orden date default getdate(),
id_vendedor int not null
);

insert into ordenes values(1, 1, '2020-01-12' ,1);
insert into ordenes values(2, 2, '2021-03-20', 2);
insert into ordenes values(3, 3, '2021-06-10', 3);
insert into ordenes values(4, 4, '2021-09-05', 4);
insert into ordenes values(5, 5, GETDATE(),5);
insert into ordenes values(6, 1, '2022-02-28', 1);
insert into ordenes values(7, 2, '2022-05-14', 2);
insert into ordenes values(8, 3, '2022-07-29', 3);
insert into ordenes values(9, 4, GETDATE(), 4);
insert into ordenes values(10, 5, '2022-12-23', 5);
insert into ordenes values(11, 1, '2023-02-14', 1);
insert into ordenes values(12, 2, '2023-04-30', 2);
insert into ordenes values(13, 3, GETDATE(), 3);
insert into ordenes values(14, 4, '2023-09-28', 4);
insert into ordenes values(15, 5, '2023-11-12', 5);
insert into ordenes values(16, 1, '2023-02-05', 1);
insert into ordenes values(17, 2, '2023-04-12', 2);
insert into ordenes values(18, 3, '2023-07-20', 3);
insert into ordenes values(19, 4, GETDATE(), 4);
insert into ordenes values(20, 5, '2023-12-30', 5);
insert into ordenes values(21, 1, '2021-01-15', 1);
insert into ordenes values(22, 2, '2021-03-20', 2);
insert into ordenes values(23, 3, '2021-06-10', 3);
insert into ordenes values(24, 4, '2021-09-05', 4);
insert into ordenes values(25, 5, GETDATE(), 5);
insert into ordenes values(26, 1, '2022-02-28', 1);
insert into ordenes values(27, 2, '2022-05-14', 2);
insert into ordenes values(28, 3, '2022-07-29', 3);
insert into ordenes values(29, 4, GETDATE(), 4);
insert into ordenes values(30, 5, '2022-12-23', 5);
insert into ordenes values(31, 1, '2023-02-14', 1);
insert into ordenes values(32, 2, '2023-04-30', 2);
insert into ordenes values(33, 3, GETDATE(), 3);
insert into ordenes values(34, 4, '2023-09-28', 4);
insert into ordenes values(35, 5, '2023-11-12', 5);
insert into ordenes values(36, 1, '2023-02-05', 1);
insert into ordenes values(37, 2, '2023-04-12', 2);
insert into ordenes values(38, 3, '2023-07-20', 3);
insert into ordenes values(39, 4, GETDATE(), 4);
insert into ordenes values(40, 5, '2023-12-30', 5);


SELECT * FROM [Prueba].[dbo].[clientes]
SELECT * FROM [Prueba].[dbo].[ordenes]

SELECT 
  T1.id_orden
 ,T2.nombre
 ,T2.apellido
 ,T2.direccion
 ,T1.fecha_orden
 ,T1.id_vendedor
FROM [Prueba].[dbo].[ordenes] as T1
INNER JOIN [Prueba].[dbo].[clientes] as T2 
ON T1.idcliente = T2.idcliente
where T1.id_vendedor = 1 -- lo puedo convinar con un WHERE


--**********************************************************Video 40: ENLACES: LEFT JOIN

--LEFT JOIN: retunes all records from the left table, and the matched records from the right table
--Ojo Left join is the first table selected

SELECT 
  T1.id_orden
 ,T2.nombre
 ,T2.apellido
 ,T2.direccion
 ,T1.fecha_orden
 ,T1.id_vendedor
FROM [Prueba].[dbo].[ordenes] as T1
LEFT JOIN [Prueba].[dbo].[clientes] as T2 
ON T1.idcliente = T2.idcliente 


--**********************************************************Video 41: ENLACES: RIGHT JOIN

--RIGHT JOIN: retunes all records from the RIGHT table, and the matched records from the LEFT table
--Ojo RIGHT join is the first table selected

SELECT 
  T1.id_orden
 ,T2.nombre
 ,T2.apellido
 ,T2.direccion
 ,T1.fecha_orden
 ,T1.id_vendedor
FROM [Prueba].[dbo].[ordenes] T1
RIGHT JOIN [Prueba].[dbo].[clientes] T2 
ON T1.idcliente = T2.idcliente 


-- puedo usar el FULL JOIN lo cual trae todos los registros de ambas tablas


--**********************************************************Video 42:CLAUSULA UNION 

/* La clusura UNION para Conbinar, 
   1_reglas las tablas tienen que tener el mismo numeros de columnas
   2_regla Ambas columnas deben tener el mismo tipo de datos
*/

DROP TABLE CLIENTES

CREATE TABLE clientes (
  idcliente INT PRIMARY KEY,
  nom_cliente VARCHAR(100),
  contacto VARCHAR(100),
  direccion VARCHAR(100),
  ciudad VARCHAR(100),
  codigo_postal VARCHAR(10),
  pais VARCHAR(50)
);


insert into clientes values(1, 'Juan Perez', 'Juan Perez', 'Calle Falsa 123', 'Ciudad Ficticia', '12345', 'Argentina');
insert into clientes values(2, 'Maria Lopez', 'Maria Lopez', 'Avenida Imaginaria 456', 'Otra Ciudad', '54321', 'México');
insert into clientes values(3, 'Carlos Ramirez', 'Carlos Ramirez', 'Carrera Inexistente 789', 'Ciudad Fantasma', '67890', 'Colombia');
insert into clientes values(4, 'Luisa Fernández', 'Luisa Fernández', 'Calle Sin Nombre 42', 'Ciudad Irreal', '24680', 'Perú');
insert into clientes values(5, 'Roberto Castro', 'Roberto Castro', 'Paseo de los Sueños 789', 'Ciudad de Ensueño', '98765', 'Chile');
  insert into clientes values(6, 'Ana Gómez', 'Ana Gómez', 'Avenida de los Sueños 111', 'Ciudad de Ensueño', '12345', 'México');
  insert into clientes values(7, 'Pedro Rodríguez', 'Pedro Rodríguez', 'Calle del Sol 222', 'Ciudad del Sol', '54321', 'Argentina');
  insert into clientes values(8, 'Laura Silva', 'Laura Silva', 'Carrera Imaginaria 333', 'Ciudad Ficticia', '67890', 'Colombia');
  insert into clientes values(9, 'Javier Martínez', 'Javier Martínez', 'Paseo Sin Fin 444', 'Ciudad Irreal', '24680', 'Perú');
  insert into clientes values(10, 'María Torres', 'María Torres', 'Avenida del Lago 555', 'Ciudad de Ensueño', '98765', 'Chile');
  insert into clientes values(11, 'Roberto González', 'Roberto González', 'Calle del Bosque 666', 'Ciudad del Sol', '13579', 'Argentina');
  insert into clientes values(12, 'Carolina Herrera', 'Carolina Herrera', 'Carrera de los Sueños 777', 'Ciudad Ficticia', '86420', 'Colombia');
  insert into clientes values(13, 'Daniel Mendoza', 'Daniel Mendoza', 'Paseo del Mar 888', 'Ciudad Irreal', '24680', 'Perú');
  insert into clientes values(14, 'Sofía Ramírez', 'Sofía Ramírez', 'Avenida del Viento 999', 'Ciudad de Ensueño', '98765', 'Chile');
  insert into clientes values(15, 'Fernando Morales', 'Fernando Morales', 'Calle del Monte 1010', 'Ciudad del Sol', '24680', 'Argentina');
  insert into clientes values(16, 'Valeria Peña', 'Valeria Peña', 'Carrera del Río 1111', 'Ciudad Ficticia', '86420', 'Colombia');
  insert into clientes values(17, 'Hugo Rojas', 'Hugo Rojas', 'Paseo de la Montaña 1212', 'Ciudad Irreal', '13579', 'Perú');
  insert into clientes values(18, 'Gabriela Salinas', 'Gabriela Salinas', 'Avenida del Mar 1313', 'Ciudad de Ensueño', '98765', 'Chile');
  insert into clientes values(19, 'Andrés Castro', 'Andrés Castro', 'Calle del Cielo 1414', 'Ciudad del Sol', '86420', 'Argentina');
  insert into clientes values(20, 'Luisana Sánchez', 'Luisana Sánchez', 'Carrera del Horizonte 1515', 'Ciudad Ficticia', '13579', 'Colombia');
  insert into clientes values(21, 'Martín Vega', 'Martín Vega', 'Paseo del Bosque 1616', 'Ciudad Irreal', '86420', 'Perú');
  insert into clientes values(22, 'Carla Medina', 'Carla Medina', 'Avenida de los Ángeles 1717', 'Ciudad de Ensueño', '98765', 'Chile');
  insert into clientes values(24, 'Cecilia Ramos', 'Cecilia Ramos', 'Carrera de la Luna 1919', 'Ciudad Ficticia', '13579', 'Argentina');
  insert into clientes values(25, 'Alejandro Vargas', 'Alejandro Vargas', 'Paseo del Sol 2020', 'Ciudad Irreal', '86420', 'Colombia');
  insert into clientes values(26, 'Daniela Fernández', 'Daniela Fernández', 'Avenida del Cielo 2121', 'Ciudad de Ensueño', '98765', 'Chile');
  insert into clientes values(27, 'Manuel Torres', 'Manuel Torres', 'Calle del Mar 2222', 'Ciudad del Sol', '86420', 'Argentina');
  insert into clientes values(28, 'Gabriela Mendoza', 'Gabriela Mendoza', 'Carrera de la Montaña 2323', 'Ciudad Ficticia', '13579', 'Colombia');
  insert into clientes values(29, 'Sebastián Rojas', 'Sebastián Rojas', 'Paseo del Río 2424', 'Ciudad Irreal', '98765', 'Perú');
  insert into clientes values(30, 'Valentina Salazar', 'Valentina Salazar', 'Avenida del Bosque 2525', 'Ciudad de Ensueño', '86420', 'Chile');
  insert into clientes values(31, 'Francisco Morales', 'Francisco Morales', 'Calle de la Luna 2626', 'Ciudad del Sol', '13579', 'Argentina');
  insert into clientes values(32, 'Marcela Vega', 'Marcela Vega', 'Carrera del Sol 2727', 'Ciudad Ficticia', '98765', 'Colombia');
  insert into clientes values(33, 'Andrés Castro', 'Andrés Castro', 'Paseo de los Sueños 2828', 'Ciudad Irreal', '86420', 'Perú');
  insert into clientes values(34, 'Daniela Rojas', 'Daniela Rojas', 'Avenida de la Fantasía 2929', 'Ciudad de Ensueño', '13579', 'Chile');
  insert into clientes values(35, 'Roberto Salinas', 'Roberto Salinas', 'Calle de los Sueños 3030', 'Ciudad del Sol', '98765', 'Argentina');
  insert into clientes values(36, 'Laura Torres', 'Laura Torres', 'Carrera de la Imaginación 3131', 'Ciudad Ficticia', '86420', 'Colombia');
  insert into clientes values(37, 'Javier Mendoza', 'Javier Mendoza', 'Paseo de los Sueños 3232', 'Ciudad Irreal', '13579', 'Perú');
  insert into clientes values(38, 'Carolina Salazar', 'Carolina Salazar', 'Avenida de los Recuerdos 3333', 'Ciudad de Ensueño', '98765', 'Chile');
  insert into clientes values(39, 'Gabriel Medina', 'Gabriel Medina', 'Calle de la Esperanza 3434', 'Ciudad del Sol', '86420', 'Argentina');
  insert into clientes values(40, 'Isabella Vargas', 'Isabella Vargas', 'Carrera de los Sueños 3535', 'Ciudad Ficticia', '13579', 'Colombia');
  
  
  CREATE TABLE suplidores (
  idsuplidor INT PRIMARY KEY,
  empresa VARCHAR(100),
  contacto VARCHAR(100),
  direccion VARCHAR(100),
  ciudad VARCHAR(100),
  codigo_postal VARCHAR(10),
  pais VARCHAR(50)
);

  insert into suplidores values(6, 'Acme Corporation', 'John Smith', '123 Main Street', 'New York', '10001', 'Argentina');
  insert into suplidores values(7, 'Globex Corporation', 'Jane Doe', '456 Elm Street', 'Los Angeles', '90001', 'Perú');
  insert into suplidores values(8, 'Wayne Enterprises', 'Bruce Wayne', '789 Park Avenue', 'Gotham City', '12345', 'Colombia');
  insert into suplidores values(9, 'Stark Industries', 'Tony Stark', '1 Stark Tower', 'New York', '10001', 'Chile');
  insert into suplidores values(10, 'LexCorp', 'Lex Luthor', '555 LexCorp Plaza', 'Metropolis', '54321', 'Argentina');
  insert into suplidores values(11, 'Umbrella Corporation', 'Albert Wesker', '777 Raccoon Street', 'Raccoon City', '67890', 'Venezuela');
  insert into suplidores values(12, 'Weyland-Yutani Corporation', 'Ellen Ripley', '888 Nostromo Way', 'Hadleys Hope', '24680', 'Rep. Dominicana');
  insert into suplidores values(13, 'InGen', 'John Hammond', 'Jurassic Park', 'Isla Nublar', '98765', 'Costa Rica');
  insert into suplidores values(14, 'Tyrell Corporation', 'Eldon Tyrell', '123 Tyrell Building', 'Los Angeles', '90001', 'United States');

  SELECT * FROM clientes
  SELECT * FROM suplidores

  SELECT contacto, ciudad, pais,'clientes' AS fuente from clientes
  UNION -- si le coloco UNION ALL, no solo vienen datos unicos tambien dulplicado si aplica
  SELECT contacto, ciudad, pais,'suplidores' from suplidores
  order by fuente

  --**********************************************************Video 43:GROUP BY
  -- se usa con funciones agregada como funciones COUNT(), SUM()...

  SELECT COUNT(idcliente) as cantidad, pais
  from clientes
  group by pais
  order by cantidad 


  --**********************************************************Video 44:HAVING 
  -- la funcion HAVVING hace lo mismo que WHERE, solo que se usa en combinacion con otras funciones

    SELECT * FROM clientes

    SELECT COUNT(idcliente) AS cantidad_cliente, ciudad
    FROM clientes
    GROUP BY ciudad
    HAVING COUNT(idcliente) >5
    order by cantidad_cliente

    -- Join and HAVING

    SELECT 
    V.nombre, 
    COUNT(o.idorden) as cantidad_ordenes
    from ordenes o 
    inner join vendedor v 
    on o.idvendedor = v.idvendedor
    WHERE v.nombre like 'Al%' -- puedo usar la clausura where antes del Group y el having
    group by v.nombre 
    having COUNT(o.idorden) > 2


  --**********************************************************Video 45: SUBCONSULTAS: PARTE 1
  -- la subconsulta debe ir entre parentesis
  -- se debe espeficicar solo una columna o expresion al menos que usemos IN, ANY, ALL y Exists
  -- no pueden contener BETWEEN ni LIKE
  -- No pueden contener Order by, no UPDATE no DELETE

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
  constraint FK_detalles_numerofactura foreign key (numerofactura) references facturas(numero)
   on update cascade
   on delete cascade
);

go

set dateformat ymd;

INSERT INTO facturas (numero, fecha, cliente) VALUES
  (1, '2023-06-28', 'Juan Pérez'),
  (2, '2023-06-28', 'María González'),
  (3, '2023-06-28', 'Carlos López'),
  (4, '2023-06-28', 'Ana Rodríguez'),
  (5, '2023-06-28', 'Luisa Martínez'),
  (6, '2023-06-28', 'Pedro Hernández'),
  (7, '2023-06-28', 'Laura Gómez'),
  (8, '2023-06-28', 'Diego Torres'),
  (9, '2023-06-28', 'Valentina Ramírez'),
  (10, '2023-06-28', 'Andrés Silva'),
  (11, '2023-06-28', 'Camila Vargas'),
  (12, '2023-06-28', 'Mateo Castro'),
  (13, '2023-06-28', 'Isabella Rios'),
  (14, '2023-06-28', 'Santiago Morales'),
  (15, '2023-06-28', 'Valeria Rojas'),
  (16, '2023-06-28', 'Daniel Acosta'),
  (17, '2023-06-28', 'Mariana Duarte'),
  (18, '2023-06-28', 'Alejandro Cardona'),
  (19, '2023-06-28', 'Fernanda Mendoza'),
  (20, '2023-06-28', 'Gabriel Medina');

INSERT INTO detalles (numerofactura, numeroitem, articulo, precio, cantidad) VALUES
  (1, 1, 'Lápiz', 1.99, 5),
  (1, 2, 'Cuaderno', 3.99, 3),
  (1, 3, 'Bolígrafo', 0.99, 10),
  (2, 1, 'Goma de borrar', 0.5, 8),
  (2, 2, 'Marcadores', 2.49, 4),
  (2, 3, 'Pegamento', 1.99, 2),
  (3, 1, 'Regla', 1.25, 5),
  (3, 2, 'Tijeras', 2.99, 2),
  (3, 3, 'Notas adhesivas', 0.75, 6),
  (4, 1, 'Lápices de colores', 4.99, 1),
  (4, 2, 'Borrador', 0.99, 3),
  (4, 3, 'Cinta adhesiva', 1.49, 2),
  (5, 1, 'Resaltador', 1.75, 4),
  (5, 2, 'Papel de carta', 2.99, 2),
  (5, 3, 'Clips', 0.25, 10),
  (6, 1, 'Corrector líquido', 1.99, 3),
  (6, 2, 'Carpeta', 2.49, 2),
  (6, 3, 'Sacapuntas', 0.99, 5),
  (7, 1, 'Calculadora', 9.99, 1),
  (7, 2, 'Agenda', 4.99, 1),
  (8, 1, 'Lápiz', 1.99, 5),
  (8, 2, 'Cuaderno', 3.99, 3),
  (8, 3, 'Bolígrafo', 0.99, 10),
  (9, 1, 'Goma de borrar', 0.5, 8),
  (9, 2, 'Marcadores', 2.49, 4),
  (9, 3, 'Pegamento', 1.99, 2),
  (10, 1, 'Regla', 1.25, 5),
  (10, 2, 'Tijeras', 2.99, 2),
  (10, 3, 'Notas adhesivas', 0.75, 6),
  (11, 1, 'Lápices de colores', 4.99, 1),
  (11, 2, 'Borrador', 0.99, 3),
  (11, 3, 'Cinta adhesiva', 1.49, 2),
  (12, 1, 'Resaltador', 1.75, 4),
  (12, 2, 'Papel de carta', 2.99, 2),
  (12, 3, 'Clips', 0.25, 10),
  (13, 1, 'Corrector líquido', 1.99, 3),
  (13, 2, 'Carpeta', 2.49, 2),
  (13, 3, 'Sacapuntas', 0.99, 5),
  (14, 1, 'Calculadora', 9.99, 1),
  (14, 2, 'Agenda', 4.99, 1),
  (15, 1, 'Lápiz', 1.99, 5),
  (15, 2, 'Cuaderno', 3.99, 3),
  (15, 3, 'Bolígrafo', 0.99, 10),
  (16, 1, 'Goma de borrar', 0.5, 8),
  (16, 2, 'Marcadores', 2.49, 4),
  (16, 3, 'Pegamento', 1.99, 2),
  (17, 1, 'Regla', 1.25, 5),
  (17, 2, 'Tijeras', 2.99, 2),
  (17, 3, 'Notas adhesivas', 0.75, 6),
  (18, 1, 'Lápices de colores', 4.99, 1),
  (18, 2, 'Borrador', 0.99, 3),
  (18, 3, 'Cinta adhesiva', 1.49, 2),
  (19, 1, 'Resaltador', 1.75, 4),
  (19, 2, 'Papel de carta', 2.99, 2),
  (19, 3, 'Clips', 0.25, 10),
  (20, 1, 'Corrector líquido', 1.99, 3),
  (20, 2, 'Carpeta', 2.49, 2),
  (20, 3, 'Sacapuntas', 0.99, 5),
  (1, 4, 'Calculadora', 9.99, 1),
  (1, 5, 'Agenda', 4.99, 1);

  SELECT * FROM detalles
  SELECT * FROM facturas
  SELECT * FROM DE.empleados

  -- cuales empleados ganan igual o mayor al promedio ?
  -- primero creamos nuesta sub consulta


  SELECT idempleado, nombre,apellido, salario
  FROM DE.empleados 
  WHERE salario >= 
                   (SELECT AVG(Salario)
                    FROM DE.empleados)


 -- Buscar todos los nombre de clientes con idcliente en colombia 
 SELECT nom_cliente,ciudad from clientes
 where idcliente  in -- tambien puedo usar "= any"
 (Select idcliente from clientes
 where pais = 'colombia')

  --**********************************************************Video 46: SUBCONSULTAS: PARTE 2

  -- Clausura exists and not exists
  -- cuales clientes han comprado Clips ?


  SELECT cliente, numero, fecha 
  FROM facturas f 
  WHERE EXISTS
               (SELECT * FROM detalles d
                WHERE f.numero = d.numerofactura and d.articulo ='clips')



  --**********************************************************Video 47: ISNULL, COALESCE


  create TABLE productos (
  idproducto INT,
  nombre VARCHAR(100),
  precio_unidad NUMERIC(6,2),
  existencia INT,
  vendidos INT
);
INSERT INTO productos (idproducto, nombre, precio_unidad, existencia, vendidos)
VALUES
  (1, 'Martillo', 12.50, 100, 50),
  (2, 'Destornillador', 6.75, 80, NULL),
  (3, 'Taladro', 75.00, 25, 10),
  (4, 'Sierra eléctrica', 120.25, 15, NULL),
  (5, 'Cinta métrica', 5.20, 200, 100),
  (6, 'Llave inglesa', 9.80, 50, NULL),
  (7, 'Pala', 15.00, 40, 20),
  (8, 'Clavos', 1.50, 500, NULL),
  (9, 'Tornillos', 2.00, 300, 150),
  (10, 'Alicate', 7.25, 70, NULL),
  (11, 'Escalera', 40.00, 10, 5),
  (12, 'Cincel', 4.30, 40, NULL),
  (13, 'Cepillo', 8.15, 30, 15),
  (14, 'Nivel', 10.50, 25, NULL),
  (15, 'Brocha', 3.75, 120, 60),
  (16, 'Talocha', 6.00, 80, NULL),
  (17, 'Llave ajustable', 11.20, 45, 25),
  (18, 'Mazo', 9.90, 20, NULL),
  (19, 'Formón', 5.80, 35, 15),
  (20, 'Serrucho', 8.50, 60, NULL),
  (21, 'Taladro inalámbrico', 95.00, 20, 15),
  (22, 'Llave de tubo', 13.50, 30, 20),
  (23, 'Pintura blanca', 18.75, 50, NULL),
  (24, 'Cepillo metálico', 6.25, 40, 30),
  (25, 'Escuadra', 2.80, 100, 50),
  (26, 'Broca para concreto', 4.50, 75, 40),
  (27, 'Gafas de seguridad', 8.90, 60, 45),
  (28, 'Cinta adhesiva', 1.25, 200, NULL),
  (29, 'Nivel láser', 45.50, 10, 5),
  (30, 'Sierra de mano', 7.80, 50, 35),
  (31, 'Alicates de corte', 9.25, 30, 20),
  (32, 'Tornillos de acero', 2.50, 500, NULL),
  (33, 'Destornillador de precisión', 5.50, 40, 30),
  (34, 'Martillo de goma', 10.75, 25, 20),
  (35, 'Llave hexagonal', 6.60, 50, NULL),
  (36, 'Pala plegable', 14.00, 15, 10),
  (37, 'Escobilla de alambre', 3.25, 80, 60),
  (38, 'Clavos galvanizados', 2.75, 1000, NULL),
  (39, 'Cincel de punta', 7.40, 35, 25),
  (40, 'Cúter', 2.15, 90, NULL);


  SELECT * FROM productos

  SELECT nombre, precio_unidad, vendidos,isnull(vendidos,0) AS Vendeidos_isnull
  FROM productos

  -- ver lo que se ha vendido
  SELECT nombre, precio_unidad * isnull(existencia + vendidos,0)
  FROM productos

  -- COALECE Tambien funciona igual que isnull()


 --**********************************************************Video 48:  CASE 

   SELECT * FROM clientes
   SELECT * FROM articulos

   UPDATE clientes set ciudad = null
   where idcliente in (1,3,9,10,11,19,24,23,31,36)

   -- 1. ver articulo de mi inventario con existencia normal 
   -- 2. ver articulo que nesecitan ser perdido 
   -- 3. ver articulo menos vendidos


SELECT nombre, cantidad,
   case 
        when cantidad > 30 then 'Articulo con sobre-existencia'
        when cantidad < 10 then 'Se debe realizar pedido'
        else 'Existencia normal'
  end as inventario
FROM [Prueba].[dbo].[articulos]

/*
1.Generar un reporte con nombre pais y ciudad de los clientes
2.organizar el reporte por ciudad, en caso de que no tenga ciuda organizar por pais
*/
SELECT nom_cliente, ciudad, pais 
FROM [Prueba].[dbo].[clientes]
order by
(CASE
    WHEN ciudad is null then pais -- quiere decir que cuando el campo ciudad sea NULL organizalo por pais
    ELSE ciudad 
 END
)

 --**********************************************************Video 49:FUNCIONES MATEMATICAS
 --funcion de valor Pi
 SELECT PI() AS PI
 --funcion CEILING de redondeo de cifras a numero arriba
 SELECT ceiling(123.001) AS redondeo_arriba,ceiling(-123.001) AS redondeo_arriba_negativos
 --funcion FLOOR de redondeo de cifras a numero abajo
 SELECT FLOOR(123.001) AS redondeo_abajo,FLOOR(-123.001) AS redondeo_abajo_negativos
 --Redondeo 
 SELECT ROUND(123.51,0) -- dejar el segundo argumento en 0 para que redonde conforme a su decimales
 --potencia
 SELECT POWER(4,2) --ORDEN, base, esponente
 --general numero random 
 SELECT ROUND(RAND()*(100-1),0) --use el round para quitar los decimales de la funcion random


  --**********************************************************Video 50: FUNCIONES STRING 

  --Funcion CONCAT(), LEN(), LOWER(), UPPER()
  SELECT 
  CONCAT(nom_cliente,' - ',direccion) AS nombre_direccion, 
  len(nom_cliente) as cantidad_caracteres,
  LOWER(nom_cliente) AS all_lower,
  UPPER(nom_cliente) AS ALL_UPPER,
  UPPER(LEFT(nom_cliente,1)) + LOWER(RIGHT(nom_cliente,LEN(nom_cliente)-1)) --para traer el primer valor en mayuscula
  FROM clientes
 
-- Funcion TRIM() LTRIM(), RTRIM()

SELECT TRIM(' ALAN ') --quita espacios en blanco de ambos lados
SELECT LTRIM(' ALAN ') --Quita espacio en blanco de la izquielda
SELECT RTRIM(' ALAN ')  --Quita espacio en blanco de la derecha

--Funcion replace()
SELECT REPLACE('El cacobanga','a','o')


 --**********************************************************Video 51: FUNCIONES DATE 

SELECT * FROM facturas
SELECT GETDATE() AS DATE

--tambien puedo usar numero negativo para jugar con las fechas
SELECT DATEADD(SECOND, 1, GETDATE()) AS DATA_MAS_1_SEGUNDOS
SELECT DATEADD(MINUTE, 1, GETDATE()) AS DATA_MAS_1_minuto
SELECT DATEADD(HOUR, 1, GETDATE()) AS DATA_MAS_1_hora
SELECT DATEADD(DAY, 1, GETDATE()) AS DATA_MAS_1_DIA
SELECT DATEADD(MONTH, 1, GETDATE()) AS DATA_MAS_1_mes
SELECT DATEADD(YEAR, 1, GETDATE()) AS DATA_MAS_1_ANIO
SELECT DATENAME(MONTH, GETDATE()) AS nombre_de_mes
SELECT DATEPART(MONTH, GETDATE()) AS numero_de_mes
SELECT datename(weekday, GETDATE()) AS nombre_de_dia
SELECT datename(day, GETDATE()) AS numero_de_dia

SELECT numero,cliente, fecha, DATEADD(DAY,1, fecha) as fecha_mas_1_dia
FROM facturas

--**********************************************************Video 52: FUNCIONES LEFT(), RIGHT(), STUFF() 
        
SELECT * FROM FACTURAS

SELECT 
cliente,
LEFT(cliente,3) as los_3_primero_car,
right(cliente,3) as los_3_ultimos_car,
STUFF(cliente,6,7,'agregado') as campo_stuff -- el 6 donde va a empezar y el 7 cuantos espacia a utilizar
FROM FACTURAS

--**********************************************************Video 53: TRANSACT-SQL, BULK INSERT ESTATICO

--T-SQL es una extencion de lenguage SQL pero escalando a nivel programacion de base de datos
/*
T-SQL incluye ese SQL, pero además agrega funcionalidades propias de SQL Server, por ejemplo:

Variables
IF / ELSE
WHILE
Procedimientos almacenados (STORED PROCEDURE)
Funciones
Manejo de errores (TRY...CATCH)
Transacciones (BEGIN TRAN, COMMIT, ROLLBACK)
Tablas temporales (#TempTable)
DECLARE
PRINT
*/

CREATE TABLE autos(
marca VARCHAR(100),
modelo VARCHAR(100),
tipo VARCHAR(100),
color VARCHAR(100)
)

BULK INSERT
[Prueba].[dbo].[autos]
FROM 'C:\Users\gomerah.5\Downloads\TABLA_AUTOS.txt'
WITH (firstrow =2)

SELECT * FROM [Prueba].[dbo].[autos]


--**********************************************************Video 54: TRANSACT-SQL, ROW_NUMBER(), RANK() Y DENSE RANK()

CREATE TABLE empleados (
    idempleado INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    cedula VARCHAR(20),
    direccion VARCHAR(150),
    telefono VARCHAR(20),
    puesto VARCHAR(50),
    salario DECIMAL(10,2),
    fecha_ingreso DATE
);
INSERT INTO empleados (nombre, apellido, cedula, direccion, telefono, puesto, salario, fecha_ingreso)
VALUES 
('Juan', 'Pérez', '001-1234567-1', 'Calle 10 #23, Santo Domingo', '809-555-0001', 'Gerente', 85000.00, '2022-01-10'),
('María', 'Gómez', '002-7654321-2', 'Av. Bolívar #56, Santo Domingo', '809-555-0002', 'Secretaria', 28000.00, '2021-03-05'),
('Carlos', 'Ramírez', '003-2345678-3', 'Calle Duarte #12, Santiago', '809-555-0003', 'Contador', 45000.00, '2020-07-12'),
('Ana', 'López', '004-9876543-4', 'Res. Las Palmas, Sto Dgo', '809-555-0004', 'Asistente', 22000.00, '2019-11-01'),
('Pedro', 'Santos', '005-1112223-5', 'Calle Mella #45, La Vega', '809-555-0005', 'Supervisor', 22000.00, '2023-02-20'),
('Laura', 'Rodríguez', '006-3334445-6', 'Av. Churchill #101, Sto Dgo', '809-555-0006', 'Vendedora', 25000.00, '2022-10-11'),
('Miguel', 'Fernández', '007-5556667-7', 'Calle 5 #89, San Cristóbal', '809-555-0007', 'Programador', 60000.00, '2023-05-03'),
('Sofía', 'Martínez', '008-7778889-8', 'Av. Libertad #70, Santiago', '809-555-0008', 'Analista', 48000.00, '2021-09-25'),
('Andrés', 'Torres', '009-9990001-9', 'Calle 8 #14, Santo Domingo', '809-555-0009', 'Recursos Humanos', 42000.00, '2020-01-17'),
('Elena', 'Morales', '010-2223334-0', 'Calle 12 #55, San Pedro', '809-555-0010', 'Cajera', 22000.00, '2019-06-30'),
('Javier', 'Castillo', '011-4445556-1', 'Calle Principal #32, Bonao', '809-555-0011', 'Técnico', 22000.00, '2022-03-10'),
('Paola', 'Herrera', '012-6667778-2', 'Av. México #90, Sto Dgo', '809-555-0012', 'Diseñadora', 35000.00, '2023-01-01'),
('Luis', 'Vargas', '013-8889990-3', 'Calle 3 #22, La Romana', '809-555-0013', 'Mensajero', 18000.00, '2018-04-12'),
('Valentina', 'Rivas', '014-0001112-4', 'Calle F #77, Nagua', '809-555-0014', 'Marketing', 37000.00, '2022-09-09'),
('Roberto', 'Jiménez', '015-2223334-5', 'Calle J #18, Sto Dgo', '809-555-0015', 'Chofer', 21000.00, '2021-12-15'),
('Daniela', 'Mejía', '016-4445556-6', 'Urbanización Los Prados, SD', '809-555-0016', 'Supervisora', 40000.00, '2020-05-22'),
('Héctor', 'Cabrera', '017-6667778-7', 'Av. Duarte #44, Santo Domingo', '809-555-0017', 'Seguridad', 19000.00, '2019-08-01'),
('Isabel', 'Sánchez', '018-8889990-8', 'Calle 2 #90, Santiago', '809-555-0018', 'Cocinera', 17000.00, '2023-04-15'),
('Tomás', 'Reyes', '019-0001112-9', 'Barrio los Mina, SD Este', '809-555-0019', 'Almacén', 23000.00, '2022-07-30'),
('Patricia', 'Guzmán', '020-2223334-1', 'Calle Real #23, Baní', '809-555-0020', 'Auxiliar', 21000.00, '2021-02-14'),
('Eduardo', 'Peña', '021-4445556-2', 'Calle D #12, Higüey', '809-555-0021', 'Gerente', 90000.00, '2018-01-08'),
('Gabriela', 'Silva', '022-6667778-3', 'Av. España, SD Este', '809-555-0022', 'Analista', 46000.00, '2020-09-19'),
('Ricardo', 'Navarro', '023-8889990-4', 'Calle 19 #8, Bonao', '809-555-0023', 'Soporte Técnico', 32000.00, '2023-02-01'),
('Karla', 'Soto', '024-0001112-5', 'Av. Luperón #150, Sto Dgo', '809-555-0024', 'Vendedora', 26000.00, '2019-03-28'),
('Fernando', 'Paredes', '025-2223334-6', 'Calle H #10, San Cristóbal', '809-555-0025', 'Mecánico', 31000.00, '2021-11-11'),
('Yolanda', 'Campos', '026-4445556-7', 'Calle G #57, La Vega', '809-555-0026', 'Enfermera', 38000.00, '2020-06-05'),
('Manuel', 'Delgado', '027-6667778-8', 'Av. Sabana Larga, SD Este', '809-555-0027', 'Conserje', 15000.00, '2023-03-20'),
('Cecilia', 'Arroyo', '028-8889990-9', 'Calle I #33, Sto Dgo', '809-555-0028', 'Contadora', 47000.00, '2022-12-02'),
('Óscar', 'Bermúdez', '029-0001112-0', 'Urbanización Mirador Norte, SD', '809-555-0029', 'IT Manager', 95000.00, '2017-10-10'),
('Diana', 'Tejada', '030-2223334-7', 'Av. San Vicente, SD Este', '809-555-0030', 'Asistente', 23000.00, '2023-06-01');

SELECT * FROM empleados

SELECT 
nombre, 
apellido, 
cedula,
salario,
row_number() OVER(order by salario DESC) AS Ranking_salario
FROM empleados

SELECT 
nombre, 
apellido, 
cedula,
salario,
RANK() OVER(order by salario DESC) AS Ranking_salario -- con rank si el salario es el mismo, se repite
FROM empleados

SELECT 
nombre, 
apellido, 
cedula,
salario,
DENSE_RANK() OVER(order by salario DESC) AS Ranking_salario -- con rank si el salario es el mismo, se repite pero no salta numeros
FROM empleados


--**********************************************************Video 55: TRANSACT-SQL, FIRST_VALUE()

-- selectiona el empleado con el salario mas alto
SELECT * FROM(
                SELECT ROW_NUMBER() OVER(ORDER BY [salario] DESC) AS contador,
                [idempleado], 
                [salario],
                [fecha_ingreso]
                FROM [Prueba].[dbo].[empleados]) AS new_tale_sal
WHERE new_tale_sal.contador =1


-- Haciendo el mismo ejetsicion con FIRST_VALUE()
SELECT * FROM [Prueba].[dbo].[empleados] new_tale_sal
WHERE [idempleado] =
                   ( SELECT DISTINCT FIRST_VALUE([idempleado]) OVER(ORDER BY [salario] DESC) AS contador
                     FROM [Prueba].[dbo].[empleados] new_tale_sal)

-- a mi manera 
SELECT TOP(1) * FROM [Prueba].[dbo].[empleados]
ORDER BY salario DESC


--**********************************************************Video 56: BLOQUES, INTRODUCCION

/*

DECLARE
-- aqui van las variables y puedo tener varias variables

Bigin

--Codigo principal
   Aquí habrá palabras como:
   IF- ELSE
   RETURN
   WAITFOR
   WHILE
   FOR
   DO WHILE
   CASE
  
    --control de enentualidades
     CONTINUE
     BREAK
END
*/


--**********************************************************Video 57: T-SQL, IF EXIST() - ELSE


SELECT * FROM [Prueba].[dbo].[articulos]

-- una funcion que analisa si se cumple 
IF EXISTS(SELECT * FROM [Prueba].[dbo].[articulos] WHERE cantidad =0) -- si esto se cumple esto el sitema ejecuta 
--el codigo a continuacion en la linea 1356
(SELECT nombre, precio, cAntidad FROM [Prueba].[dbo].[articulos] WHERE cantidad =0)
-- coso contrario ejecuta este ELSE
ELSE 
    SELECT 'NO HAY ARTICULOS EN 0' AS inventario


-- Crear la tabla Cartelera
CREATE TABLE Cartelera (
    sala VARCHAR(50),
    pelicula VARCHAR(100),
    hora VARCHAR(10),
    capacidad INT,
    entradas INT
);

-- Insertar registros en la tabla Cartelera
INSERT INTO Cartelera (sala, pelicula, hora, capacidad, entradas)
VALUES ('Sala 1', 'Spider-Man: No Way Home', '10:00', 100, 80),
       ('Sala 2', 'Avatar 2', '12:30', 80, 70),
       ('Sala 3', 'The Batman', '15:15', 120, 90),
       ('Sala 4', 'Black Panther: Wakanda Forever', '17:45', 150, 150),
       ('Sala 5', 'Indiana Jones 5', '20:00', 120, 120),
       ('Sala 6', 'Fantastic Beasts: The Secrets of Dumbledore', '10:30', 100, 85),
       ('Sala 1', 'Mission: Impossible 8', '13:00', 90, 70),
       ('Sala 2', 'Fast & Furious 10', '16:15', 80, 60),
       ('Sala 3', 'Guardians of the Galaxy Vol. 3', '19:30', 110, 90),
       ('Sala 4', 'The Flash', '22:00', 100, 95),
       ('Sala 5', 'Thor: Love and Thunder', '10:45', 120, 100),
       ('Sala 6', 'Captain Marvel 2', '14:20', 80, 70),
       ('Sala 1', 'Doctor Strange in the Multiverse of Madness', '17:00', 150, 150),
       ('Sala 2', 'The Expendables 4', '20:30', 100, 80),
       ('Sala 3', 'Aquaman and the Lost Kingdom', '11:15', 120, 100),
       ('Sala 4', 'Sherlock Holmes 3', '13:45', 90, 75),
       ('Sala 5', 'Mortal Kombat 2', '16:30', 80, 80),
       ('Sala 6', 'John Wick: Chapter 4', '19:45', 100, 100),
       ('Sala 1', 'Jungle Cruise', '21:30', 110, 100),
       ('Sala 2', 'The Little Mermaid', '12:15', 80, 70);



  SELECT * FROM CARTELERA

  --Ver asientos disponibles en cada sala, en caso de no haber
  --asientos, desplegar mensaje de entradas agotadas

  IF EXISTS(SELECT * FROM CARTELERA WHERE capacidad > entradas)
  SELECT sala, pelicula, hora, (capacidad - entradas) as "Disponible(s)" FROM CARTELERA WHERE capacidad > entradas
  ELSE
  SELECT 'ENTRADAS AGOTADAS' AS "Disponible(s)"


  --**********************************************************Video 58:T-SQL, VARIABLES 
  -- Ojo no existen variable globales en SQL server
  --debemos declarar y emplear las variables en el mismo lote de sentencia, 
  -- dicho eso esas variable ahora mismo tienen un valor null porque solo estan declaradas
  DECLARE 
    @id_valor int, -- aqui puedo hacer la aignacion aqui  "@id_valor int = 35"
    @nombre varchar(20),
    @telefono numeric(10),
    @fecha_nac date,
    @activo bit;

 BEGIN
 SET @id_valor = 50 -- aqui estoy haciendo la asignacion
 SET @nombre ='Alan gomera' 
 SET @telefono = 8097523321 
 SET @fecha_nac = '1997-04-19'
 SET @activo = 1 

 SELECT  @id_valor as valor,  
 @nombre as nombre,
 @telefono as telefono,
 @fecha_nac as fecha_nac,
 @activo as activo
  
 END


 SELECT * FROM ARTICULOS

 DECLARE 
 @codigo INT = 10
 
 BEGIN 

 SELECT * FROM [Prueba].[dbo].[articulos] WHERE codigo = @codigo

 END


 --**********************************************************Video 59: T-SQL, VARIABLES TIPO TABLA 

 -- no se almacena como una tabla realmente ya que se elimina el completar la sentencia

 DECLARE 
 @table1 table(
 id int,
 nombre varchar(20),
 telefono numeric(10)
 );
 
 INSERT INTO @table1(id,nombre,telefono) values(1,'Alan',2109823),
                                               (12,'Luis',2109823)
 SELECT * FROM @table1


  --**********************************************************Video 60:T-SQL, PROCEDIMIENTOS ALMACENADOS
  -- el fin de un store procedure es hacer tareas repetitivas

  CREATE PROC SP_existencia

  AS 
  select *  FROM [Prueba].[dbo].[articulos] WHERE cantidad <=20

  EXEC SP_existencia


   --**********************************************************Video 61:T-SQL PROCEDIMIENTOS ALMACENADOS [BORRAR, ACTUALIZAR]
   -- solo el video viendo como hacer el ALTE, y el DROP procedure

   --**********************************************************Video 62:T-SQL PROCEDIMIENTOS ALMACENADOS [PAMETROS DE ENTRADA]

     select *  FROM [Prueba].[dbo].[articulos]

     -- SP con parametro de entrada para encontra laptops

     ALTER procedure SP_busca_articulo

     @nombre varchar (30) = 'Laptop Acer'

     AS 
     select * from [Prueba].[dbo].[articulos] 
                    WHERE nombre =@nombre

    EXEC SP_busca_articulo


  --**********************************************************Video 63:T-SQL PROCEDIMIENTOS ALMACENADOS [PAMETROS DE SALIDA]

  CREATE OR ALTER PROC SP_promedio

  @valor1 FLOAT,
  @Valor2 FLOAT,
  @Resultado FLOAT OUTPUT -- This variable is our parametor of output

  AS 
    SELECT @Resultado = (@valor1+@valor2)/2

-- Para ejecutar el SP 

DECLARE 
@Promedio FLOAT
EXEC SP_promedio 1234.20, 7894.30,
@Promedio OUTPUT
SELECT @Promedio as promedio



--**********************************************************Video 64:T-SQL PROCEDIMIENTOS ALMACENADOS [ENCRIPTACION]

exec sp_helptext SP_promedio -- para ver el detalle interno del SP 
exec sp_helptext SP_existencia 

-- Como encriptar un sp: 
  ALTER PROC SP_existencia
  --WITH ENCRYPTION -- aqui esta ya esta y para remover, solo volver a ejecutar sin el 'WITH ENCRYPTION'
  AS 
  select *  FROM [Prueba].[dbo].[articulos] WHERE cantidad <=20

  EXEC SP_existencia


  --**********************************************************Video 65:TABLAS TEMPORALES
  -- las tablas temporales solo son visibles durante una seccion de usuario
  -- No pueden tener llaves FK, ni se pueden indexar, ni crea vista 

  -- primera tabla temparol 
  CREATE TABLE #usuario(
  nombre varchar(20),
  clave varchar(10),
  primary key(nombre)
  )

  SELECT * FROM #usuario



  --**********************************************************Video 66:T-SQL FUNCIONES 

  -- son bloque de codigos pre-definido para realizar operaciones definidas con nuestros datos
  -- hay funciones de agregados ejemplo SUM(), AVG(), COUNT()...
  -- HAY funciones de filas ejemplo UPPER(). LOWER()....
  -- FUNCIONES DETERMINISTICAS O NO DETERMINISTICAS

  -- creando una funcion scalar

  CREATE FUNCTION F_suma
  (@valor1 INT, @valor2 INT)
  RETURNS INT 

  AS
   BEGIN 
    DECLARE @resultado INT
    SET @resultado =@valor1 + @valor2
    return @resultado 
    end

    -- ejecutar una funcion debe usar siempre el esquema + funcion

    SELECT dbo.f_suma(50,50) as suma



 --**********************************************************Video 67:T-SQL FUNCIONES DE TIPO TABLA EN LINEA
 -- Yo puedo usar AI para trabajar con eso ahhaha 


 --**********************************************************Video 68:T-SQL TRIGGERS (INTRODUCCION)

 /*
 Tipos de triggers:
 AFTER INSERT
 AFTER UPDATE
 AFTER DELETE
 INSTEAD OF
 */

 CREATE TABLE Test_trigera(
 id INT NULL,
 nombre VARCHAR(100),
 fecha DATE,
 cantidad float
 )

 CREATE TABLE control_de_trigers(
 usuario varchar(20),
 fecha date,
 accion varchar(100)
 )

 -- creando mi primer trigger AFTER insert 

 CREATE OR ALTER TRIGGER T_inserta
 on Test_trigera 
 AFTER INSERT 
 AS 
    BEGIN 
        DECLARE @usuario varchar(30)
        set @usuario = suser_name()
        INSERT INTO CONTROL VALUES(@usuario, GETDATE(),'insert')
        END

--Testing the trigger
Insert into [Prueba].[dbo].[Test_trigera] values(1,'Alan','2026-04-19',1.0)

 SELECT * FROM Test_trigera
 SELECT * FROM control_de_trigers


 --**********************************************************Video 69:T-SQL, TRIGGERS (INSERT, UPDATE, DELETE)
 -- Yo puedo usar AI para trabajar con eso ahhaha 

  --**********************************************************Video 70:T-SQL,TRIGGERS (INSTEAD OF) 
 -- Yo puedo usar AI para trabajar con eso ahhaha 

 --**********************************************************Video 71:T-SQL,TRIGGERS (ENABLE, DISABLE)
 -- Yo puedo usar AI para trabajar con eso ahhaha 

  --**********************************************************Video 72:T-SQL,TRIGGERS (RAISERROR)
 -- Yo puedo usar AI para trabajar con eso ahhaha 


 --**********************************************************Video 73:T-SQL, BULK INSERT DINAMICO
 CREATE TABLE #basecarros(
 marca	varchar(100),
 modelo	varchar(100),
 tipo	varchar(100),
 color	varchar(100)
)
BULK INSERT 
#basecarros
FROM 'C:\Users\gomerah.5\Downloads\TABLA_AUTOS.txt'
WITH (firstrow =2)

SELECT * FROM #basecarros

 --**********************************************************Video 74: VARIABLES DE SISTEMA

 --variables de sistema
 --deuelve version completa e informacion 
 print 'version: '+@@version

 -- devuelve el lenguaje del servidor
 print 'lenguaje: '+@@language

 -- devuelve nombre del servidor 
  print 'servidor: '+@@servername

  -- devuelve conoccion usuario
  print'conexion usuario: ' + str(@@connections)
  --... y muchas mas en el video


 --**********************************************************Video 75: T-SQL, LOOPS 

 -- los loops for ya casi ni se usan
 DECLARE 
   @CONTEO int =0
   while @CONTEO <= 10
   begin
    print ('vuelta numero:'+convert(varchar,@CONTEO))
    set @CONTEO +=1
END


 --**********************************************************Video 76: T-SQL, WHILE- BREAK 

  DECLARE 
   @CONTEO int =0
   while @CONTEO <= 10
   begin
    print ('vuelta numero:'+convert(varchar,@CONTEO))
    set @CONTEO +=1
    if @CONTEO = 7 break
END
    print'El valor ya es: '+STR(@CONTEO)

 --**********************************************************Video 77: T-SQL,WHILE - CONTINUE 

   DECLARE 
   @CONTEO int =0
   while @CONTEO <= 10
   begin
    print ('vuelta numero:'+convert(varchar,@CONTEO))
    set @CONTEO +=1
    if @CONTEO = 7 CONTINUE
END
    print'El valor ya es: '+STR(@CONTEO)


 --**********************************************************Video 78: T-SQL, LOOPS ANIDADOS
 --**********************************************************Video 79: T-SQL,MANEJO DE REGISTROS CON BUCLE WHILE
 --**********************************************************Video 80: T-SQL,CURSORES (Introducción)
 -- LOS CURSORES nos permiten recorre fila para traer resultados de consultas de forma secuencial
 --**********************************************************Video 81: T-SQL,CURSORES TIPO TABLA
 --**********************************************************Video 82: CURSORES - ACTUALIZAR DATOS
 --**********************************************************Video 83:USUSARIOS - MODO GRAFICO
 --**********************************************************Video 84:USUSARIOS - MODO SCRIPT
 --**********************************************************Video 85:JOBS EN SQL SERVER
 --**********************************************************Video 86:BACKUPS DE LA BASE
 --**********************************************************Video 87:OVER() 


      select *  FROM [Prueba].[dbo].[articulos]

        SELECT 
        codigo,
        nombre,
        precio,
        sum(precio) over() AS total_precio -- esto me da el total de precio por cada registro
        FROM [Prueba].[dbo].[articulos]

 --**********************************************************Video 88:  PARTITION BY 

 drop table Empleados;

CREATE TABLE empleados (
    idEmpleado INT PRIMARY KEY,
    nombre VARCHAR(100),
    puesto VARCHAR(100),
    idDepartamento INT,
    salario DECIMAL(10, 2)
);
-- Insertar filas en la tabla empleados
INSERT INTO empleados (idEmpleado, nombre, puesto, idDepartamento, salario) VALUES
(1, 'Juan Pérez', 'Gerente', 1, 5000.00),
(2, 'María López', 'Analista', 2, 3500.00),
(3, 'Pedro Martinez', 'Desarrollador', 1, 4000.00),
(4, 'Ana García', 'Diseñador', 3, 3800.00),
(5, 'Carlos Ruiz', 'Contador', 2, 4500.00),
(6, 'Sofía Hernandez', 'Analista', 1, 3800.00),
(7, 'Javier Ramos', 'Gerente de Proyectos', 3, 5500.00),
(8, 'Luisa Medina', 'Desarrollador', 2, 4200.00),
(9, 'Miguel Sánchez', 'Analista', 1, 3800.00),
(10, 'Elena Rodríguez', 'Diseñador', 3, 4000.00),
(11, 'Diego Pérez', 'Contador', 2, 4700.00),
(12, 'Fernanda Torres', 'Gerente de Recursos Humanos', 4, 6000.00),
(13, 'Gabriel García', 'Analista', 1, 3800.00),
(14, 'Adriana Jiménez', 'Desarrollador', 2, 4100.00),
(15, 'Ricardo Gómez', 'Diseñador', 3, 3900.00),
(16, 'Camila Reyes', 'Analista', 1, 3700.00),
(17, 'Roberto Morales', 'Contador', 2, 4800.00),
(18, 'Daniela Cruz', 'Gerente de Marketing', 5, 5800.00),
(19, 'Mario Vargas', 'Analista', 1, 3600.00),
(20, 'Natalia Peralta', 'Desarrollador', 2, 4300.00),
(21, 'Luis González', 'Diseñador', 3, 3800.00),
(22, 'Valeria Ramírez', 'Analista', 1, 3800.00),
(23, 'Arturo Díaz', 'Contador', 2, 4600.00),
(24, 'Paula Castro', 'Gerente de Ventas', 6, 5700.00),
(25, 'Raul Soto', 'Analista', 1, 3800.00),
(26, 'Karla Morales', 'Desarrollador', 2, 4200.00),
(27, 'Diego Ríos', 'Diseñador', 3, 3800.00),
(28, 'Erika Guzmán', 'Analista', 1, 3900.00),
(29, 'Hugo Martínez', 'Contador', 2, 4900.00),
(30, 'Marina Ortiz', 'Gerente de Operaciones', 7, 6000.00),
(31, 'Andrés Gutiérrez', 'Analista', 1, 3800.00),
(32, 'Sara Ramírez', 'Desarrollador', 2, 4400.00),
(33, 'Alexa Díaz', 'Diseñador', 3, 3700.00),
(34, 'Jorge Castro', 'Analista', 1, 3800.00),
(35, 'Ana Belén Ruiz', 'Contador', 2, 5000.00),
(36, 'David López', 'Gerente de Proyectos', 3, 5600.00),
(37, 'Laura Pérez', 'Analista', 1, 3800.00),
(38, 'Julio Hernández', 'Desarrollador', 2, 4300.00),
(39, 'Carolina Martín', 'Diseñador', 3, 3800.00),
(40, 'Francisco Reyes', 'Analista', 1, 3800.00),
(41, 'Gloria Torres', 'Contador', 2, 4700.00),
(42, 'Cristian Sánchez', 'Gerente de Recursos Humanos', 4, 5900.00),
(43, 'Ana Paula González', 'Analista', 1, 3800.00),
(44, 'Martín Jiménez', 'Desarrollador', 2, 4100.00),
(45, 'Verónica García', 'Diseñador', 3, 3900.00),
(46, 'Rosa Méndez', 'Analista', 1, 3700.00),
(47, 'Manuel Gómez', 'Contador', 2, 4800.00),
(48, 'Patricia Flores', 'Gerente de Marketing', 5, 5900.00),
(49, 'José Vásquez', 'Analista', 1, 3600.00),
(50, 'Isabel Mendoza', 'Desarrollador', 2, 4200.00);


Select * from Empleados

SELECT 
idempleado,
nombre,
puesto,
iddepartamento,
salario,
SUM(salario) OVER(PARTITION BY puesto) AS Suma_salario,
AVG(salario) OVER(PARTITION BY puesto) AS AVG_salario
from Empleados

-- calcular el porcentaje de cada empleado sobre los salarios totales de su departamente 

SELECT 
idempleado,
nombre,
puesto,
iddepartamento,
salario,
ROUND(100 * salario / sum(salario)OVER(PARTITION BY IDDEPARTAMENTO),2) as "Porcentaje de salario total"
from Empleados


 --**********************************************************Video 89: RANK()
 /*
 Aplicar la funcion RANK(), los datos se ordenan segun los
 especificados en la clausula ORDER BY
 */


SELECT 
idempleado,
nombre,
puesto,
iddepartamento,
salario,
RANK() OVER(ORDER BY SALARIO DESC) AS Rango_Rank,
ROW_NUMBER() OVER(ORDER BY SALARIO DESC) AS Rango_ROW_NUMBER,
DENSE_RANK() OVER(ORDER BY SALARIO DESC) AS Rango_DENSE_RANK
from Empleados


 --**********************************************************Video 91:USO DE LA CLAUSULA WITH

 -- consultas CTE 

 Select * from Empleados

WITH EmpleadoCTE AS (
SELECT 
idempleado,
nombre
from Empleados)

SELECT * FROM EmpleadoCTE -- actua como una tabla temparal de la consulta previa 

-- otro ejercicio

WITH ranking_empleados as (
SELECT
idempleado,
nombre,
puesto,
iddepartamento,
salario,
rank() OVER(ORDER BY SALARIO DESC) AS rango_salario
from Empleados)

SELECT * FROM ranking_empleados WHERE rango_salario <=5
ORDER BY rango_salario



 --**********************************************************Video 92: EJERCICIO CONSULTA CRUZADA
 --**********************************************************Video 93: BEGIN TRANSACTION, COMMIT - ROLLBACK

 --RALLBACK desase todas las operaciones realizadas y COMMIT confirma y guarda todos los cambios que realices

 BEGIN TRANSACTION -- indica que todas las operacions se van a concluir con exito o no se van a llevar a cabo ningunas

 UPDATE empleados SET salario = salario *1.5
 if(SELECT AVG(salario) from empleados) >=10000
 BEGIN
    ROLLBACK TRANSACTION
    PRINT('Ejecucion revertida, promedio no comple')
 END;
 ELSE 
    BEGIN 
        COMMIT TRANSACTION
        PRINT('Salarios actualizados')
END