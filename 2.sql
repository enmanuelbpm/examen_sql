-- creamos la data para la base de datos
-- cargamos la data para la tabla especialidades
INSERT INTO especialidades(Id_especialidad,Nombre_especialidad)VALUES
(4,"Cardiologia"),
(5,"Pediatria"),
(6,"Neurologia");
-- cargamos la data para los pacientes
SELECT * FROM especialidades;
INSERT INTO pacientes (Id_paciente,Nombreuno_paciente,Nombredos_paciente,Apellidouno_paciente,Apellidodos_paciente,estado) VALUES
(106,"Luis","Andres","Gomez","Gomez","Urgencias"),
(102,"luisa"," ","Arias","","Fallecida"),
(103,"Ana","Maria","lopez"," ","Urgencias"),
(104,"Mario","Andres","Fernandez","gomez","Fallecido");
SELECT *FROM pacientes;
INSERT INTO serviciosmedicos (Id_serviciomedico,Nombre_serviciomedico)VALUES
(201,"consulta general",5000.0),
(202,"laboratorio",8000.0),
(203,"rayos x",10000.0),
(204,"ecografia",15000.0);

INSERT INTO equiposmedicos(Id_equipomedico,Nombre_equipomedico)VALUES
(301,"fonoendoscopia"),
(302,"estarctor de muestras"),
(303,"x ray equiment"),
(304,"maquina de ultrasonido");

INSERT INTO medicos(Id_medico,Nombreuno_medico,Nombredos_medico,Apellidouno_medico,Apellidodos_medico,Id_especialidad) VALUES
(401,"Dana","", "Mora", "Cruz", 1),
(402,"diego","fernando","velez","", 2),
(403,"Tania","Maria","velasquez","dias", 3);

INSERT INTO serviciosequipos(Id_serviciomedico,Id_equipomedico) VALUES
(204,300),
(205,301),
(206,302),
(207,203);

INSERT INTO citas(Id_paciente,Id_medico,Id_serviciomedico,Fecha,Hora,Valortotal)VALUES
(100,400,204,'2025-11-17','11.30:00',125500.0),
(102,402,206,'2025-11-19','8.30:00',125500.0);