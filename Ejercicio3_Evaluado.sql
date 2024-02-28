drop database if exists db_Ejercicio3;

CREATE DATABASE db_Ejercicio3;

Use db_Ejercicio3;

CREATE TABLE tbProfesores(
id_profesor varchar(36) default(UUID()) primary key not null,
nombre varchar(100),
apellido varchar(100),
correo_electronico varchar(100)
);

CREATE TABLE tbMaterias(
id_materia varchar(36) default(UUID()) primary key,
nombre_materia varchar(100),
grupo_materia int,
id_profesor VARCHAR(36),
cupos int
);

CREATE TABLE tbCalificaciones(
id_calificacion varchar(36) default(UUID()) primary key,
id_inscripcion VARCHAR(36),
calificacion_final decimal(5,2),
fecha_calificacion date
);

CREATE TABLE tbAlumnos(
id_alumno varchar(36) default(UUID()) primary key,
carnet_alumno varchar(10),
nombre_alumno varchar(50),
apellido_alumno varchar(50),
edad_alumno int
);

CREATE TABLE tbInscripciones(
id_inscripcion varchar(36) default(UUID()) primary key,
id_alumno VARCHAR(36),
id_materia VARCHAR(36),
fecha_inscripcion date,
estado enum('Activo','Inactivo')
);

/*Referencias*/  

/*Tabla materias*/

ALTER TABLE tbMaterias 
ADD CONSTRAINT FK_Materia_Profesor 
FOREIGN KEY (id_profesor) 
REFERENCES tbProfesores(id_profesor);

/*Tabla Calificaciones*/
ALTER TABLE tbCalificaciones 
ADD CONSTRAINT FK_Calificaciones_inscripcion 
FOREIGN KEY (id_inscripcion) 
REFERENCES tbInscripciones(id_inscripcion);

/*Tabla inscripciones*/
ALTER TABLE tbInscripciones 
ADD CONSTRAINT FK_id_alumno_Inscripcion 
FOREIGN KEY (id_alumno) 
REFERENCES tbAlumnos(id_alumno);

ALTER TABLE tbInscripciones 
ADD CONSTRAINT FK_Inscripcion_Materia 
FOREIGN KEY (id_materia) 
REFERENCES tbMaterias(id_materia);

/*Procedimentos*/

/*Tabla profesores*/
DELIMITER //

CREATE PROCEDURE InsertarProfesor(
    IN p_nombre VARCHAR(100),
    IN p_apellido VARCHAR(100),
    IN p_correo_electronico VARCHAR(100)
)
BEGIN
    DECLARE v_id_profesor VARCHAR(36);
    
    -- Generar UUID para el id_profesor
    SET v_id_profesor = UUID();
    
    -- Insertar el registro utilizando el procedimiento
    INSERT INTO tbProfesores (id_profesor, nombre, apellido, correo_electronico) 
    VALUES (v_id_profesor, p_nombre, p_apellido, p_correo_electronico);
END;
//

DELIMITER ;

/*Tabla Materias*/
DELIMITER //

CREATE PROCEDURE InsertarMateria(
    IN p_nombre_materia VARCHAR(100),
    IN p_grupo_materia INT,
    IN p_id_profesor VARCHAR(36),  -- Cambiado a VARCHAR(36)
    IN p_cupos INT
)
BEGIN
    DECLARE v_id_materia VARCHAR(36);
    
    -- Generar UUID para el id_materia
    SET v_id_materia = UUID();
    
    -- Insertar el registro utilizando el procedimiento
    INSERT INTO tbMaterias (id_materia, nombre_materia, grupo_materia, id_profesor, cupos) 
    VALUES (v_id_materia, p_nombre_materia, p_grupo_materia, p_id_profesor, p_cupos);
END;
//

DELIMITER ;


/*tabla calificaciones*/

DELIMITER //

CREATE PROCEDURE InsertarCalificacion(
    IN p_id_inscripcion INT,
    IN p_calificacion_final DECIMAL(5,2),
    IN p_fecha_calificacion DATE
)
BEGIN
    DECLARE v_id_calificacion VARCHAR(36);
    
    -- Generar UUID para el id_calificacion
    SET v_id_calificacion = UUID();
    
    -- Insertar el registro utilizando el procedimiento
    INSERT INTO tbCalificaciones (id_calificacion, id_inscripcion, calificacion_final, fecha_calificacion) 
    VALUES (v_id_calificacion, p_id_inscripcion, p_calificacion_final, p_fecha_calificacion);
END;
//

DELIMITER ;


/*Alumnos*/
DELIMITER //

CREATE PROCEDURE InsertarAlumnos(
	IN p_carnet_alumno varchar(10),
	IN p_nombre_alumno varchar(10),
    IN p_apellido_alumno varchar(10),
    IN edad_alumno int
    )
BEGIN
	DECLARE v_id_alumno varchar(36);
    
    SET v_id_alumno = UUID();
    
    INSERT INTO tbAlumnos (id_alumno, carnet_alumno, nombre_alumno, apellido_alumno, edad_alumno) 
    VALUES (v_id_alumno, p_carnet_alumno, p_nombre_alumno, p_apellido_alumno, edad_alumno);
END;
//

DELIMITER ;

/*Tabla Inscripciones*/

DELIMITER //

CREATE PROCEDURE InsertarInscripcion(
	IN p_id_alumno varchar(36),
    IN p_id_materia varchar(36),
    IN p_fecha_inscripcion date,
    IN p_estado enum('Activo','Inactivo')
)
BEGIN
	DECLARE v_id_inscripcion varchar(36);
    
    
    SET v_id_inscripcion = UUID();
    
    INSERT INTO tbInscripciones(id_inscripcion, id_inscripcion, id_materia, fecha_inscripcion, estado) 
    VALUES (v_id_inscripcion, p_id_alumno, p_id_materia, p_fecha_inscripcion, p_estado);
    
END;
//
DELIMITER ;

/*TRIGGER */

DELIMITER //

CREATE TRIGGER after_inscripcion_insert
AFTER INSERT ON tbInscripciones
FOR EACH ROW
BEGIN
    DECLARE cupos_disponibles INT;
    
    -- Obtener el número actual de cupos disponibles de la materia inscrita
    SELECT cupos INTO cupos_disponibles
    FROM tbMaterias
    WHERE id_materia = NEW.id_materia;
    
    -- Decrementar el número de cupos disponibles en 1
    SET cupos_disponibles = cupos_disponibles - 1;
    
    -- Actualizar el número de cupos disponibles en la materia inscrita
    UPDATE tbMaterias
    SET cupos = cupos_disponibles
    WHERE id_materia = NEW.id_materia;
END;
//

DELIMITER ;

/*datos*/

select * from tbProfesores;	

CALL InsertarProfesor('John', 'Doe', 'john.doe@example.com');
CALL InsertarProfesor('Jane', 'Smith', 'jane.smith@example.com');
CALL InsertarProfesor('Michael', 'Johnson', 'michael.johnson@example.com');
CALL InsertarProfesor('Emily', 'Williams', 'emily.williams@example.com');
CALL InsertarProfesor('Christopher', 'Jones', 'christopher.jones@example.com');
CALL InsertarProfesor('Jessica', 'Brown', 'jessica.brown@example.com');
CALL InsertarProfesor('David', 'Davis', 'david.davis@example.com');
CALL InsertarProfesor('Sarah', 'Miller', 'sarah.miller@example.com');
CALL InsertarProfesor('Daniel', 'Wilson', 'daniel.wilson@example.com');
CALL InsertarProfesor('Jennifer', 'Taylor', 'jennifer.taylor@example.com');
CALL InsertarProfesor('Matthew', 'Anderson', 'matthew.anderson@example.com');
CALL InsertarProfesor('Elizabeth', 'Thomas', 'elizabeth.thomas@example.com');
CALL InsertarProfesor('Andrew', 'Jackson', 'andrew.jackson@example.com');
CALL InsertarProfesor('Lauren', 'White', 'lauren.white@example.com');
CALL InsertarProfesor('William', 'Harris', 'william.harris@example.com');

CALL InsertarMateria('Matemáticas', 1, (SELECT id_profesor FROM tbProfesores ORDER BY id_profesor LIMIT 1), 30);
CALL InsertarMateria('algebrafia', 2, (SELECT id_profesor FROM tbProfesores ORDER BY id_profesor LIMIT 1, 1), 32);
CALL InsertarMateria('Literatura', 1, (SELECT id_profesor FROM tbProfesores ORDER BY id_profesor LIMIT 2, 1), 28);
CALL InsertarMateria('Biología', 2, (SELECT id_profesor FROM tbProfesores ORDER BY id_profesor LIMIT 3, 1), 32);
CALL InsertarMateria('Física', 1, (SELECT id_profesor FROM tbProfesores ORDER BY id_profesor LIMIT 4, 1), 30);
CALL InsertarMateria('Química', 2, (SELECT id_profesor FROM tbProfesores ORDER BY id_profesor LIMIT 5, 1), 29);
CALL InsertarMateria('Economía', 1, (SELECT id_profesor FROM tbProfesores ORDER BY id_profesor LIMIT 6, 1), 27);
CALL InsertarMateria('Geografía', 2, (SELECT id_profesor FROM tbProfesores ORDER BY id_profesor LIMIT 7, 1), 28);
CALL InsertarMateria('Inglés', 1, (SELECT id_profesor FROM tbProfesores ORDER BY id_profesor LIMIT 8, 1), 30);
CALL InsertarMateria('Arte', 2, (SELECT id_profesor FROM tbProfesores ORDER BY id_profesor LIMIT 9, 1), 26);
CALL InsertarMateria('Programación', 1, (SELECT id_profesor FROM tbProfesores ORDER BY id_profesor LIMIT 10, 1), 30);
CALL InsertarMateria('Educación Física', 2, (SELECT id_profesor FROM tbProfesores ORDER BY id_profesor LIMIT 11, 1), 25);
CALL InsertarMateria('Filosofía', 1, (SELECT id_profesor FROM tbProfesores ORDER BY id_profesor LIMIT 12, 1), 29);
CALL InsertarMateria('Psicología', 2, (SELECT id_profesor FROM tbProfesores ORDER BY id_profesor LIMIT 13, 1), 27);
CALL InsertarMateria('Sociología', 1, (SELECT id_profesor FROM tbProfesores ORDER BY id_profesor LIMIT 14, 1), 26);


CALL InsertarAlumnos('AB123', 'Alice', 'Adams', 20);
CALL InsertarAlumnos('CD456', 'Bob', 'Brown', 22);
CALL InsertarAlumnos('EF789', 'Charlie', 'Clark', 21);
CALL InsertarAlumnos('GH012', 'David', 'Davis', 19);
CALL InsertarAlumnos('IJ345', 'Emily', 'Evans', 23);
CALL InsertarAlumnos('KL678', 'Fiona', 'Foster', 20);
CALL InsertarAlumnos('MN901', 'George', 'Green', 22);
CALL InsertarAlumnos('OP234', 'Hannah', 'Hall', 21);
CALL InsertarAlumnos('QR567', 'Ian', 'Irwin', 20);
CALL InsertarAlumnos('ST890', 'Jessica', 'Jones', 23);
CALL InsertarAlumnos('UV123', 'Kevin', 'King', 21);
CALL InsertarAlumnos('WX456', 'Laura', 'Lee', 22);
CALL InsertarAlumnos('YZ789', 'Matthew', 'Moore', 19);
CALL InsertarAlumnos('AB012', 'Nancy', 'Nelson', 20);
CALL InsertarAlumnos('CD345', 'Olivia', 'Owens', 21);

CALL InsertarInscripcion((SELECT id_alumno FROM tbAlumnos LIMIT 1), (SELECT id_materia FROM tbMaterias LIMIT 1), '2024-01-01', 'Activo');
CALL InsertarInscripcion((SELECT id_alumno FROM tbAlumnos LIMIT 2), (SELECT id_materia FROM tbMaterias LIMIT 2), '2024-01-02', 'Activo');
CALL InsertarInscripcion((SELECT id_alumno FROM tbAlumnos LIMIT 3), (SELECT id_materia FROM tbMaterias LIMIT 3), '2024-01-03', 'Inactivo');
CALL InsertarInscripcion((SELECT id_alumno FROM tbAlumnos LIMIT 4), (SELECT id_materia FROM tbMaterias LIMIT 4), '2024-01-04', 'Activo');
CALL InsertarInscripcion((SELECT id_alumno FROM tbAlumnos LIMIT 5), (SELECT id_materia FROM tbMaterias LIMIT 5), '2024-01-05', 'Activo');
CALL InsertarInscripcion((SELECT id_alumno FROM tbAlumnos LIMIT 6), (SELECT id_materia FROM tbMaterias LIMIT 6), '2024-01-06', 'Inactivo');
CALL InsertarInscripcion((SELECT id_alumno FROM tbAlumnos LIMIT 7), (SELECT id_materia FROM tbMaterias LIMIT 7), '2024-01-07', 'Activo');
CALL InsertarInscripcion((SELECT id_alumno FROM tbAlumnos LIMIT 8), (SELECT id_materia FROM tbMaterias LIMIT 8), '2024-01-08', 'Activo');
CALL InsertarInscripcion((SELECT id_alumno FROM tbAlumnos LIMIT 9), (SELECT id_materia FROM tbMaterias LIMIT 9), '2024-01-09', 'Inactivo');
CALL InsertarInscripcion((SELECT id_alumno FROM tbAlumnos LIMIT 10), (SELECT id_materia FROM tbMaterias LIMIT 10), '2024-01-10', 'Activo');
CALL InsertarInscripcion((SELECT id_alumno FROM tbAlumnos LIMIT 11), (SELECT id_materia FROM tbMaterias LIMIT 11), '2024-01-11', 'Activo');
CALL InsertarInscripcion((SELECT id_alumno FROM tbAlumnos LIMIT 12), (SELECT id_materia FROM tbMaterias LIMIT 12), '2024-01-12', 'Inactivo');
CALL InsertarInscripcion((SELECT id_alumno FROM tbAlumnos LIMIT 13), (SELECT id_materia FROM tbMaterias LIMIT 13), '2024-01-13', 'Activo');
CALL InsertarInscripcion((SELECT id_alumno FROM tbAlumnos LIMIT 14), (SELECT id_materia FROM tbMaterias LIMIT 14), '2024-01-14', 'Activo');
CALL InsertarInscripcion((SELECT id_alumno FROM tbAlumnos LIMIT 15), (SELECT id_materia FROM tbMaterias LIMIT 15), '2024-01-15', 'Inactivo');


-- Inserciones para tbCalificaciones
CALL InsertarCalificacion((SELECT id_inscripcion FROM tbInscripciones LIMIT 1), 85.5, '2024-01-01');
CALL InsertarCalificacion((SELECT id_inscripcion FROM tbInscripciones LIMIT 2), 78.0, '2024-01-02');
CALL InsertarCalificacion((SELECT id_inscripcion FROM tbInscripciones LIMIT 3), 90.2, '2024-01-03');
CALL InsertarCalificacion((SELECT id_inscripcion FROM tbInscripciones LIMIT 4), 95.3, '2024-01-04');
CALL InsertarCalificacion((SELECT id_inscripcion FROM tbInscripciones LIMIT 5), 82.7, '2024-01-05');
CALL InsertarCalificacion((SELECT id_inscripcion FROM tbInscripciones LIMIT 6), 88.9, '2024-01-06');
CALL InsertarCalificacion((SELECT id_inscripcion FROM tbInscripciones LIMIT 7), 91.6, '2024-01-07');
CALL InsertarCalificacion((SELECT id_inscripcion FROM tbInscripciones LIMIT 8), 79.4, '2024-01-08');
CALL InsertarCalificacion((SELECT id_inscripcion FROM tbInscripciones LIMIT 9), 83.8, '2024-01-09');
CALL InsertarCalificacion((SELECT id_inscripcion FROM tbInscripciones LIMIT 10), 87.2, '2024-01-10');
CALL InsertarCalificacion((SELECT id_inscripcion FROM tbInscripciones LIMIT 11), 94.5, '2024-01-11');
CALL InsertarCalificacion((SELECT id_inscripcion FROM tbInscripciones LIMIT 12), 75.6, '2024-01-12');
CALL InsertarCalificacion((SELECT id_inscripcion FROM tbInscripciones LIMIT 13), 86.3, '2024-01-13');
CALL InsertarCalificacion((SELECT id_inscripcion FROM tbInscripciones LIMIT 14), 92.8, '2024-01-14');
CALL InsertarCalificacion((SELECT id_inscripcion FROM tbInscripciones LIMIT 15), 89.1, '2024-01-15');
