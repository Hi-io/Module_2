SELECT idAlumno,nombre,apellido,TIMESTAMPDIFF(YEAR,fechaNacimiento,CURDATE()) as "Edad"
from alumno
WHERE TIMESTAMPDIFF(YEAR,fechaNacimiento,CURDATE())>(
SELECT avg(TIMESTAMPDIFF(YEAR,fechaNacimiento,CURDATE()))
from alumno
);