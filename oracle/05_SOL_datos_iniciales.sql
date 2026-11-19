-- MesaPyme | Grupo 11 | Formativa 3, semana 4
-- Oracle Database 19c. Ejecutar en esquema vacio del propietario indicado.
-- Sin credenciales; DDL no idempotente. DDL Oracle confirma implicitamente.
WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK
SET DEFINE OFF
ALTER SESSION SET TIME_ZONE = '+00:00';

-- Ejecutar como MP_SOL. Identidades ficticias, no habilitan autenticacion.
INSERT INTO usuario(oidc_sub,nombre,rol) VALUES ('demo|solicitante','Ana Pérez','SOLICITANTE');
INSERT INTO usuario(oidc_sub,nombre,rol) VALUES ('demo|tecnico','Diego Soto','TECNICO');
INSERT INTO usuario(oidc_sub,nombre,rol) VALUES ('demo|admin','Administración demo','ADMINISTRADOR');
COMMIT;
