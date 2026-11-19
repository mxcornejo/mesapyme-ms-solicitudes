-- Ejecutar en cada esquema tras su DDL; resultado esperado: 2/7/5 tablas para CFG/SOL/SEG.
SELECT table_name FROM user_tables ORDER BY table_name;
SELECT table_name, constraint_type, status FROM user_constraints ORDER BY table_name;
-- Esperado: cero filas.
SELECT object_name, object_type FROM user_objects WHERE status = 'INVALID';
SELECT table_name,column_name,generation_type FROM user_tab_identity_cols;
