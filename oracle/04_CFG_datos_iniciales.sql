-- MesaPyme | Grupo 11 | Formativa 3, semana 4
-- Oracle Database 19c. Ejecutar en esquema vacio del propietario indicado.
-- Sin credenciales; DDL no idempotente. DDL Oracle confirma implicitamente.
WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK
SET DEFINE OFF
ALTER SESSION SET TIME_ZONE = '+00:00';

-- Ejecutar como MP_CFG; datos ficticios. Politicas iniciales propuestas.
INSERT INTO categoria(nombre,descripcion,autor_sub) VALUES ('Accesos','Cuentas y permisos','demo|admin');
INSERT INTO categoria(nombre,descripcion,autor_sub) VALUES ('Equipos','Soporte de equipos de trabajo','demo|admin');
INSERT INTO politica_plazo(prioridad,version,horas,autor_sub) VALUES ('BAJA',1,72,'demo|admin');
INSERT INTO politica_plazo(prioridad,version,horas,autor_sub) VALUES ('MEDIA',1,24,'demo|admin');
INSERT INTO politica_plazo(prioridad,version,horas,autor_sub) VALUES ('ALTA',1,8,'demo|admin');
INSERT INTO politica_plazo(prioridad,version,horas,autor_sub) VALUES ('CRITICA',1,4,'demo|admin');
COMMIT;
