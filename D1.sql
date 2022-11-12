--Desafío 1 - Introducción a Bases de Datos

--1. Ingresa al cliente de postgreSQL desde el terminal

--Creamos base de datos solicitada:
CREATE DATABASE desafio_patricio_ramirez_g21;

 --eliminamos base de datos
--DROP DATABASE desafio_patricio_ramirez_g21;

--Conectamos a la base de datos con el comando:
\c desafio_patricio_ramirez_g21;

-- Se crea tabla Clientes (Customers), con
CREATE TABLE customers(
id SERIAL PRIMARY KEY,
email VARCHAR(50) UNIQUE,
customer_name VARCHAR,
phone VARCHAR(16),
company VARCHAR(50),
priority SMALLINT NOT NULL CHECK (priority >= 1 AND priority <= 10)
);
--La restricción "unique" impide la duplicación
-- CHECK en SQL se usa para limitar el rango de valores.


--ingresamos los clientes
INSERT INTO customers (email, customer_name, phone, company, priority) VALUES
('andres@dlatam.cl', 'Andres', '+569-7654320', 'Apple ', 8),
('dirk@dlatam.cl', 'Dirk', '+569-7654323'  ,'Spotify', 10),
('consuelo@dlatam.cl', 'Consuelo', '+569-7654321', 'Disney', 9),
('cristian@dlatam.cl', 'Cristian', '+569-7654322', 'Activion', 5),
('enzo@dlatam.cl', 'Enzo', '+569-7654324', 'Microsoft', 6);

--Visualizamos los datos ingresados:
SELECT * FROM customers;

--seleccionar 3 clientes de mayor prioridad
SELECT * FROM customers ORDER BY priority DESC, id ASC LIMIT 3; 

--Selecciona, de la tabla clientes, una prioridad o una empresa, de forma que el resultado devuelva 2 registros.
SELECT * FROM customers WHERE company = 'Spotify' OR priority = 8;

--Salimos de postgreSQL
\q