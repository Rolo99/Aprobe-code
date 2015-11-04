
create database estudianteBecas;
go
use estudianteBecas;
go


drop table tipoSolicitud 

create table tipoSolicitud(
	nomEstudiante varchar(20) not null,
	idSolicitud tinyint not null primary key
);

insert into tipoSolicitud(nomEstudiante,idSolicitud) values ('Juan',1);
insert into tipoSolicitud(nomEstudiante,idSolicitud) values ('Pedro',2);


drop procedure consultar_tipoSolicitudEst

create procedure consultar_tipoSolicitudEst(@tipo tinyint)
as		
	
select tipoSolicitud.nomEstudiante
	from tipoSolicitud
	where  @tipo&tipoSolicitud.idSolicitud = tipoSolicitud.idSolicitud;

		 -- case 1
		 -- Decimal   
		 --  1  &  1 = 2
		 -- Binario
		 --  01  & 10 = 10
		 --  00 = 10   false

		 -- case 2
		 -- Decimal   
		 --  2  &  2 = 2
		 -- Binario
		 --  10  & 10 = 10
		 --  10  = 10  true

		  -- case 4
		 -- Decimal   
		 --  2  &  4 = 4
		 -- Binario
		 --  001  & 100 = 100   false
		 --  010  & 100 = 100   false
		 --  011  & 100 = 100   
		 --  100  & 100 = 100 



exec consultar_tipoSolicitudEst 4


select tipoSolicitud.nomEstudiante
	from tipoSolicitud
	where  4&tipoSolicitud.idSolicitud = tipoSolicitud.idSolicitud;













	

/*


CREATE VIEW vw_leermatricula
AS
SELECT 
		 `tpersona`.`sexo`,
		  5 AS 'IDescolaridad',
		  TRUE AS 'Beca',
		 TIMESTAMPDIFF(YEAR,testudiante.`fechaNacimiento`,NOW()) AS 'edad',
		 tnacionalidad.`codigo`,
		`tpersona`.`primerApellido`,
		 tpersona.`segundoApellido`,
		`tpersona`.`nombre`,
		'SOLICITANTE' AS'idParentesco',
		 `testudiante`.`telefonoHogar`,
		  `tpersona`.`cedula`,
		  SUBSTRING(`testudiante`.`fechaNacimiento`,1,10) AS 'fechaNac',
		 `tmatricula`.`numNivel`
	FROM tpersona,tmatricula,`tnivel`,testudiante,tnacionalidad,testudianteencargado,tencargado
	WHERE tpersona.`cedula` = `tmatricula`.`cedEstudiante`
	AND tnivel.`numero` = `tmatricula`.`numNivel`
	AND testudiante.`cedula` = tpersona.`cedula`
	AND tnacionalidad.`codigo` = tpersona.`codNacionalidad`
	AND `tencargado`.`cedula` = `testudianteencargado`.`cedEncargado`
	AND `testudiante`.`cedula` = `testudianteencargado`.`cedEstudiante`
	GROUP BY tpersona.`cedula`
*/


