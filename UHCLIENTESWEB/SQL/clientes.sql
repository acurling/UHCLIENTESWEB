

/*
   crear base de datos de clientes (codigo, nombre, telefono, fechanacimiento, Estado)

*/

-- DDL
CREATE DATABASE UHBDCLIENTES
GO

USE UHBDCLIENTES
go

DROP TABLE CLIENTES
GO
CREATE TABLE CLIENTES
(
 cedula int identity(1,1) primary key, -- no se puede repetir y es unico
 nombre varchar(50),
 telefono varchar(8) UNIQUE NOT NULL,
 fecha_nacimiento date,
 estado bit default 1, -- 1 o 0
 saldo float Default 0 -- Restriccion Default 
)
GO

-- DML

--  SELECT  - Consulta

select * from clientes
SELECT CEDULA, NOMBRE, TELEFONO, ESTADO FROM CLIENTES
SELECT * FROM CLIENTES WHERE ESTADO = 1
SELECT * FROM CLIENTES WHERE CEDULA >=6 AND CEDULA <=8
SELECT * FROM CLIENTES WHERE NOMBRE LIKE '%O'

SELECT COUNT(*) AS Cantidad FROM CLIENTES
SELECT SUM(SALDO) AS SUMATORIA FROM CLIENTES
SELECT MAX(SALDO) AS SUMATORIA FROM CLIENTES


DELETE CLIENTES WHERE CEDULA = 4 )

--   UPDATE  - Actualizar
UPDATE CLIENTES SET NOMBRE= 'Pablo', fecha_nacimiento='02-02-2003' WHERE CEDULA =13

--   INSERT  - Ingresar

INSERT INTO CLIENTES (NOMBRE, TELEFONO, fecha_nacimiento, ESTADO, saldo) VALUES ('Jose','123','01/01/2000',0,500)
INSERT INTO CLIENTES (NOMBRE, TELEFONO, fecha_nacimiento, ESTADO,saldo) VALUES ('Lucia','631','01/01/2000',1,400)
INSERT INTO CLIENTES (NOMBRE, TELEFONO, fecha_nacimiento, saldo) VALUES ('Laura','456','10/20/2015',300)
INSERT INTO CLIENTES (NOMBRE, TELEFONO, fecha_nacimiento) VALUES ('Marcos','897','10/20/2015'),
('Susana','784','12/20/2012'),('Santiago','647','12/20/1990')
INSERT INTO CLIENTES (NOMBRE, fecha_nacimiento) VALUES ('Karina','04/10/1997')

--   DELETE  - Eliminar

DELETE CLIENTES WHERE CEDULA = 6


CREATE TABLE CATEGORIA
(
  ID INT IDENTITY PRIMARY KEY, 
  DESCRIPCION VARCHAR(100)
  )

  SELECT * FROM CATEGORIA
  INSERT INTO CATEGORIA VALUES ('DESECHABLES'), ('COMESTIBLES')