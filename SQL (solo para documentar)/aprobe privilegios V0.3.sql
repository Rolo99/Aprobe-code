-- Creacion de administrador y sus privilegios --
CREATE USER 'Administrador' IDENTIFIED BY 'admin';



-- privilegios --

/* -----------------SELECT/VER----------------------- */
GRANT SELECT ON aprobe.* 
TO 'Administrador'@'localhost' IDENTIFIED BY 'admin';


/* -----------------UPDATE--------------------------- */
GRANT UPDATE ON  aprobe.logadmin
TO 'Administrador'@'localhost' IDENTIFIED BY 'admin';
-- -------------------------------------------------
GRANT UPDATE ON  aprobe.logcomitebecas
TO 'Administrador'@'localhost' IDENTIFIED BY 'admin';
-- -------------------------------------------------
GRANT UPDATE ON  aprobe.logestudiante
TO 'Administrador'@'localhost' IDENTIFIED BY 'admin';


/* -----------------DELETE--------------------------- */
GRANT DELETE ON  aprobe.logadmin
TO 'Administrador'@'admin' IDENTIFIED BY 'admin';
-- -------------------------------------------------
GRANT DELETE ON  aprobe.logcomitebecas
TO 'Administrador'@'localhost' IDENTIFIED BY 'admin';
-- -------------------------------------------------
GRANT DELETE ON  aprobe.logestudiante
TO 'Administrador'@'localhost' IDENTIFIED BY 'admin';


/* -----------------INSERT--------------------------- */
GRANT INSERT ON  aprobe.logadmin
to 'Administrador'@'localhost' IDENTIFIED BY 'admin';
-- -------------------------------------------------
GRANT INSERT ON  aprobe.logcomitebecas
to 'Administrador'@'localhost' IDENTIFIED BY 'admin';


-- creaciones de comite de beca y sus privilegios --
CREATE USER 'ComiteBeca' IDENTIFIED BY 'comite';


-- privilegios --

/* -----------------SELECT/VER----------------------- */
GRANT SELECT ON aprobe.accesocentroeducativo 
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.becasmiembro 
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.bitacora 
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.cacerio 
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.canton 
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.condicion 
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.condicionse
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.distrito 
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.empresatransp 
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.encargados
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.escolaridad 
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.estadosolicitud 
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.estudiantecercaniaotrocole 
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.estudiantes 
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.estudiantesituacionesp 
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.grupofamiliar 
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.grupofamiliarmiembros 
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.ingresosgrupofamiliar 
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.ingresosocupacion 
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.logcomitebecas 
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.mediotransporte
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.miembrosfamilia
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.nacionalidad
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.otrosingresos
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.parentesco
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.provincia
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.recorrido
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.ruta
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.rutaestudiante
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.solicitudestudiante
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';


/* -------------------UPDATE------------------------- */
GRANT UPDATE on aprobe.logcomitebecas
to 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT UPDATE on aprobe.estadosolicitud
to 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */
GRANT UPDATE ON aprobe.condicion 
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */

/* -----------------INSERT--------------------------- */
GRANT INSERT ON aprobe.condicion 
TO 'ComiteBeca'@'localhost' IDENTIFIED BY 'comite';
/* -------------------------------------------------- */


-- creaciones de estudiantes y sus privilegios --
CREATE USER 'Estudiante' IDENTIFIED BY 'estu';


-- privilegios --


/* -----------------SELECT/VER----------------------- */
GRANT SELECT ON aprobe.accesocentroeducativo 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.becasmiembro 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.cacerio 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.canton 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- 
GRANT SELECT ON aprobe.condicion 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';*/
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.condicionse
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.distrito 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.empresatransp 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.`encargados`
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.escolaridad 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.estadosolicitud 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.estudiantecercaniaotrocole 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.estudiantes 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.estudiantesituacionesp 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.grupofamiliar 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.grupofamiliarmiembros 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.ingresosgrupofamiliar 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.ingresosocupacion 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.logestudiante 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.mediotransporte
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.miembrosfamilia
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.nacionalidad
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.otrosingresos
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.parentesco
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.provincia
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.recorrido
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.ruta
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.rutaestudiante
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT SELECT ON aprobe.solicitudestudiante
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';



/* -------------------UPDATE------------------------- */
GRANT UPDATE ON aprobe.logestudiante
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/*--------------------------------------------------- */
GRANT UPDATE ON aprobe.accesocentroeducativo 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT UPDATE ON aprobe.becasmiembro 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT UPDATE ON aprobe.cacerio 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT UPDATE ON aprobe.canton 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT UPDATE ON aprobe.condicion 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT UPDATE ON aprobe.condicionse
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT UPDATE ON aprobe.distrito 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT UPDATE ON aprobe.empresatransp 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT UPDATE ON aprobe.`encargados`
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT UPDATE ON aprobe.escolaridad 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT UPDATE ON aprobe.estudiantecercaniaotrocole 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT UPDATE ON aprobe.estudiantes 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT UPDATE ON aprobe.estudiantesituacionesp 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT UPDATE ON aprobe.grupofamiliar 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT UPDATE ON aprobe.grupofamiliarmiembros 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT UPDATE ON aprobe.ingresosgrupofamiliar 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT UPDATE ON aprobe.ingresosocupacion 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT UPDATE ON aprobe.mediotransporte
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT UPDATE ON aprobe.miembrosfamilia
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT UPDATE ON aprobe.nacionalidad
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT UPDATE ON aprobe.otrosingresos
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT UPDATE ON aprobe.parentesco
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT UPDATE ON aprobe.provincia
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT UPDATE ON aprobe.recorrido
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT UPDATE ON aprobe.ruta
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT UPDATE ON aprobe.rutaestudiante
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';


/* -------------------INSERT------------------------- */
GRANT INSERT ON aprobe.accesocentroeducativo 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT INSERT ON aprobe.becasmiembro 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT INSERT ON aprobe.cacerio 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT INSERT ON aprobe.canton 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT INSERT ON aprobe.condicion 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT INSERT ON aprobe.condicionse
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT INSERT ON aprobe.distrito 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT INSERT ON aprobe.empresatransp 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT INSERT ON aprobe.`encargados`
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT INSERT ON aprobe.escolaridad 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT INSERT ON aprobe.estudiantecercaniaotrocole 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT INSERT ON aprobe.estudiantes 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT INSERT ON aprobe.estudiantesituacionesp 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT INSERT ON aprobe.grupofamiliar 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT INSERT ON aprobe.grupofamiliarmiembros 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT INSERT ON aprobe.ingresosgrupofamiliar 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT INSERT ON aprobe.ingresosocupacion 
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT INSERT ON aprobe.mediotransporte
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT INSERT ON aprobe.miembrosfamilia
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT INSERT ON aprobe.nacionalidad
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT INSERT ON aprobe.otrosingresos
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT INSERT ON aprobe.parentesco
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT INSERT ON aprobe.provincia
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT INSERT ON aprobe.recorrido
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT INSERT ON aprobe.ruta
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */
GRANT INSERT ON aprobe.rutaestudiante
TO 'Estudiante'@'localhost' IDENTIFIED BY 'estu';
/* -------------------------------------------------- */