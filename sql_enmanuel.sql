-- vamos a crear la base de datos para la clinica
CREATE DATABASE IF NOT EXISTS miclinica;
-- vamos a utilizar la bd y crear sus objetos
USE miclinica;
-- vamos a crear las tablas para entidades independientes
CREATE TABLE IF NOT EXISTS especialidades(
Id_especialidad INT UNIQUE NOT NULL PRIMARY KEY,
Nombre_especialidad VARCHAR(50)
);


CREATE TABLE IF NOT EXISTS pacientes(
Id_paciente INT UNIQUE NOT NULL PRIMARY KEY,
Nombreuno_paciente VARCHAR(50) NOT NULL,
Nombredos_paciente VARCHAR(50) NULL,
Apellidouno_paciente VARCHAR(50) NOT NULL,
Apellidodos_paciente VARCHAR(50) NULL,
Estado VARCHAR(20) NOT NULL
);

 CREATE TABLE IF NOT EXISTS serviciosmedicos(
 Id_serviciomedico  INT UNIQUE NOT NULL PRIMARY KEY,
 Nombre_serviciomedico VARCHAR(50),
 Costo DECIMAL (10,2) NOT NULL
 );
 
  CREATE TABLE IF NOT EXISTS equiposmedicos(
 Id_equipomedico  INT UNIQUE NOT NULL PRIMARY KEY,
 Nombre_equipomedico VARCHAR(50) NOT NULL                                           

 );
 -- creamos las tablas dependientes y sus constraint
 
 CREATE TABLE IF NOT EXISTS medicos(
Id_medico INT UNIQUE NOT NULL PRIMARY KEY,
Nombreuno_medico VARCHAR(50) NOT NULL,
Nombredos_medico VARCHAR(50) NULL,
Apellidouno_medico VARCHAR(50) NOT NULL,
Apellidodos_medico VARCHAR(50) NULL,
Id_especialidad INT NOT NULL,

CONSTRAINT fk_medico_especialidad FOREIGN KEY (Id_especialidad) REFERENCES especialidades (Id_especialidad)

);

CREATE TABLE IF NOT EXISTS serviciosequipos(
Id_servicioequipo INT AUTO_INCREMENT UNIQUE NOT NULL PRIMARY KEY,
Id_serviciomedico  INT NOT NULL,
Id_equipomedico  INT  NOT NULL,
  
CONSTRAINT fk_servicioequipo_serviciomedico FOREIGN KEY (Id_serviciomedico) REFERENCES serviciosmedicos (Id_serviciomedico),
CONSTRAINT fk_servicioequipo_equipomedico FOREIGN KEY (Id_equipomedico) REFERENCES equiposmedicos (Id_equipomedico)
 
);

CREATE TABLE IF NOT EXISTS citas(
Id_cita INT AUTO_INCREMENT UNIQUE NOT NULL PRIMARY KEY,
Id_paciente INT NOT NULL,
Id_medico INT NOT NULL,
Id_serviciomedico  INT NULL,
Fecha DATE NOT NULL,
Hora TIME NOT NULL,
Valortotal DECIMAL (10,2) NOT NULL,

CONSTRAINT fk_cita_paciente FOREIGN KEY (Id_paciente) REFERENCES pacientes (Id_paciente),
CONSTRAINT fk_cita_medico FOREIGN KEY (Id_medico) REFERENCES medicos (Id_medico),
CONSTRAINT fk_cita_serviciomedico FOREIGN KEY (Id_serviciomedico) REFERENCES serviciosmedicos (Id_serviciomedico)
);