SELECT apellido1, apellido2, nombre FROM persona WHERE tipo = "alumno" ORDER BY apellido1, apellido2, nombre;
SELECT nombre, apellido1, apellido2 FROM persona WHERE tipo = "alumno" AND telefono IS null;
SELECT id, nombre, apellido1, apellido2, fecha_nacimiento FROM persona WHERE tipo = "alumno" AND YEAR(fecha_nacimiento) = 1999;
SELECT nombre, apellido1, apellido2, nif FROM persona WHERE tipo = "profesor" AND telefono IS null AND substring(nif, -1, 1) = "K";
SELECT id, nombre, cuatrimestre, curso, id_grado FROM asignatura WHERE cuatrimestre = 1 AND id_grado = 7 AND curso = 3 ;
SELECT persona.apellido1, persona.apellido2, persona.nombre, departamento.nombre as departamento FROM persona INNER JOIN profesor ON persona.id = profesor.id_profesor INNER JOIN departamento ON profesor.id_departamento = departamento.id WHERE tipo = "profesor" ORDER BY apellido1, persona.nombre ASC;
SELECT asignatura.nombre, anyo_inicio, anyo_fin FROM persona  INNER JOIN alumno_se_matricula_asignatura ON persona.id = alumno_se_matricula_asignatura.id_alumno INNER JOIN curso_escolar ON alumno_se_matricula_asignatura.id_curso_escolar = curso_escolar.id INNER JOIN asignatura ON alumno_se_matricula_asignatura.id_asignatura = asignatura.id WHERE nif = "26902806M";
SELECT DISTINCT departamento.nombre FROM departamento LEFT JOIN profesor ON departamento.id = profesor.id_departamento LEFT JOIN asignatura ON profesor.id_profesor = asignatura.id_profesor LEFT JOIN grado ON grado.id = asignatura.id_grado WHERE grado.nombre LIKE "%Plan 2015%";
SELECT DISTINCT nombre, apellido1, apellido2 FROM persona INNER JOIN alumno_se_matricula_asignatura ON persona.id = id_alumno LEFT JOIN curso_escolar ON alumno_se_matricula_asignatura.id_curso_escolar = curso_escolar.id WHERE persona.tipo = "alumno" AND curso_escolar.anyo_inicio = 2018;
SELECT departamento.nombre as departamento, apellido1, apellido2, persona.nombre FROM profesor LEFT JOIN persona ON profesor.id_profesor = persona.id LEFT JOIN departamento ON profesor.id_departamento = departamento.id WHERE profesor.id_departamento IS NOT NULL OR profesor.id_departamento IS NULL ORDER BY departamento.nombre, apellido1, apellido2, persona.nombre ASC;
SELECT apellido1, apellido2, persona.nombre FROM persona LEFT JOIN profesor ON persona.id = profesor.id_profesor LEFT JOIN departamento ON profesor.id_departamento = departamento.id WHERE profesor.id_departamento IS NULL AND persona.tipo = "profesor";
SELECT departamento.nombre FROM departamento LEFT JOIN profesor ON departamento.id = profesor.id_departamento WHERE profesor.id_departamento IS NULL;
SELECT apellido1, apellido2, persona.nombre FROM persona LEFT JOIN profesor ON persona.id = profesor.id_profesor LEFT JOIN asignatura ON profesor.id_profesor = asignatura.id_profesor WHERE asignatura.id_profesor IS NULL AND persona.tipo = "profesor";
SELECT id, nombre from asignatura WHERE asignatura.id_profesor IS NULL;
SELECT nombre FROM departamento;
SELECT count(*) AS total FROM persona WHERE tipo = "alumno";
SELECT count(*) AS total FROM persona WHERE tipo = "alumno" AND YEAR(fecha_nacimiento) = 1999;
SELECT departamento.nombre as departamento, count(profesor.id_departamento) AS total FROM departamento  INNER JOIN profesor ON departamento.id = profesor.id_departamento WHERE profesor.id_departamento IS NOT NULL GROUP BY departamento.nombre ORDER BY count(profesor.id_departamento) DESC;
SELECT departamento.nombre, count(profesor.id_departamento) AS total FROM departamento  LEFT JOIN profesor ON departamento.id = profesor.id_departamento GROUP BY departamento.nombre ORDER BY count(profesor.id_departamento) DESC;
SELECT grado.nombre as grau, count(asignatura.id) AS total FROM grado LEFT JOIN asignatura ON grado.id = asignatura.id_grado GROUP BY grado.nombre ORDER BY count(asignatura.id) DESC;
SELECT grado.nombre as grau, count(asignatura.id) AS total FROM grado LEFT JOIN asignatura ON grado.id = asignatura.id_grado GROUP BY grado.nombre HAVING count(asignatura.id) > 40 ORDER BY count(asignatura.id) DESC;
SELECT grado.nombre as grau, asignatura.tipo as tipo, sum(asignatura.creditos) as total_creditos FROM grado LEFT JOIN asignatura ON grado.id = asignatura.id_grado WHERE grado.nombre LIKE "%Plan 2015%" AND asignatura.creditos IS NOT NULL GROUP BY grado.nombre, asignatura.tipo;
SELECT anyo_inicio, count(DISTINCT alumno_se_matricula_asignatura.id_alumno) AS total FROM curso_escolar INNER JOIN alumno_se_matricula_asignatura ON curso_escolar.id = alumno_se_matricula_asignatura.id_curso_escolar WHERE alumno_se_matricula_asignatura.id_alumno IS NOT NULL GROUP BY curso_escolar.anyo_inicio;
SELECT persona.id,persona.nombre, persona.apellido1, persona.apellido2, count(asignatura.id) AS total FROM profesor INNER JOIN persona ON profesor.id_profesor = persona.id INNER JOIN asignatura ON profesor.id_profesor = asignatura.id_profesor GROUP BY persona.nombre ORDER BY asignatura.id DESC;
SELECT * FROM persona WHERE persona.tipo = "alumno" ORDER BY (fecha_nacimiento) DESC LIMIT 1;
-- 16. Retorna el nombre total d'alumnes que hi ha. (total)


-- 17. Calcula quants alumnes van néixer en 1999. (total)


-- 18. Calcula quants professors/es hi ha en cada departament. El resultat només ha de mostrar dues columnes, una amb el nom del departament i una altra amb el nombre de professors/es que hi ha en aquest departament. El resultat només ha d'incloure els departaments que tenen professors/es associats i haurà d'estar ordenat de major a menor pel nombre de professors/es. (departamento, total)


-- 19. Retorna un llistat amb tots els departaments i el nombre de professors/es que hi ha en cadascun d'ells. Tingui en compte que poden existir departaments que no tenen professors/es associats. Aquests departaments també han d'aparèixer en el llistat. (departamento, total)


-- 20. Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d'assignatures que té cadascun. Tingues en compte que poden existir graus que no tenen assignatures associades. Aquests graus també han d'aparèixer en el llistat. El resultat haurà d'estar ordenat de major a menor pel nombre d'assignatures. (grau, total)


-- 21. Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d'assignatures que té cadascun, dels graus que tinguin més de 40 assignatures associades. (grau, total)


-- 22. Retorna un llistat que mostri el nom dels graus i la suma del nombre total de crèdits que hi ha per a cada tipus d'assignatura. El resultat ha de tenir tres columnes: nom del grau, tipus d'assignatura i la suma dels crèdits de totes les assignatures que hi ha d'aquest tipus. (grau, tipus, total_creditos)


-- 23. Retorna un llistat que mostri quants alumnes s'han matriculat d'alguna assignatura en cadascun dels cursos escolars. El resultat haurà de mostrar dues columnes, una columna amb l'any d'inici del curs escolar i una altra amb el nombre d'alumnes matriculats. (anyo_inicio, total)


-- 24. Retorna un llistat amb el nombre d'assignatures que imparteix cada professor/a. El llistat ha de tenir en compte aquells professors/es que no imparteixen cap assignatura. El resultat mostrarà cinc columnes: id, nom, primer cognom, segon cognom i nombre d'assignatures. El resultat estarà ordenat de major a menor pel nombre d'assignatures. (id, nombre, apellido1, apellido2, total)


-- 25. Retorna totes les dades de l'alumne/a més jove. (*)


-- 26. Retorna un llistat amb els professors/es que tenen un departament associat i que no imparteixen cap assignatura. (apellido1, apellido2, nombre)

