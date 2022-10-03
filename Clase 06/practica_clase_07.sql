use henry;

INSERT INTO carrera (nombre)
VALUES('Full Stack');

INSERT INTO instructor
VALUES (NULL, '575744', 'Jimena', 'Nada', '1985-04-04', '2021-01-01'),
		(NULL, '657765', 'Alberto', 'Sacardi', '1990-04-04', '2021-06-01');

INSERT INTO cohorte
VALUES(NULL, 'data01', 1, 2, '2022-04-25', '2022-10-10'),
		(NULL, 'data02', 1, 1, '2022-10-25', '2022-12-22');


INSERT INTO alumno
VALUES (NULL, '253651', 'Roberto', 'Jimenez', '1998-05-05', curdate(), 1),
		(NULL, '254551', 'Ana', 'Diaz', '1999-03-05', curdate(), 1),
        (NULL, '160651', 'Pedro', 'Alto', '2005-02-15', curdate(), 2);


UPDATE instructor
SET fechaNacimiento = '1985-04-05'
WHERE idInstructor = 1;

SELECT nombre, apellido, fechaNacimiento
FROM alumno;

SELECT *
FROM alumno
-- WHERE idAlumno = 4;
-- WHERE fechaNacimiento > '1999-01-01';
-- WHERE fechaNacimiento BETWEEN '1998-01-01' AND '1998-12-31';
WHERE nombre LIKE 'a%';

SELECT *
FROM carrera
WHERE nombre LIKE '%Full%';

SELECT *
FROM alumno
-- WHERE nombre = 'Roberto' OR nombre = 'Pedro';
WHERE nombre IN ('Roberto', 'Pedro');